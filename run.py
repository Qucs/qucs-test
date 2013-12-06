

import os
import subprocess
import threading
import difflib
import pprint
import sys
import time
import numpy as np

import parse_result as parse


# Add colors to the print messages
class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

# Avoid color codes if output piped to file
def pb(message):
    if sys.stdout.isatty():
        return bcolors.OKBLUE + message + bcolors.ENDC
    else:
        return message

def pg(message):
    if sys.stdout.isatty():
        return bcolors.OKGREEN + message + bcolors.ENDC
    else:
        return message

def pr(message):
    if sys.stdout.isatty():
        return bcolors.FAIL + message + bcolors.ENDC
    else:
        return message


#http://stackoverflow.com/questions/1191374/subprocess-with-timeout
class Command(object):
    def __init__(self, cmd):
        self.cmd = cmd
        self.process = None
        self.timeout = False

    def run(self, timeout):
        def target():
            print pb('Thread started')
            #self.process = subprocess.Popen(self.cmd, shell=True)
            self.process = subprocess.Popen(self.cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            out, err = self.process.communicate()

            self.out = out
            self.err = err
            print pb('Thread finished')

        thread = threading.Thread(target=target)
        thread.start()

        thread.join(timeout)
        if thread.is_alive():
            print pr('Terminating process, timed out %i s' %timeout)
            self.process.terminate()
            thread.join()
            self.timeout = True
        print self.process.returncode



def get_subdirs(dir):
    '''
    Return a list of names of subdirectories.
    input : dir to look up for subdirs.
    '''
    return [name for name in os.listdir(dir)
            if os.path.isdir(os.path.join(dir, name))]


def check_netlist(ref_netlist, output_netlist, skip=1, verbose=0):
    '''
    Does a diff with reference netlist and a test netlist.

    input  : reference netlist
    input  : test output netlist
    output : diff status, different lines
    '''
    # http://docs.python.org/2.7/library/difflib.html
    net_equal = True
    bad_lines = []
    with open(ref_netlist) as f, open(output_netlist) as g:

        flines = f.readlines()
        glines = g.readlines()

        d = difflib.Differ()

        # skip first line?
        diff = list(d.compare(flines[skip:], glines[skip:]))

        # show complete diff?
        if verbose:
            print ' '.join(diff)

        for line in diff:
            # look in diff for code [+ - ?]: unique to f, unique to g or not present in f or g
            chars = set('+-?')
            if any((c in chars for c in line[:1])):
                net_equal = False
                #print line
                bad_lines.append(line)
        return net_equal, bad_lines


def run_schematic_to_netlist(proj, net_report={}):
    '''
    Run Qucs to pererform the schematic -> netlist conversion.

    input  : test directory
    input  : dictionary for the testsuite
    output : dictionary reporting/updating issues
    '''

    name = proj.split('_')[-2]
    #print name

    tests_dir = os.getcwd()
    #print tests_dir

    proj_dir = os.path.join(tests_dir, 'testsuite', proj)
    print '\nProject : ', proj_dir

    # step into project
    os.chdir(proj_dir)

    input_sch = name+".sch"

    # have schematic to convert
    if os.path.isfile(input_sch):


        output_netlist = "test_"+name+"_netlist.txt"

        cmd = [prefix + "qucs", "-n", "-i", input_sch, "-o", output_netlist]
        print 'Running : ', ' '.join(cmd)

        p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        retval = p.wait()
        # report issues if any
        if retval:
            print 'Return code: ', retval
            for line in p.stdout.readlines():
                print line,

        ###
        # netlist check
        # - if reference netlist provided, diff compare with test netlist
        # - report if missing
        ###
        ref_netlist = 'netlist.txt'
        if os.path.isfile(ref_netlist):
            print 'Comparing : diff %s %s' %(ref_netlist, output_netlist)
            net_equal, bad_lines = check_netlist(ref_netlist, output_netlist)

            if net_equal:
                print pg('Diff     : PASS')
            else:
                print pr('Diff     : FAIL')

            # collect things that are different
            if not net_equal:
                net_report[proj] = bad_lines
        else:
            net_report[proj] = 'missing reference [netlist.txt]'

        # step out
        os.chdir(tests_dir)

    return net_report


def run_simulation(proj, sim_report={}, prefix=''):
    '''
    Run simulation from reference netlist and compare outputs (dat, log)
    '''

    name = proj.split('_')[-2]

    tests_dir = os.getcwd()

    proj_dir = os.path.join(tests_dir, 'testsuite', proj)
    print '\nProject : ', proj_dir

    # cd into project
    os.chdir(proj_dir)

    input_net = "netlist.txt"

    if os.path.isfile(input_net):

        ref_dataset = name+".dat"
        output_dataset = "test_"+name+".dat"

        cmd = [prefix + "qucsator", "-i", input_net, "-o", output_dataset]
        print 'Running : ', ' '.join(cmd)

        # TODO run a few times, record average, add to report
        tic = time.clock()
        #p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #out, err = p.communicate()
        command = Command(cmd)
        command.run(timeout=5)
        toc = time.clock()

        runtime = toc - tic

        print pb('Runtime: %f' %runtime)

        # TODO use the outputs for something...
        #print out
        #print err

        if not os.path.isfile(ref_dataset):
            os.exit(pr('bad, missing ref output'))

        #all fine, lets compare results

        # list of failed variable comparisons
        failed=[]
        if not command.timeout:
            print pb('load data %s' %(ref_dataset))
            ref_data = parse.parse_file(ref_dataset)

            print pb('load data %s' %(output_dataset))
            test_data = parse.parse_file(output_dataset)

            #print ref_data['variables']

            print pb('Comparing dependent variables')

            for name, kind in ref_data['variables'].items():
                if kind == 'dep':
                    #print name
                    ref_trace  = ref_data[name]
                    test_trace = test_data[name]

                    if not np.allclose(ref_trace, test_trace, rtol=1.00001e10, atol=1e-8):
                        print pr('  Failed %s' %(name))
                        failed.append(name)
                    else:
                        print pg('  Passed %s' %(name))

        # keep failed comparison
        if failed:
            sim_report[proj] = [failed]

        if command.timeout:
            sim_report[proj] = ['timed out']


        if (failed or command.timeout):
            # save ouptut / error
            logout = 'fail_log.txt'
            print pr('failed %s saving: \n   %s/%s' %(proj, proj_dir, logout))
            with open(logout, 'w') as myFile:
                myFile.write(command.out)

            errout = 'fail_error.txt'
            print pr('failed %s saving: \n   %s/%s' %(proj, proj_dir, errout))
            with open(errout, 'w') as myFile:
                myFile.write(command.err)

        # TODO add timestamp into qucsator. Or time the call.
        # qucs creates the log.txt with time start and time end.

        # step out
        os.chdir(tests_dir)

    return sim_report


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser(description='Process some integers.')

    parser.add_argument('--prefix',type=str,
                       help='prefix of installed Qucs (default: /usr/local/)')

    parser.add_argument('--qucs',
                       action='store_true',
                       help='run qucs tests')

    parser.add_argument('--qucsator',
                       action='store_true',
                       help='run qucsator tests')

    args = parser.parse_args()
    #print(args)

    if args.prefix:
        prefix = os.path.join(args.prefix, 'bin' + os.sep)
    else:
        prefix = os.path.join('/usr/local/bin/')

    if os.path.isfile(os.path.join(prefix, 'qucsator')):
        print pb('Found Qucs in: %s' %(prefix))
    else:
        sys.exit(pr('Oh dear, Qucs not found in: %s' %(prefix)))


    print '\n'
    print pb('******************************************')
    print pb('** Test suite - Projects to be run      **')
    print pb('******************************************')
    testsuite = get_subdirs('./testsuite/')
    pprint.pprint(testsuite)


    if args.qucs:
        print '\n'
        print pb('******************************************')
        print pb('** Test schematic to netlist conversion **')
        print pb('******************************************')

        # loop over testsuite
        # messages are added to the dict, project as key
        net_report = {}
        for test in testsuite:
            net_report =  run_schematic_to_netlist(test, net_report)


        print '\n'
        print pb('############################################')
        print pb('#  Report schematic to netlist conversion  #')
        if net_report.keys():
            print pr('--> Found differences (!)')
            pprint.pprint(net_report)
        else:
            print pg('--> No differences found.')

    if args.qucsator:
        print '\n'
        print pb('********************************')
        print pb('** Test simulation and output **')
        print pb('********************************')

        # loop over testsuite
        # messages are added to the dict, project as key
        sim_report = {}
        for test in testsuite:
            sim_report = run_simulation(test, sim_report, prefix)


        print '\n'
        print pb('############################################')
        print pb('#  Report simulation result comparison     #')
        if sim_report.keys():
            print pr('--> Found numerical differences (!)')
            pprint.pprint(sim_report)
        else:
            print pg('--> No significant numerical differences found.')


    print '\n'
    print pb('###############  Done ######################')

