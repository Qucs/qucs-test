"""
Module to handle the qucsdata result file.
"""

import re
import numpy as np

'''
The matrix part is a bit of hack!! Sorry
'''

import collections

def parse_file(name):

    file = open(name)

    # the dict this function returns
    data = {}
    numpoints = 1
    ind = 0
    shape = []
    variables = {}

    mName = '' # matrix name, use as state

    # load matrix as dict of dict
    matrix = collections.defaultdict(dict)


    for line in file:
        #print line
        if line.startswith('<'):

            # a matrix or vector in equations are stored as indep

            if line.startswith('<indep'):
                #print line
                r = re.match(r'\<(\w+) (\S+) (\d+)\>', line)
                g = r.groups()
                # there can be several independent variables -> numpoints keeps
                # the total number of points
                numpoints = numpoints * int(g[2])
                name = g[1]

                # try to get name and indices
                #print name
                if '[' in name:
                    # got a matrix,
                    # need to read it till the end to find out size
                    m = re.split(',|\[|\]', name)

                    # set matrix
                    mName = m[0]
                    row = m[1]
                    col = m[2]

                    # temp dict
                    if mName not in matrix.keys():
                        matrix[mName]['val'] = []

                    variables[mName] = 'indep'
                else:
                    mName='' # unset matrix

                    # reserve an array for the values
                    # independent can also be complex
                    data[name] = np.zeros(int(g[2]), np.complex64)
                    ind = 0
                    # save the simulation points in an array
                    shape = np.append(shape, int(g[2]))
                    # save that this variable is independent
                    variables[name] = 'indep'

            if line.startswith('<dep'):
                #print line
                r = re.match(r'\<dep (\S+)', line)
                g = r.groups()
                name = g[0]
                # reserve a complex matrix to be on the safe side
                data[name] = np.zeros(int(numpoints), np.complex64)
                ind = 0
                # store that this is a dependent variable
                variables[name] = 'dep'

        else:
            jind = line.find('j')

            if(jind == -1):
                # real number -> just parse it
                val = float(line)

                if mName:
                    matrix[mName]['type'] = 'float' #kind val

            else:
                # complex number -> break into re/im part
                val_re = line[0:jind-1]
                sign = line[jind-1]
                val_im = sign + line[jind+1:-1]
                # and convert it into a complex number
                val = complex(float(val_re), float(val_im))

                if mName:
                    matrix[mName]['type'] = 'complex' #kind val

            # store the extracted datapoint
            if mName:
                # matrix... do nothing?
                #print mName, row, col, val
                matrix[mName]['row'] = row
                matrix[mName]['col'] = col
                matrix[mName]['val'].append(val)
                #print matrix
            else:
                data[name][ind] = val
                ind = ind + 1

    data['variables'] = variables
    # reverse the shape variable in order to get the reshape operation (see below)
    # correct
    shape = shape[::-1]

    # here comes the clever trick :-)
    # if a dependent variable depends on N > 1 (independent) variables,
    # we reshape the vector we have obtained so far into an N-dimensional
    # matrix
    for key in data['variables']:
        temp = data['variables'][key]
        if temp == 'dep':
            temp_data = data[key]
            data[key] = np.reshape(temp_data, shape)

    for key in matrix.keys():
        #print matrix[key]
        val = matrix[key]['val']
        row = int(matrix[key]['row'])
        col = int(matrix[key]['col'])
        data[key] = np.reshape(val, (row,col))

    return data

