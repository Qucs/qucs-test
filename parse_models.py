
'''
    Hacked parser to gather info about available components from Qucs C++ sources


    Note:
    * there a few name classes mismatches or inexistent beween qucs / qucs-core
      * Basic_BJT - ?
'''

import glob
import re
import os
import sys
import pickle


def get_class(s):
    # text between parenthesis
    return s[s.find("(")+1:s.find(")")]

def scan_repo(repo):


    # get class names and type of model
    # ex. Resistor - Lumped, Diode - Nonlinear

    mod = '/Users/guilherme/git/qucs/qucs/qucs/module.cpp'

    regs = [
    '  REGISTER_LUMPED',
    '  REGISTER_SOURCE',
    '  REGISTER_PROBE',
    '  REGISTER_TRANS',
    '  REGISTER_NONLINEAR',
    '  REGISTER_VERILOGA',
    '  REGISTER_DIGITAL',
    '  REGISTER_FILE',
    '  REGISTER_SIMULATION' ]

    mod_reg = {}
    for index in range(len(regs)):
        kind = regs[index].strip().split('_')[1]
        with open(mod) as fm:
            for line in fm:
                if regs[index] in line:
                    model_class = get_class(line)

                    # handle Resistor with multiple parameters
                    if ',' in model_class:
                        model_class = model_class.split(',')[0]

                    mod_reg[model_class] = kind

    data = {}

    # list all sources
    devices = glob.glob(repo+'*.cpp')

    report  = ''
    report += '\n%20s' %('-'*80)
    report += '\n%-20s | %-20s | %-15s | %-10s' %('Registered Class', 'Model Name', 'Instance Prefix', 'Source')
    report += '\n%20s' %('-'*80)

    for src in devices:
        constr = False
        nam = False
        verbose = False

        with open(src) as fp:

            # skip non-device files
            skip = ['component.cpp', 'componentdialog.cpp', 'optimizedialog.cpp',
            'spicedialog.cpp', 'vafile.cpp', 'verilogfile.cpp', 'vhdlfile.cpp', 'vfile.cpp']

            base = os.path.basename(src)
            if base in skip:
                continue # skip to next src

            # skip moc files
            if 'moc.cpp' in base:
                continue # skip to next src

            if verbose:
                print '\n%s' %src

            for line in fp:
                if not constr:
                    if '::' in line:
                        constr = True
                        # class name
                        regName = line.split('::')[0].strip()

                        if verbose:
                            print 'register Name:', regName

                if '  Model' in line:
                    # get stuff between " "
                    model = re.findall('"([^"]*)"', line)[0]

                    if verbose:
                        print 'model Name:   ', model

                    # simple bjt has no name, but netlist adds (T) for it
                    if model=='_BJT':
                        nam = True
                        name = 'T'

                    # logic gates have no name, but netlist adds (Y) for them
                    if (model == "AND" or  model == "NAND" or model == "NOR" or
                        model == "OR" or  model == "XNOR" or model == "XOR"):
                        nam = True
                        name = 'Y'

                    # simple MOSFET has no name, but netlist adds (T) for it
                    if model=='_MOSFET':
                        nam = True
                        name = 'T'

                    if nam:
                        if verbose:
                            print 'instance Name:', name
                        continue

                if not nam:
                    if 'Name' in line:
                        if '=' in line:
                            nam = True
                            name = re.findall('"([^"]*)"', line)[0]
                            if verbose:
                                print 'instance Name:', name
                            continue

        report += '\n%-20s | %-20s | %-15s | %-10s' %(regName, model, name, base)


        # try to skip unknown classes from Qucs into Qucs-core
        if regName in mod_reg:
            data[regName]=[model, name, base, mod_reg[regName]]

    report += '\n%20s' %('-'*80)
    report += '\nTotal: %i' %(len(data.keys()))
    report += '\n%20s' %('-'*80)

    return report, data


if __name__ == "__main__":


    if len(sys.argv) != 2:
        print '\nPlease provide full path to Qucs repo clone:'
        print '$ python parse_mode.py /path/to/src/qucs'
        sys.exit('Not enough arguments!')

    repo = str(sys.argv[1])

    comp_src = '/qucs/qucs/components/'
    comp_dir = repo + comp_src

    print 'Looking for: ', comp_dir
    if not os.path.isdir(comp_dir):
        sys.exit("Directory not found: <repo>"+comp_src)

    # Parse data
    print 'Parsing sources in: ', comp_dir
    report, data = scan_repo(comp_dir)

    # Save table
    report_out = 'qucs_components.txt'
    print 'Saving table: ', report_out
    with open(report_out, 'w') as myFile:
        myFile.write(report)

    # Save data, to be used on the test reports
    # Save a dictionary into a pickle file.
    datafile = 'qucs_components_data.p'
    print 'Saving Python data: ', datafile
    pickle.dump( data, open( datafile, "wb" ) )

    # parse type from registered



