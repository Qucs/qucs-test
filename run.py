#!/usr/bin/env python

'''

  Notes:
  * it skips subcircut marker '.Def'
  * there is no indication that a Spice file is translated into the netlist.
    The only hint is the '_cir' appended tot he definition .DEF, which is skiped

  TODO
  - create a schematic parser with getters
  - create a netlist parser with getters

'''

import argparse
import datetime
import difflib
import numpy as np
import os
import pprint
import subprocess
import shutil
import sys
import threading
import time
import pickle
from distutils.version import LooseVersion

# Qucsator data parser
import parse_result as parse


# Add colors to the print messages
class bcolors:
    HEADER = '\033[95m'    # magenta
    OKBLUE = '\033[94m'    # blue
    OKGREEN = '\033[92m'   # green
    WARNING = '\033[93m'   # yellow
    FAIL = '\033[91m'      # red
    ENDC = '\033[0m'       # end-color

# Avoid color codes if output piped to file
def pb(message):
    '''
    Add blue color if message used on terminal.
    '''
    if sys.stdout.isatty():
        return bcolors.OKBLUE + message + bcolors.ENDC
    else:
        return message

def pg(message):
    '''
    Add green color if message used on terminal.
    '''
    if sys.stdout.isatty():
        return bcolors.OKGREEN + message + bcolors.ENDC
    else:
        return message

def pr(message):
    '''
    Add red color if message used on terminal.
    '''
    if sys.stdout.isatty():
        return bcolors.FAIL + message + bcolors.ENDC
    else:
        return message

def py(message):
    '''
    Add yellow color if message used on terminal.
    '''
    if sys.stdout.isatty():
        return bcolors.WARNING + message + bcolors.ENDC
    else:
        return message


