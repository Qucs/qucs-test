#!/usr/bin/env python

'''
  Notes:
  * it skips subcircut marker '.Def'
  * there is no indication that a Spice file is translated into the netlist.
    The only hint is the '_cir' appended tot he definition .DEF, which is skiped

  TODO
  * mark versions when comparing for NUM_FAIL

'''

import argparse
import logging
import datetime
import numpy as np
import os
import pprint
import subprocess
import shutil
import sys
import threading
import time
from distutils.version import LooseVersion


from qucstest.colors import pb, pg, pr, py
from qucstest.schematic import *
from qucstest.netlist import *
from qucstest.report import *
from qucstest.qucsdata import QucsData
from qucstest.qucsator import *
from qucstest.qucsgui import *
from qucstest.figures import *
from qucstest.misc import *


class Test:
   '''
   Object used to store information related to a test.
   '''
   def __init__(self, name):
       # test name (the project directory name)
       self.name = name
       # full path to the project
       self.path = ''
       # name of the source schematic
       self.schematic = ''
       # version of the schematic
       self.version= ''
       # default dataset on schematic
       self.dataset = ''
       # reference netlist (typically the basename as the schematic)
       self.netlist = ''
       # list of components being simulated
       self.comp_types = []
       # list of simulations being performed
       self.sim_types = []
       # test status [PASS, FAIL, NUM_FAIL, TIME_FAIL]
       self.status = ''
       # time it took to run the test
       self.runtime = ''
       # message related to status
       self.message = ''
       # list of traces that resulted in NUM_FAIL
       self.failed_traces = []

   def debug(self):
       print 'name         :', self.name
       print 'schematic    :', self.schematic
       print 'version      :', self.version
       print 'dataset      :', self.dataset
       print 'netlist      :', self.netlist
       print 'comp_types   :', self.comp_types
       print 'sim_types    :', self.sim_types
       print 'status       :', self.status
       print 'runtime      :', self.runtime
       print 'message      :', self.message
       print 'failed_traces:', self.failed_traces

   def getSchematic(self):
       if not self.schematic:
           # get schematic name from direcitory name
           # trim the simulation types
           sim_types= ['DC_', 'AC_', 'TR_', 'SP_', 'SW_']
           name = self.name
           for sim in sim_types:
               if sim in name:
                   name=name[3:]
           self.schematic = name[:-4]+'.sch'
       return self.schematic



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
            logger.debug( pb('Thread started') )
            self.process = subprocess.Popen(self.cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            out, err = self.process.communicate()
            # keep the stdout and stderr
            self.out = out
            self.err = err
            logger.debug( pb('Thread finished') )

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
            logger.warn( pr('Process return code: %i' %self.retcode) )
        else:
            logger.info( pb('Process return code: %i' %self.retcode) )


def get_subdirs(dir):
    '''
    Return a list of names of subdirectories.

    :param dir: dir to look up for subdirs.
    :return: list of subdirec
    '''
    return [name for name in sorted(os.listdir(dir))
            if os.path.isdir(os.path.join(dir, name))]



def compare_datasets(ref_dataset, test_dataset, rtol=1e-5, atol=1e-8):
    '''
    Compare two datasets for numerical differences.

    :param ref_dataset : reference dataset
    :param test_dataset: test dataset
    :param rtol: relative tolerance
    :param atol: absolute tolerance
    :return failed: list of traces that failed numerical check
    '''

    from qucstest.colors import pb, pr, pg

    if not os.path.isfile(ref_dataset):
        sys.exit('No reference dataset: %s' %ref_dataset)
    if not os.path.isfile(test_dataset):
        sys.exit('No test dataset: %s' %rest_dataset)

    # TODO failed also catches if the solver didn't run, output_dataset will be empty,
    # it will fail the comparison

    # let's compare results

    # list of failed variable comparisons
    failed=[]

    logger.info( pb('load data %s' %(ref_dataset)) )
    ref = QucsData(ref_dataset)

    logger.info( pb('load data %s' %(test_dataset)) )
    test = QucsData(test_dataset)

    logger.info( pb('Comparing dependent variables [rtol=%s, atol=%s]' %(rtol,atol)) )

    for name in ref.dependent.keys():
        ref_trace  = ref.data[name]
        test_trace = test.data[name]

        # check: abs(test - ref) <= (atol + rtol * ref)
        if not np.allclose(test_trace, ref_trace, rtol=rtol, atol=atol):
            logger.warning( pr('  Failed %s' %(name)) )
            failed.append(name)
        else:
            logger.info(pg('  Passed %s' %(name)) )

    return failed


def run_simulation(test, qucspath, plot_interactive=False):
    '''
    Run simulation from reference netlist and compare outputs (dat, log)

    :param test: test object containing the test info
    :param qucspath: path containing qucsator
    :param plot_interactive: plot graphs as data is compared
    '''

    name = test.getSchematic()


    test_dir = os.getcwd()

    proj_dir = os.path.join(test_dir, 'testsuite', test.name)
    test.path = proj_dir
    print '\nProject : ', proj_dir


    input_net = os.path.join(proj_dir, "netlist.txt")
    if not os.path.isfile(input_net):
        sys.exit('Input netlist not found')

    # fetch types of simulation an types of components
    comps = get_net_components(input_net)
    sim = get_net_simulations(input_net)

    test.comp_types = comps
    test.sim_types = sim

    # get the Qucs Schematic version from the schematic
    schematic = os.path.join(proj_dir, test.schematic)

    test.version = get_sch_version(schematic)
    test.dataset =  get_sch_dataset(schematic)

    output_dataset = os.path.join(proj_dir, "test_"+test.dataset)

    ext = '' if os.name != 'nt' else '.exe'
    cmd = [os.path.join(qucspath, "qucsator"+ext), "-i", input_net, "-o", output_dataset]
    print 'Running : ', ' '.join(cmd)

    # TODO run a few times, record average/best of 3
    # call the solver in a subprocess, set the timeout
    tic = time.time()
    command = Command(cmd)
    command.run(timeout=maxTime)
    toc = time.time()
    runtime = toc - tic

    # If return code, ignore time
    if command.retcode:
        test.status = 'FAIL'
        test.message = 'FAIL CODE %i' %command.retcode

    if command.timeout:
        test.status = 'TIME_FAIL'
        test.message = 'TIMEOUT'
    else:
        test.status = 'PASS'
        test.runtime = '%f' %runtime

    logger.info( pb('Runtime: %f' %runtime) )

    if (command.timeout):

        errout =  os.path.join(proj_dir, 'error_timeout.txt')
        print pr('Failed with timeout, saving: \n   %s' % errout)
        with open(errout, 'w') as myFile:
            myFile.write(command.err)

    if (command.retcode):
        errout = os.path.join(proj_dir, 'error_code.txt')
        print pr('Failed with error code, saving: \n   %s' % errout)
        with open(errout, 'w') as myFile:
            myFile.write(command.err)

    # perform result comparison
    if (not command.timeout) and (command.retcode==0):
        ref_dataset = os.path.join(proj_dir, get_sch_dataset(schematic))

        numerical_diff = compare_datasets(ref_dataset, output_dataset, rtol, atol)
        if numerical_diff:
            test.failed_traces = numerical_diff
            test.status = 'NUM_FAIL'

        # show all traces
        if plot_interactive:
            plot_error(ref_dataset, output_dataset, QucsData(ref_dataset).dependent.keys(), show=plot_interactive)

        # quiet save of fail numerical check
        if numerical_diff:
            plot_error(ref_dataset, output_dataset, test.failed_traces)


    return


def add_test_project(sch):
    '''
    Add a schematic file as a test on the testsuite.

    - create directory (start with simulation types, ex. DC_TR_myCircuit_prj)
    - search and copy related subcircuits
    - TODO search and copy included SPICE files
    - initialize reference netlis
    - initialize reference data file
    - TODO initialize SPICE, run qucsconv

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
    sim_used = get_sch_simulations(sch)
    sim_found = ''
    for sim in sim_used:
        #skip dot, prepend simulation types
        sim_found+=sim[1:]+'_'
    if not sim_found:
        sys.exit( pr('This schematic performs no simulation, is it a subcircuit?'))
    dest = sim_found + sch_name + '_prj'

    # scan for subcircuits, to be copied over to destination
    sub_files = get_sch_subcircuits(sch)

    dest_dir = os.path.join(os.getcwd(),'testsuite', dest)
    if not os.path.exists(dest_dir):
        print 'Creating directory:', dest_dir
        os.makedirs(dest_dir)
    else:
        print 'Use existing directory:', dest_dir

    # copy schematic
    shutil.copy2(sch, dest_dir)

    # copy listed subcircuit (recursive)
    for sub in sub_files:
        print 'Copying sub-circuit', sub
        src = os.path.join(os.path.dirname(sch),sub)
        if os.path.isfile(src):
            shutil.copy2(src, dest_dir)
        else:
            sys.exit(pr('Oops, subcircuit not found: ', src))

    return dest_dir

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

    parser.add_argument('--exclude', type=str,
                       help='file listing projects excluded from test')

    parser.add_argument('--include', type=str,
                       help='file of project selected for test')

    parser.add_argument('--project', type=str,
                       help='path to a test project')

    parser.add_argument('--compare-qucsator', nargs='+', type=str,
                       help='two full paths to directories containing '
                             'qucsator binaries for comparison test')

    parser.add_argument("-v", "--verbose", const=1, default=0, type=int, nargs="?",
                    help="increase verbosity: 0 = only warnings, 1 = info, 2 = debug. No number means info. Default is no verbosity.")

    parser.add_argument('--reset',
                       action='store_true',
                       help='Reset (overwrite) data and log files of test projects.'
                            'Run qucsator given with --prefix.')

    parser.add_argument('--timeout', type=int, default=60,
                       help='Abort test if longer that timeout (default: 60 s).')

    parser.add_argument('--rtol', type=float, default=1e-1,
                       help='Set the element-wise relative tolerace (default 1e-1).\n'
                            'See: Numpy allclose function.')

    parser.add_argument('--atol', type=float, default=1e-5,
                       help='Set the element-wise absolute tolerace (default 1e-5).\n'
                            'See: Numpy allclose function.')

    parser.add_argument('--plot-interactive', action='store_true',
                       help='Plot and show error graphs interactively.\n'
                            'Hardcopy PNG saved by default.')

    args = parser.parse_args()
    return args



if __name__ == '__main__':

    args = parse_options()
    #print(args)


    # set global values, default or overrides
    maxTime = args.timeout
    rtol = args.rtol
    atol = args.atol


    print pb('Using Max. time: %s' %str(maxTime))
    print pb('Using rtol: %s' %str(rtol))
    print pb('Using atol: %s' %str(atol))


    # setup logger
    logger = logging.getLogger()
    logging.basicConfig(format='%(levelname)s:%(message)s')
    if args.verbose == 0:
        logger.setLevel(logging.WARN)
    elif args.verbose == 1:
        logger.setLevel(logging.INFO)
    elif args.verbose == 2:
        logger.setLevel(logging.DEBUG)


    # TODO improve the discovery of qucs, qucator
    if args.prefix:
        #prefix = os.path.join(args.prefix, 'bin', os.sep)
        prefix = [args.prefix]
    else:
        # TODO add default paths, build location, system locations
        prefix = os.path.join('/usr/local/bin/')


    if (args.qucs or args.p):
        ext = '' if os.name != 'nt' else '.exe'
        if os.path.isfile(os.path.join(prefix[0], 'qucs'+ext)):
            print pb('Found Qucs in: %s' %(prefix))
        else:
            sys.exit(pr('Oh dear, Qucs not found in: %s' %(prefix)))

    if (args.qucsator or args.reset):
        ext = '' if os.name != 'nt' else '.exe'
        if os.path.isfile(os.path.join(prefix[0], 'qucsator'+ext)):
            print pb('Found Qucsator in: %s' %(prefix))
        else:
            sys.exit(pr('Oh dear, Qucsator not found in: %s' %(prefix)))


    if args.compare_qucsator:

        prefix = args.compare_qucsator

        logger.info( pb('Comparing the following qucsators:') )

        for qp in prefix:
            ext = '' if os.name != 'nt' else '.exe'
            if os.path.isfile(os.path.join(qp, 'qucsator'+ext)):
                print pb('%s' %(qp))
            else:
                sys.exit(pr("No qucsator binary found in: %s" %(qp)))


    # get single project or list of test-projects
    if args.project:
        testsuite =  [os.path.join(args.project)]
    else:
        testsuite = get_subdirs('./testsuite/')

    # TODO read list of: skip, testshort, testlong

    if args.exclude:
        skip = args.exclude
        with open(skip) as fp:
            for line in fp:
                skip_proj = line.split(',')[0]
                if skip_proj in testsuite:
                    print py('Skipping %s' %skip_proj)
                    testsuite.remove(skip_proj)

    if args.include:
        add = args.include
        include = []
        with open(add) as fp:
            for line in fp:
                proj = line.split(',')[0]
                if proj in testsuite:
                    print pg('Including %s' %proj)
                    include.append(proj)
        if include:
            testsuite = include

    # Toggle if any test fail
    returnStatus = 0


    if args.qucs or args.qucsator or args.project:
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
        # for each simulation performed
        #sim_collect = []
        # fail will be a list of lists, one for each qpath. Each sub-list
        # contains information on failed tests
        #fail = []

        show_plot = args.plot_interactive

        collect_tests = []
        # loop over prefixes
        for qucspath in prefix:

            tests = []
            # loop over testsuite
            for project in testsuite:
                test = Test(project)
                run_simulation(test, qucspath, show_plot)
                tests.append(test)
            collect_tests.append(tests)

        print '\n'
        print pb('############################################')
        print pb('#  Report simulation result comparison     #')

        for indx, qucspath in enumerate (prefix):
            print pb('--> Simulator location: %s' %(qucspath))

            for test in collect_tests[indx]:
                if test.status == "NUM_FAIL":
                    logger.warn(pr(' Numerical differences! Project [%s], traces %s' %(test.name, test.failed_traces)))
                    returnStatus = -1

                if "FAIL" in test.status:
                    logger.warn( 'Test: %s, Status: %s, Message %s' %(test.name, test.status, test.message))
                    returnStatus = -1


        if not returnStatus:
            print pg('--> No significant numerical differences found.')

        print pb('#                                          #')
        print pb('############################################')


        print pg('************************')
        print pg('* Qucsator test report *')
        print pg('************************')

        if args.compare_qucsator:
            table_name = 'qucsator_comparison_' + timestamp() + '_sim_results.txt'
        else:
            table_name = 'report_simulation'+'_'+ get_qucsator_version(prefix[0]).replace(' ','_')+'.txt'

        if len (prefix) > 1:
            footer  = 'Qucsator versions:   '
            for qp in prefix:
                footer += get_qucsator_version(qp) + ' : '
            footer += '\n\nBinary Locations:'
            for qp in prefix:
                footer += '\n' + qp
            footer += '\n'
        else:
            footer  = 'Qucsator version:   '  + get_qucsator_version(qucspath) + ' '

        footer += '\n'
        footer += 'Report produced on: ' + timestamp("%Y-%m-%d %H:%M:%S") + '\n'

        # Print simulation report to stdout and save to table_name
        report_status(collect_tests, table_name, footer)

        # Report tested/untested devices
        # data from simulation
        datafile = 'qucs_components_data.p'
        report_name = 'report_coverage_%s.txt' %(timestamp())
        report_coverage(collect_tests, datafile, report_name)

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

            # call the solver in a subprocess, set the timeout
            tic = time.time()
            command = Command(cmd)
            command.run(timeout=maxTime)
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

            output_net = os.path.join(dest_dir, 'netlist.txt')

            # OVERWRITE reference .dat, log.txt
            print pb("Creating reference data and log files.")
            cmd = [os.path.join(prefix[0],"qucsator"), "-i", output_net, "-o", output_dataset]
            print 'Running [qucsator]: ', ' '.join(cmd)

            tic = time.time()
            # call the solver in a subprocess, set the timeout
            command = Command(cmd)
            command.run(timeout=maxTime)
            toc = time.time()
            runtime = toc - tic

            # save log.txt
            # FIXME log reports different details if release/debug mode
            logout = os.path.join(dest_dir,'log.txt')
            #print pb('Initializing %s saving: \n   %s' %(sch, logout))
            with open(logout, 'w') as myFile:
                myFile.write(command.out)

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

