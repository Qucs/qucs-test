"""
Module to handle reports.
"""

from colors import *
import os
import pickle


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
        header += ' |   Sim. Runtime     '

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
            status = rp[key]['status']
            if 'NUM' in status:
                proj_stat += '| %-10s' %(str(rp[key]['runtime']))
                proj_stat += '%s' %('NUM_FAIL  ')
            elif status == 'FAIL':
                proj_stat += '| %-20s' %(status)
            else:
                proj_stat += '| %-20s' %(str(rp[key]['runtime']))

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


def report_coverage(sim_collect, datafile, report_name=''):
    '''
    Report component coverage with given tests.

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
