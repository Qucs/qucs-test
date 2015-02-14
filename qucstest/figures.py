"""
Module to handle plots and figures.
"""
import os
import platform
import matplotlib.pyplot as plt
from matplotlib.ticker import OldScalarFormatter

from qucsdata import QucsData
from misc import timestamp


def plot_error(reference, test, failed):
    """
    Plot the traces that failed numerical check along with the error.

    :param reference: golden/reference dataset
    :param test: test dataset
    """
    print failed
    gold  = QucsData(reference)
    check = QucsData(test)
    for label in failed:
        a =  gold.data[label]
        b = check.data[label]

        fig, ax1 = plt.subplots(figsize=(8,6))

        ax1.set_title('[%s vs %s] [%s] [%s]'
                     %(gold.version, check.version,
                       platform.platform(), timestamp()))

        ax1.plot(a, 'b-+',  markersize=10, label='gold:'+label)
        ax1.plot(b, 'g--x', markersize=10, label='test:'+label)
        ax1.set_ylabel(label)
        ax1.set_xlabel('steps')
        ax1.grid(True)

        ax2 = ax1.twinx()
        ax2.plot(abs(a-b), 'r.-', label='abs(gold - test)')
        ax2.set_ylabel('abs(gold - test)', color='r')
        for tl in ax2.get_yticklabels():
            tl.set_color('r')
        ax2.yaxis.set_major_formatter(OldScalarFormatter())

        h1, l1 = ax1.get_legend_handles_labels()
        h2, l2 = ax2.get_legend_handles_labels()
        ax1.legend(h1+h2, l1+l2, loc=2)
        plt.tight_layout()

        plt.show()

        proj_dir = os.path.dirname(reference)

        figname= os.path.join(proj_dir, platform.system() + '_fig_'+label+'.png')
        print 'saving', figname
        plt.savefig(figname)

        plt.close()


if __name__ == '__main__':

  # simple demo

  gold = '../testsuite/TR_sawtooth-discreet_prj/sawtooth-discreet.dat'
  test = '../testsuite/TR_sawtooth-discreet_prj/test_sawtooth-discreet.dat'

  dir = os.path.dirname(__file__)
  gold = os.path.join(dir, gold)
  test = os.path.join(dir, test)

  import sys
  sys.path.append("..")
  from run import compare_datasets

  numerical_diff = compare_datasets(gold, test)
  print numerical_diff

  plot_error(gold, test, numerical_diff)
