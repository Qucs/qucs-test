"""
Module to handle a Qucsator netlist file.
"""

def get_net_components(netlist):
    '''
    Search for component types on a netlist file.

    :param netlist: text file containing a netlist
    :return: list of components
    '''
    comps=set()
    with open(netlist) as fp:
        for line in fp:
            if ':' in line:
                # left of :
                element = line.split(':')[0].strip()
                if not '.' in element:
                    comps.add(element)
    return list(comps)


def get_net_simulations(netlist):
    '''
    Search for simulations types on a netlist file.

    :param netlist: text file containing a netlist
    :return: list of simulations
    '''
    sim=set()
    with open(netlist) as fp:
        for line in fp:
            if ':' in line:
                # left of :
                element = line.split(':')[0].strip()
                if '.' in element:
                    # skip subcircuit '.Def' marker
                    if not 'Def' in element:
                        sim.add(element.strip('.'))
    return list(sim)