#http://stackoverflow.com/questions/1191374/subprocess-with-timeout
class Command(object):
    '''
    Class used to run a subprocess call with timeout.
    '''
    def __init__(self, cmd):
        self.cmd = cmd
        self.process = None
        self.timeout = False
        self.retcode = 0

    def run(self, timeout):
        def target():
            vprint( pb('Thread started') )
            self.process = subprocess.Popen(self.cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            out, err = self.process.communicate()
            # keep the stdout and stderr
            self.out = out
            self.err = err
            vprint( pb('Thread finished') )

        thread = threading.Thread(target=target)
        thread.start()

        thread.join(timeout)
        if thread.is_alive():
            self.timeout = True
            print pr('Terminating process, timed out %i s' %timeout)
            self.process.terminate()
            thread.join()
        self.retcode =  self.process.returncode
        if self.retcode:
            print pr('  Return code: %i' %self.retcode)
        else:
            vprint( pb('  Return code: %i' %self.retcode) )


def get_qucsator_version(prefix):
    '''
    Run Qucsator and return its version string.

    :param prefix: path to qucsator executable
    :return: the version tag of qucsator
    '''
    cmd = [prefix + "qucsator", "-v"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    version = p.stdout.readlines()[0].strip()
    return version

def get_qucs_version(prefix):
    '''
    Run Qucs-GUI and return its version string.

    :param prefix: path to qucsator executable
    :return: the version tag of qucsator
    '''
    cmd = [prefix + "qucs", "-v"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    version = p.stdout.readlines()[0].strip()
    return version

def get_sch_version(schematic):
    '''
    :return: version of qucs that created the schematic.
    '''
    with open(schematic) as fp:
        for line in fp:
            if 'Qucs Schematic' in line:
                qucs_version = line.split(' ')[-1][:-2]
                return qucs_version

def get_sch_dataset(schematic):
    '''
    :return: DataSet fiel, name used to save the data file.
    '''
    with open(schematic) as fp:
        for line in fp:
            if 'DataSet' in line:
                ref_dataset = line.split('=')[-1][:-2]
                return ref_dataset

def get_net_components(netlist):
    '''
    Search for simulations and components types on a netlist file.

    :param netlist: text file containing a netlist
    :return: list of simulations, list of components
    '''
    sim=set()
    comps=set()
    with open(netlist) as fp:
        for line in fp:
            if ':' in line:
                # left of :
                element = line.split(':')[0].strip()
                # simulation
                if '.' in element:
                    # skip subcircuit '.Def' marker
                    if not 'Def' in element:
                        sim.add(element.strip('.'))
                    else: # has .Def, look for '_cir' SPICE definition
                        #right of :
                        descr = line.split(':')[1].strip()
                        if '_cir' in descr:
                            comps.add('SPICE') # note 'model name'
                # component
                else:
                    comps.add(element)
    return list(sim), list(comps)


def get_registed_models(prefix):
    '''
    Query qucsator for defined components. Option -l (debug mode only?).
    Definitions also listed in qucsdefs.h

    :param prefix: path containing qucsator executable
    :return: list of registered components
    '''
    cmd = [prefix + "qucsator", "-l"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    listing = p.stdout.readlines()

    registered=[]
    defs = False
    for line in listing:
        if 'struct define_t qucs_definition_available' in line:
            defs = True
        if defs:
            if 'def_' in line:
                model=line.strip()
                model=model.strip(',')
                model=model[4:]
                registered.append(model)
    registered.sort()
    return registered


def get_subdirs(dir):
    '''
    Return a list of names of subdirectories.

    :param dir: dir to look up for subdirs.
    :return: list of subdirec
    '''
    return [name for name in os.listdir(dir)
            if os.path.isdir(os.path.join(dir, name))]



def report_coverage(sim_collect, datafile, report_name=''):
    '''
    Report the coverage 

    :param sim_collect: data collected while running testsuite
    :param datafile: file containing data from cpp source files
    :param report_name: name used to save the report
    :return: string containing the report
    '''

    # flattens into each component the types of simulations covered
    # tested[component as key] = list of simulations
    tested = {}
    for key in sim_collect:
        sim_data = sim_collect[key]
        for comp in sim_data['comp_types']:
            if comp not in tested:
                tested[comp] = list()
            tested[comp] = list(set(tested[comp])|set(sim_data['sim_types']))

    # data from source files
    # Load the dictionary back from the pickle file.
    if not os.path.isfile(datafile):
        print pr('Problem finding: %s' %datafile)
        print pr('  Run "parse_models.py"')
        return
    data = pickle.load( open( datafile, "rb" ) )

    reg = [
    '  REGISTER_LUMPED',
    '  REGISTER_SOURCE',
    '  REGISTER_PROBE',
    '  REGISTER_TRANS',
    '  REGISTER_NONLINEAR',
    '  REGISTER_VERILOGA',
    '  REGISTER_DIGITAL',
    '  REGISTER_FILE',
    #'  REGISTER_SIMULATION'
    ]

    # list of simulations
    sims_avail = ['AC_Sim', 'DC_Sim', 'Digi_Sim', 'HB_Sim',
                  'Optimize_Sim', 'Param_Sweep', 'SP_Sim', 'TR_Sim']

    # get suffix type
    regs = [r.strip().split('_')[1] for r in reg]

    cov_report = ''
    line = '\n'+'-'*40
    cov_report += line
    cov_report += '\nReport on Qucs components test coverage'
    # sort by kind
    for reg_kind in regs:
        cov_report += line
        cov_report += '\n### Kind: %s' %(reg_kind)
        cov_report += line
        cov_report += '\n%-18s | %-10s ' %('Component', 'Simulations Covered')
        cov_report += line
        for key in sorted(data):
            model, name, base, kind = data[key]
            if  kind== reg_kind:

                # cross with test coverage
                if model in tested:
                    cov_report += '\n%-18s | %-10s ' %(key, ', '.join(tested[model]))
                else:
                    cov_report += '\n%-18s | %-10s ' %(key, ' --- ')
    cov_report += line
    cov_report += line
    cov_report += '\nAll Available Simulations:'
    cov_report += '\n'+', '.join(sims_avail)
    cov_report += line

    # save to file?
    if report_name:
        print py('\nSaving coverage table: %s' %(report_name) )
        with open(report_name, 'w') as rep_file:
            rep_file.write(cov_report)

    return cov_report



def check_netlist(ref_netlist, output_netlist, skip=1, verbose=0):
    '''
    Does a diff between a reference netlist and a test netlist.

    :param ref_netlist: text file used as reference netlist
    :param output_netlist: text file used on test
    :param skip: skip lines
    :param verbose: print the difference
    :return: diff equal (True|False), list of lines with mismatches
    '''
    # http://docs.python.org/2.7/library/difflib.html
    net_equal = True
    bad_lines = []
    with open(ref_netlist) as f:
        flines = f.readlines()
    with open(output_netlist) as g:
        glines = g.readlines()

    d = difflib.Differ()

    # skip header lines?
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



def sch2net (input_sch, output_net, prefix):
    '''
    Convert sch to netlist.
    Run Qucs-GUI, convert schematic into netlist.

    :param input_sch: path to input schematic
    :param output_net: path to generated netlist
    :param prefix: previx where qucs can be found
    '''
    print pb("Converting schematic to netlist.")
    cmd = [os.path.join(prefix,"qucs"), "-n", "-i", input_sch, "-o", output_net]
    print 'Running [qucs]: ', ' '.join(cmd)
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    retval = p.wait()
    # report issues if any
    if retval:
        print 'Return code: ', retval
        for line in p.stdout.readlines():
            print line,
        sys.exit('Error on sch2net.')


def run_simulation(proj, sim_report={}, prefix=''):
    '''
    Run simulation from reference netlist and compare outputs (dat, log)

    :param proj: directory containit test
    :param prefix: path containint qucsator
    :return sim_report:
    '''

    name = proj.strip(os.sep)

    # get schematic name from direcitory name
    # trim the simulation types
    sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
    for sim in sim_types:
        if sim in name:
            name=name[3:]

    name = name[:-4]
    tests_dir = os.getcwd()

    proj_dir = os.path.join(tests_dir, 'testsuite', proj)
    print '\nProject : ', proj_dir

    # cd into project
    os.chdir(proj_dir)

    input_net = "netlist.txt"

    if not os.path.isfile(input_net):
        sys.exit('Input netlist not found')

    # fetch types of simulation an types of components
    sim, comps = get_net_components(input_net)
    sim_report['sim_types'] = sim
    sim_report['comp_types'] = comps

    # get the Qucs Schematic version from the schematic
    schematic = os.path.join(proj_dir, name+'.sch')

    sim_report['version'] = get_sch_version(schematic)

    output_dataset = "test_"+name+".dat"
    cmd = [prefix + "qucsator", "-i", input_net, "-o", output_dataset]
    print 'Running : ', ' '.join(cmd)

    # TODO run a few times, record average, add to report
    tic = time.time()
    # call the solver in a subprocess, set the timeout
    command = Command(cmd)
    command.run(timeout=5)
    toc = time.time()
    runtime = toc - tic

    # If return code, ignore time
    if command.retcode:
        sim_report['runtime'] = 'FAIL CODE %i' %command.retcode
        sim_report['status'] = 'FAIL'
    elif command.timeout:
        sim_report['runtime'] = 'TIMEOUT'
        sim_report['status'] = 'FAIL'
    else:
        sim_report['runtime'] = '%f' %runtime


    vprint( pb('Runtime: %f' %runtime) )

    if (command.timeout):
        errout = 'error_timeout.txt'
        print pr('Failed with timeout, saving: \n   %s/%s' %(proj_dir, errout))
        with open(errout, 'w') as myFile:
            myFile.write(command.err)

    if (command.retcode):
        errout = 'error_code.txt'
        print pr('Failed with error code, saving: \n   %s/%s' %(proj_dir, errout))
        with open(errout, 'w') as myFile:
            myFile.write(command.err)


    # perform comparison
    else:
        ref_dataset = get_sch_dataset(schematic)
        if not os.path.isfile(ref_dataset):
            print (pr('Bad skipping comparison, missing reference output'))
            sim_report['fail_comp'] = 'No reference output to compare'
            # step out
            os.chdir(tests_dir)
            return sim_report

        # TODO failed also catches if the solver didn't run, output_dataset will be empty,
        # it will fail the comparison

        # let's compare results

        # list of failed variable comparisons
        failed=[]
        if not command.timeout:
            vprint( pb('load data %s' %(ref_dataset)) )
            ref_data = parse.parse_file(ref_dataset)

            vprint( pb('load data %s' %(output_dataset)) )
            test_data = parse.parse_file(output_dataset)

            #print ref_data['variables']

            vprint( pb('Comparing dependent variables') )

            for name, kind in ref_data['variables'].items():
                if kind == 'dep':
                    #print name
                    ref_trace  = ref_data[name]
                    test_trace = test_data[name]

                    if not np.allclose(ref_trace, test_trace, rtol=1e-05, atol=1e-08):
                        print pr('  Failed %s' %(name))
                        failed.append(name)
                        sim_report['status'] = 'FAIL'
                    else:
                        vprint( pg('  Passed %s' %(name)) )
                        sim_report['status'] = 'PASS'


        # keep list of variables that failed comparison
        if failed:
            sim_report['fail_comp'] = [failed]

        # mark project as timed out
        if command.timeout:
            sim_report['timeout'] = command.timeout


        # In case of failure or timeout, save the log and error ouputs
        if (failed or command.timeout):

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


def add_test_project(sch):
    '''
    Add a schematic file as a test on the testsuite.

    - create directory (start with simulation types, ex. DC_TR_myCircuit_prj)
    - search and copy related subcircuits
    - initialize reference netlis
    - initialize reference data file

    :param sch: path to a schematic file (.sch)
    :return: destination directory
    '''

    print pb('Adding new project to test-suite.')
    print 'Adding schematic: %s' %(sch)

    # get schematic basename
    sch_name = os.path.splitext(os.path.basename(sch))[0]

    # scan schematic for types of simulation [.DC, .AC, .TR, .SP, .SW]
    # create dir, concatenate simulation type(s), schematic name, append '_prj'
    # ex. TR_myCircuit_prj, DC_AC_TR_complexCircuit_prj
    sim_types= ['.DC', '.AC', '.TR', '.SP', '.SW']
    # TODO move to a sch getter
    schematic = open(sch).read()
    sim_found=''
    for sim in sim_types:
        if sim in schematic:
            #skip dot, prepend simulation types 
            sim_found+=sim[1:]+'_'
    if not sim_found:
        sys.exit( pr('This schematic performs no simulation, is it a subcircuit?'))
    dest = sim_found + sch_name + '_prj'

    # scan for subcircuits, to be copied over destination Sub, filename=split(' ')[-2]
    # TODO move to a sch getter
    sub_files=[]
    with open(sch) as fp:
        for line in fp:
            if '<Sub ' in line:
                # subcircuit filename, no quotes
                sub_file = line.split(' ')[-2][1:-1]
                if sub_file not in sub_files:
                    sub_files.append(sub_file)

    dest_dir = os.path.join(os.getcwd(),'testsuite', dest)
    if not os.path.exists(dest_dir):
        print 'Creating directory:', dest_dir
        os.makedirs(dest_dir)
    else:
        print 'Use existing directory:', dest_dir

    # copy schematic
    shutil.copy2(sch, dest_dir)

    # copy listed subcircuit
    for sub in sub_files:
        print 'Copying subcirc', sub
        src = os.path.join(os.path.dirname(sch),sub)
        if os.path.isfile(src):
            shutil.copy2(src, dest_dir)
        else:
            sys.exit(pr('Oops, subcircuit not found: ', src))

    return dest_dir


def report_status(reports, savename='', footer=''):
    '''
    Print a table with test resuts. It can also write to file.

    :param reports: data collected during tests.
    :param savename: name used to save the table to a text file.
    :param footer: custom footer appended to the table.
    :return: None
    '''
    keys = reports[0].keys()
    keys.sort()
    header = '%-30s | %-15s ' %('Project', 'Schem. Version')

    for rp in reports:
        header += ' |   Sim. Runtime'

    line = '-'*len(header)

    if savename:
        f = open(savename, 'w')
        f.write(line+'\n')
        f.write(header+'\n')
        f.write(line+'\n')

    print line
    print header
    print line
    for key in keys:
        proj_stat = '%-30s | %-15s  ' %(key, str(reports[0][key]['version']))
        for rp in reports:
            if rp[key]['status'] == 'FAIL':
                proj_stat += '| %-15s' %(str('FAIL'))
            else:
                proj_stat += '| %-15s' %(str(rp[key]['runtime']))

        print proj_stat

        if savename:
            f.write(proj_stat+'\n')

    if footer:
        print line
        f.write(line+'\n')
        print footer
        f.write(footer)

    if savename:
        print line
        f.write(line+'\n')
        f.close()
        print py("Saved report to table: %s " %savename)


def timestamp(timeformat="%y%m%d_%H%M%S"):
    '''
    Format a timestamp.

    :param timeformat: format for the time-stamp.
    :return: formated time/date format
    '''
    return datetime.datetime.now().strftime(timeformat)


def parse_options():
    '''
    Helper to handle the command line option parsing.

    :return: parsed command line options
    '''

    parser = argparse.ArgumentParser(description='Qucs testing script.')

    parser.add_argument('--prefix', type=str,
                       help='prefix of installed Qucs (default: /usr/local/bin/)')

    parser.add_argument('--qucs',
                       action='store_true',
                       help='run qucs tests')

    parser.add_argument('--qucsator',
                       action='store_true',
                       help='run qucsator tests')
    # TODO, cannot use --print, it chockes when try to use args.print
    parser.add_argument('-p',
                       action='store_true',
                       help='run qucs and prints the schematic to file')

    parser.add_argument('--add-test', type=str,
                       help='add schematic to the testsuite')

    parser.add_argument('--skip', type=str,
                       help='file listing skipped test projects')

    parser.add_argument('--project', type=str,
                       help='path to a test project')

    parser.add_argument('--compare-qucsator', nargs='+', type=str,
                       help='two full paths to directories containing '
                             'qucsator binaries for comparison test')

    parser.add_argument("-v", "--verbose", const=1, default=0, type=int, nargs="?",
                        help="increase verbosity: 0 = progress and errors, 1 = all info. "
                             "Default is low verbosity.")

    parser.add_argument('--reset',
                       action='store_true',
                       help='Reset (overwrite) data and log files of test projects.'
                            'Run qucsator given with --prefix.')

    args = parser.parse_args()
    return args



if __name__ == '__main__':

    args = parse_options()
    #print(args)

    # simple verbose printer
    # TODO use logging module?
    def vprint(msg):
        if (args.verbose == 1):
            print msg

    # TODO improve the discovery of qucs, qucator
    if args.prefix:
        #prefix = os.path.join(args.prefix, 'bin', os.sep)
        prefix = [args.prefix]
    else:
        # TODO add default paths, build location, system locations
        prefix = os.path.join('/usr/local/bin/')


    if (args.qucs or args.p or args.reset):
        if os.path.isfile(os.path.join(prefix[0], 'qucs')):
            print pb('Found Qucs in: %s' %(prefix))
        else:
            sys.exit(pr('Oh dear, Qucs not found in: %s' %(prefix)))

    if (args.qucsator or args.reset):

        if os.path.isfile(os.path.join(prefix[0], 'qucsator')):
            print pb('Found Qucsator in: %s' %(prefix))
        else:
            sys.exit(pr('Oh dear, Qucsator not found in: %s' %(prefix)))


    if args.compare_qucsator:

        prefix = args.compare_qucsator

        print pb('Comparing the following qucsators:')

        for qp in prefix:
            if os.path.isfile(os.path.join(qp, 'qucsator')):
                print pb('%s' %(qp))
            else:
                sys.exit(pr("No qucsator binary found in: %s" %(qp)))


    # get single project or list of test-projects
    if args.project:
        testsuite =  [os.path.join(args.project)]
    else:
        testsuite = get_subdirs('./testsuite/')

    # TODO read list of: skip, testshort, testlong

    if args.skip:
        skip = args.skip
        with open(skip) as fp:
            for line in fp:
                skip_proj = line.split(',')[0]
                if skip_proj in testsuite:
                    print py('Skipping %s' %skip_proj)
                    testsuite.remove(skip_proj)


    # Toggle if any test fail
    returnStatus = 0


    print '\n'
    print pb('******************************************')
    print pb('** Test suite - Selected Test Projects  **')
    print pb('******************************************')

    # Print list of selected tests
    pprint.pprint(testsuite)

    #
    # Run Qucs GUI
    #
    if args.qucs:
        print '\n'
        print pb('** Test schematic to netlist conversion **')

        # loop over testsuite
        # messages are added to the dict, project as key
        net_report = {}
        for test in testsuite:

            dest_dir = os.path.join('testsuite', test)

            projName = test.strip(os.sep)
            # get schematic name from direcitory name
            # trim the simulation types
            sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
            for sim in sim_types:
                if sim in projName:
                    projName=projName[3:]
            projName = projName[:-4]

            # generate test_ netlist
            input_sch = os.path.join(dest_dir, projName+'.sch')

            # skip future versions of schematic
            sch_version = get_sch_version(input_sch)
            qucs_version = get_qucs_version(prefix[0]).split(' ')[1]

            if LooseVersion(sch_version) > LooseVersion(qucs_version):
                print pb("Warning: skipping future version of schematic")
                print pb("  Using qucs %s with schematic version %s"
                         %(qucs_version, sch_version))
                continue

            # go on to create a fresh test_netlist.txt
            test_net  = os.path.join(dest_dir, 'test_'+projName+'.txt')
            sch2net(input_sch, test_net, prefix[0])

            ref_netlist = os.path.join(dest_dir, 'netlist.txt')

            # diff netlists: reference and test_
            print 'Comparing : diff %s %s' %(ref_netlist, test_net)
            net_equal, bad_lines = check_netlist(ref_netlist, test_net)

            if net_equal:
                print pg('Diff netlist    : PASS')
            else:
                print pr('Diff netlist    : FAIL')
                net_report[test] = bad_lines

        print '\n'
        print pb('############################################')
        print pb('#  Report schematic to netlist conversion  #')

        if net_report.keys():
            print pr('--> Found differences (!)')
            pprint.pprint(net_report)
        else:
            print pg('--> No differences found.')

    #
    # Run Qucs simulator
    #
    if args.qucsator or args.compare_qucsator:
        print '\n'
        print pb('********************************')
        print pb('** Test simulation and output **')
        print pb('********************************')

        # collect all reports, sim_collect will be a list of dicts,
        # one list for each qpath. Each dict contains the report output
        # for each simulationperformed
        sim_collect = []
        # fail will be a list of lists, one for each qpath. Each sub-list
        # contains information on failed tests
        fail = []
        for n, qp in enumerate (prefix):

            fail.append ([])

            sim_collect.append({})

            # loop over testsuite
            # messages are added to the dict, project as key

            for test in testsuite:
                sim_report = {}
                sim_report = run_simulation(test, sim_report, qp)
                if 'fail_comp' in sim_report.keys():
                    fail[n].append(test)

                # if any fail, change retur status
                if sim_report['status'] == 'FAIL':
                    returnStatus = -1

                # keep reports
                sim_collect[n][test] = sim_report


        print '\n'
        print pb('############################################')
        print pb('#  Report simulation result comparison     #')

        for n, qp in enumerate (prefix):
            if len(fail[n]):
                print pr('--> WARNING !! Found numerical differences for {}qucsator'.format (qp))
                for item in fail[n]:
                    print pr(item)
                    pprint.pprint(sim_collect[n][item])
            else:
                print pg('--> No significant numerical differences found.')

        print pb('#                                          #')
        print pb('############################################')

        # TODO get Git branch and hash, append to filename
        # example for Qucs repo: [tag - added commits - last commit hash (skip g, 2b48407)]
        #label = subprocess.check_output(["git", "describe"])
        #labe ==> qucs-0.0.17-234-g2b48407

        print py('Qucsator report')

        if args.compare_qucsator:
            table_name = 'qucsator_comparison_' + timestamp() + '_sim_results.txt'
        else:
            table_name = 'report_simulation'+'_'+ get_qucsator_version(prefix[0]).replace(' ','_')+'.txt'

        if len (prefix) > 1:
            footer  = 'Qucsator versions:   '
            for qp in prefix:
                footer += get_qucsator_version(qp) + ' : '

            footer += '\nBinary Locations:'
            for qp in prefix:
                footer += '\n' + qp

            footer += '\n'

        else:
            footer  = 'Qucsator version:   '  + get_qucsator_version(qp) + ' '


        footer += '\n'
        footer += 'Report produced on: ' + timestamp("%Y-%m-%d %H:%M:%S") + '\n'

        # Print simulation report to scress and save to table_name
        report_status(sim_collect, table_name, footer)

        # Report tested/untested devices

        # data from simulation
        for n, qp in enumerate (prefix):
            datafile = 'qucs_components_data.p'
            report_name = 'report_coverage_%s.txt' %(get_qucsator_version(qp).replace(' ','_'))
            report_coverage(sim_collect[n], datafile, report_name)

    #
    # Add schematic as test-project and initialize its netlist, result and log files
    #
    if args.add_test:
        sch = args.add_test
        if os.path.exists(sch):

            # copy stuff into place
            dest_dir = add_test_project(sch)

            # create reference netlist.txt
            input_sch  = os.path.join(dest_dir, sch)
            output_net = os.path.join(dest_dir,"netlist.txt")
            sch2net(input_sch, output_net, prefix[0])

            # create reference .dat, log.txt
            print pb("Creating reference data and log files.")
            output_dataset = get_sch_dataset(input_sch)
            output_dataset = os.path.join(dest_dir, output_dataset)
            cmd = [os.path.join(prefix[0],"qucsator"), "-i", output_net, "-o", output_dataset]
            print 'Running [qucsator]: ', ' '.join(cmd)

            # TODO run a few times, record average, add to report
            tic = time.time()
            # call the solver in a subprocess, set the timeout
            command = Command(cmd)
            command.run(timeout=5)
            toc = time.time()
            runtime = toc - tic

            # save log.txt
            # FIXME note that Qucs-gui adds a timestamp to the the log
            #       running Qucsator it does not the same header/footer
            logout = os.path.join(dest_dir,'log.txt')
            #print pb('Initializing %s saving: \n   %s' %(sch, logout))
            with open(logout, 'w') as myFile:
                myFile.write(command.out)

            ## ready to test-fire, run.py and check --qucs, --qucsator
            ## reminder to add to repository
            #sys.exit(0)
        else:
            sys.exit("File not found: %s" %sch)

    #
    # Reset the netlist, data and log files of test projects
    # acording version found on the given prefix.
    # FIXME this is similar to adding the test project again...
    # can we refactor the args.add_test?
    #
    if args.reset:
        for test in testsuite:
            dest_dir = os.path.join('testsuite', test)

            projName = test.strip(os.sep)
            # get schematic name from direcitory name
            # trim the simulation types
            sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
            for sim in sim_types:
                if sim in projName:
                    projName=projName[3:]
            projName = projName[:-4]

            # do not reset netlist,
            # 0.0.17 has no command line interface, it launches...

            input_sch = os.path.join(dest_dir, projName+'.sch')
            output_dataset = get_sch_dataset(input_sch)
            output_dataset = os.path.join(dest_dir, output_dataset)

            output_net  = os.path.join(dest_dir, 'netlist.txt')

            # OVERWRITE reference .dat, log.txt
            print pb("Creating reference data and log files.")
            cmd = [os.path.join(prefix[0],"qucsator"), "-i", output_net, "-o", output_dataset]
            print 'Running [qucsator]: ', ' '.join(cmd)

            tic = time.time()
            # call the solver in a subprocess, set the timeout
            command = Command(cmd)
            command.run(timeout=5)
            toc = time.time()
            runtime = toc - tic

            # save log.txt
            # FIXME log reports different details if release/debug mode
            # FIXME note that Qucs-gui adds a timestamp to the the log
            #       running Qucsator it does not the same header/footer
            logout = os.path.join(dest_dir,'log.txt')
            #print pb('Initializing %s saving: \n   %s' %(sch, logout))
            with open(logout, 'w') as myFile:
                myFile.write(command.out)

    #
    # Print schematics contained in all (or selected) projects
    #
    if args.p:
        print '\n'
        print py('********************************')
        print 'printing schematic: %s' %(testsuite)

        # for each on testsuite
        # grab [].sch (so far only one per project)
        # print to [].pdf

        #project dir
        for proj in testsuite:
            name = proj.split(os.sep)[-1]

            #print name

            # FIXME fail if the project name has underscore
            sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
            for sim in sim_types:
                if sim in name:
                    name=name[3:]

            name = name[:-4]
            tests_dir = os.getcwd()

            proj_dir = os.path.join(tests_dir, 'testsuite', proj)
            print '\nProject : ', proj_dir

            # step into project
            os.chdir(proj_dir)

            input_sch = name+".sch"
            out_print = name+".pdf"

            print 'Input:  ', input_sch
            print 'Output: ', out_print

            cmd = [prefix + "qucs", "-p", "-i", input_sch, "-o", out_print]
            print 'Running : ', ' '.join(cmd)

            p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            retval = p.wait()

            if retval: print retval

            # step out
            os.chdir(tests_dir)

    if returnStatus:
        status = 'FAIL'
    else:
        status = 'PASS'

    print '\n'
    print pb('###############  Done. Return status: %s ###############' %status )

    sys.exit(returnStatus)

