#!/usr/bin/env python

'''

  Notes:
  * it skips subcircut marker '.Def'
  * there is no indication that a Spice file is translated into the netlist.
    The only hint is the '_cir' appended tot he definition .DEF, which is skiped

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

def py(message):
    if sys.stdout.isatty():
        return bcolors.WARNING + message + bcolors.ENDC
    else:
        return message


#http://stackoverflow.com/questions/1191374/subprocess-with-timeout
class Command(object):
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
    Run Qucsator and return the version string.

    Parameters
    ----------
    prefix : string
        path to qucsator executable

    Returns
    -------
    version : string
        the version tag of qucsator

    '''
    cmd = [prefix + "qucsator", "-v"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    version = p.stdout.readlines()[0].strip()
    return version


def get_components(netlist):
    '''
    Fetch types of simulation an types of components
    returns two lists
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
    Fetch list of available components defined in QucsAtor
    Also listed in qucsdefs.h
    '''
    cmd = [prefix + "qucsator", "-l"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    listing = p.stdout.readlines()

    available=[]
    defs = False
    for line in listing:
        if 'struct define_t qucs_definition_available' in line:
            defs = True
        if defs:
            if 'def_' in line:
                model=line.strip()
                model=model.strip(',')
                model=model[4:]
                available.append(model)
    available.sort()
    return available


def get_subdirs(dir):
    '''
    Return a list of names of subdirectories.
    input : dir to look up for subdirs.
    '''
    return [name for name in os.listdir(dir)
            if os.path.isdir(os.path.join(dir, name))]

def flat_sim(sim_collect):
    '''
    flattens into each component the types of simulations covered
    returns: dict[component as key] = list of simulations
    '''
    tested = {}
    for key in sim_collect:
        sim_data = sim_collect[key]
        for comp in sim_data['comp_types']:
            if comp not in tested:
                tested[comp] = list()
            tested[comp] = list(set(tested[comp])|set(sim_data['sim_types']))
    return tested



def report_simulation(sim_collect, datafile, report_out=''):

    # flatten data from simulation
    tested = flat_sim(sim_collect)


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

    sims_avail = ['AC_Sim', 'DC_Sim', 'Digi_Sim', 'HB_Sim', 'Optimize_Sim', 'Param_Sweep', 'SP_Sim', 'TR_Sim']

    regs = [reg[index].strip().split('_')[1] for index in range(len(reg))]

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

    if report_out:
        print py('\nSaving coverage table: %s' %(report_out) )
        with open(report_out, 'w') as rep_file:
            rep_file.write(cov_report)

    return cov_report



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
    with open(ref_netlist) as f:
        flines = f.readlines()
    with open(output_netlist) as g:
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


def run_schematic_to_netlist(proj, net_report={}, prefix='', init_test=False):
    '''

    Run Qucs to perform the schematic -> netlist conversion.

    Parameters
    ----------
    proj : str
        test directory
    prefix : str
        prefix to qucsator
    init_test : Boolean
        adding new project (no diff is done) or running tests (does diff) ?

    Returns
    -------
    net_report : dictionary
        contains the diff results, proj as key
    '''

    #project dir
    name = proj.split(os.sep)[-1]

    #print name

    # FIXME fail if the project name has underscore
    sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
    for sim in sim_types:
        if sim in name:
            name=name[3:]

    name = name[:-4]
    #print name

    tests_dir = os.getcwd()
    #print tests_dir

    proj_dir = os.path.join(tests_dir, 'testsuite', proj)
    print '\nProject : ', proj_dir

    # step into project
    os.chdir(proj_dir)

    input_sch = name+".sch"

    print 'Input: ', input_sch

    # have schematic to convert
    if os.path.isfile(input_sch):

        # either create reference netlist, initialize a test-project
        # or create a test-netlist to compare with existing reference netlist
        if init_test:
            print pb("Add test, creating reference netlist")
            output_netlist = "netlist.txt"
        else:
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

        # if not initializing the added test, compare netlists
        if not init_test:
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


def run_simulation(proj, sim_report={}, prefix='', init_test=False):
    '''
    Run simulation from reference netlist and compare outputs (dat, log)
    '''

    #name = proj.split('_')[-2]
    #project dir
    name = proj.split(os.sep)[-1]

    #print name

    # FIXME fail if the project name has underscore
    sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
    for sim in sim_types:
        if sim in name:
            name=name[3:]

    name = name[:-4]
    #print name

    tests_dir = os.getcwd()

    proj_dir = os.path.join(tests_dir, 'testsuite', proj)
    print '\nProject : ', proj_dir

    # cd into project
    os.chdir(proj_dir)

    input_net = "netlist.txt"

    if os.path.isfile(input_net):

        # fetch types of simulation an types of components
        sim, comps = get_components(input_net)
        sim_report['sim_types'] = sim
        sim_report['comp_types'] = comps

        # get the Qucs Schematic version from the schematic
        # get the DataSet field from the schematic file
        schematic = os.path.join(proj_dir,name+'.sch')
        #print 'schematic', schematic
        with open(schematic) as fp:
            for line in fp:
                if 'Qucs Schematic' in line:
                    qucs_version = line.split(' ')[-1][:-2]
                    #print qucs_version
                    sim_report['version'] = qucs_version
                if 'DataSet' in line:
                    # DataSet filename, no quotes
                    ref_dataset = line.split('=')[-1][:-2]


        #print 'ref_dataset', ref_dataset

        if init_test:
            output_dataset = ref_dataset
        else:
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


        # if adding test-project just save the log
        if init_test:
            # save log.txt
            # FIXME note that Qucs-gui adds a timestamp to the the log
            #       running Qucsator it does not the same header/footer
            logout = 'log.txt'
            print pb('Initializing %s saving: \n   %s/%s' %(proj, proj_dir, logout))
            with open(logout, 'w') as myFile:
                myFile.write(command.out)

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

    '''

    # get basename
    sch_name = os.path.basename(sch)[:-4]


    # scan schematic for types of simulation [.DC, .AC, .TR, .SP, .SW]
    #  skip if no simulaiton found, subcircuit?
    sim_types= ['.DC', '.AC', '.TR', '.SP', '.SW']
    schematic = open(sch).read()
    sim_found=''
    for sim in sim_types:
        if sim in schematic:
            #skip dot
            sim_found+=sim[1:]+'_'
    #print sim_found

    if not sim_found:
        sys.exit( pr('This schematic performs no simulation, is it a subcircuit?'))

    # create dir, concatenate simulation type(s), schematic name, append '_prj'
    dest = sim_found + sch_name + '_prj'
    print dest

    # scan for subcircuits, to be copied over destination Sub, filename=split(' ')[-2]
    sub_files=[]
    with open(sch) as fp:
        for line in fp:
            if '<Sub ' in line:
                # subcircuit filename, no quotes
                sub_file = line.split(' ')[-2][1:-1]
                if sub_file not in sub_files:
                    sub_files.append(sub_file)
    print 'subcircuits', sub_files

    dest_dir = os.path.join(os.getcwd(),'testsuite', dest)
    if not os.path.exists(dest_dir):
        print 'creating ', dest_dir
        os.makedirs(dest_dir)


    # copy schematic and needed subcircuit
    shutil.copy2(sch, dest_dir)

    for sub in sub_files:
        src = os.path.join(os.path.dirname(sch),sub)

        if os.path.isfile(src):
            shutil.copy2(src, dest_dir)
        else:
            sys.exit(pr('Oops, subcircuit not found: ', src))

    # bootstrap the netlist.txt
    run_schematic_to_netlist(dest_dir, prefix=prefix, init_test=True)

    # bootstrap the result.dat, log.txt
    run_simulation(dest_dir, prefix=prefix, init_test=True)


    # ready to test-fire, run.py and check --qucs, --qucsator
    # reminder to add to repository
    return


def table_print(reports, savename='', footer=''):
    '''
    Very simple table printer.
    It can also write to file.
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
     simple timestamp
    '''
    return datetime.datetime.now().strftime(timeformat)


if __name__ == '__main__':

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
                       help='two full paths to directories containing qucsator binaries for comparison test')

    parser.add_argument("-v", "--verbose", const=1, default=0, type=int, nargs="?",
                        help="increase verbosity: 0 = progress and errors, 1 = all info. Default is low verbosity.")


    args = parser.parse_args()
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

    if (args.qucs or args.p):
        if os.path.isfile(os.path.join(prefix, 'qucs')):
            print pb('Found Qucs in: %s' %(prefix))
        else:
            sys.exit(pr('Oh dear, Qucs not found in: %s' %(prefix)))

    if args.qucsator:

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

    #
    # Print list of selected tests
    #
    pprint.pprint(testsuite)

    #
    # Run Qucs GUI
    #
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
        table_print(sim_collect, table_name, footer)

        # Report tested/untested devices

        # data from simulation
        for n, qp in enumerate (prefix):
            datafile = 'qucs_components_data.p'
            report_out = 'report_coverage_%s.txt' %(get_qucsator_version(qp).replace(' ','_'))
            report_simulation(sim_collect[n], datafile, report_out)

    #
    # Add schematic as test-project and initialize its netlist, result and log files
    #
    if args.add_test:
        print '\n'
        print py('********************************')
        print 'adding schematic: %s' %(args.add_test)

        sch = args.add_test

        add_test_project(sch)

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
            #print name

            tests_dir = os.getcwd()
            #print tests_dir

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

