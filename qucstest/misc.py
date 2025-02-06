"""
Module containing miscellaneous handy functions
"""

import datetime

def timestamp(timeformat="%y%m%d_%H%M%S"):
    '''
    Format a timestamp.

    :param timeformat: format for the time-stamp.
    :return: formatted time/date format
    '''
    return datetime.datetime.now().strftime(timeformat)
