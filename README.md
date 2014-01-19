# Qucs testing scripts.


Objective: test the Qucs frond and back ends.

The test projects under the `testsuite` directory are all run by default.

To skip failing projects use the `--skip` option with a list of projects to be ignored.



## Running the test suite

Example of running the test-suite while skipping a few test projects:

```
$python run.py --prefix /home/user/local/qucs-master/bin/ --skip skip.txt --qucsator
```

Options:

 * `--qucs` runs the schematic to netlist conversion.

 * `--qucsator` runs the simulator.

 * `--add-test [schematic].sch` adds a schematic as a test-project into the test-set.

    * it will attempt to initialize/create the reference netlist, reference results and log files.

 * `--skip [file]` will skip the projects listed in the [file].

    * current format: PROJECT_NAME, Any comment (project name should end with a ',')

Outputs:

 * The script is rather verbose and the progress is printed to the terminal (with colors, yeah!).

 * A table with the run project, Qucs schematic version and simulation runtim is saved automatically and time-stamped.

 * A report table with all components available to Qucs and the coverage with respect to the types of simulations.

## Tested with

Mac OSX 10.8.5, Python 2.7.5, Numpy 1.7.1

Debian 6.0.7 (Squeeze), Python 2.6.6, 1.4.1

You might need to install `argparse` which is not included with Python 2.6. Something like:

```
$sudo apt-get update
$sudo apt-get install python-setuptools
$sudo easy_install pip
$sudo pip install setuptools --no-use-wheel --upgrade
$sudo pip install argparse
```


## Output Examples

  * [Output without errors](output_normal.txt)

  * [Output with errors](output_errors.txt)

  * [Table output from simulations](report_simulation_Qucsator_0.0.18140119_020240.txt)

  * [Currently failing projects](skip.txt)

  * [Component test coverage](report_test_coverage_140119_020240.txt)

## How it works

It considers every directory under `testsuite` as a project to be run. Then,

 * It run tests to check the schematic to netlist conversion, using the Qucs-GUI code.

 * It compares (diff) a reference netlist with the generated netlist on the step above.

 * A simulation is run for each project

 * Results are for the dependent variables are compared with reference results

 * It collects : failed netlist diffs, simulation runtime, failed variable comparison, output and warnings (not used currently).


---

## Running Qucs on the command line:

Running Qucs and Qucsator from the command line makes it easy to automated testing.

### Schematic to Netlist:

It is possible to use Qucs GUI from the command line to read a schematic and create the netlist.

```
$qucs -n -i file.sch -o netlist.txt
```

### Netlist to Results:

Having a netlist file it is possible to run the Qucsator backed to read the netlist and create the results (and log messages).

```
$qucsator -i netlist.txt -o result.dat
```

## Notes:

 * Tests should not take too much time to run.
 * Tests should focus into a particular feature which can be tested in isolation
 * Tests could be categorised, ex. DC, AC analysis, a component...
 * Tests should exercise corners that are crucial for stable releases.
 * Before releasing, the test set should be run with no regressions.
 * Git can be used to version test result (timing history?)


# Test-case

A test case is stored on a directory, similar to a Qucs project

Suggested contents:

 * test.txt
   * test config file
 * Schematic (.sch)
   * Test schematic (name convention)
   * Subcircuits dependencies
 * Netlist (.txt)
   * reference netlist
 * Result (.dat)
   * reference results
 * Optional
   * reference log file (.txt)
   * PDF dump of schematic/data display

_What about asco, verilog, vhdl?_

# Run a test-case

The test-case is run depending on the available inputs. The main steps are listed below

 * convert schematic into test netlist
 * compare reference netlist with test netlist
 * run netlist (or test netlist) store test result
 * compare reference result with test result

```
Schematic ==> Netlist

input:  [name].sch
output: netlist_test.txt

Netlist ==> Result

input:  netlist.txt | netlist_test.txt
output: result.dat | result_test.txt
        log.txt
        [asco.log]
```

```
compare:
  - netlist X netlist_test
  - result  X result_test
```

## Compare netlist

Simple diff, skip first line. Retun different lines.

## Check netlist

Qucsator has the option to check a netlist. ?? what for ??

## Compare results

It uses the numpy [`allclose`](http://docs.scipy.org/doc/numpy/reference/generated/numpy.allclose.html) function to check how close together are all the dependent variables (arrays) on the reference and test data files.

# Test Suite:

Tests should be similar to projects. So making it easy to open on Qucs an use as examples.

## Set structure:

```
qucs-test/
  run.py

  testsuite
    TR_collpits_prj/
      collpits.sch


    AC_bandpass_prj/
      bandpass.sch
      opa.sch
      bandpass.dat
      netlist.txt
      log.txt

    ASCO_AC_fobar_prj/

    VERILOG_

    VHDL_
```

Notes:

 * Need to identify the test schematic among the subcircuits
   * directory name, and the name of the schematic to be netlisted/simulated.

Whish-list

 * what about verilog, vhdl, asco?
 * pack/unpack tarballs/examples?


# Helper Scripts

* Create/update list of test/prj:
  - check consistency of the test-suite.
  - it looks what tests are available.
  - it adds new tests as they are found.
  - it preserves the ones that are commented out #, give warning


* Test behavior depends on the provided input/reference files
  - if [sch] provided -> netlist, check
  - if [sch, dat] provided -> nelist, [check], simulate, check
  - if [sch, dat, log] provided -> do netlist, [check], simulate, check, statistics

* Give option to create reference files when missing.

* Table Report pass, fail, missing resource
* Catch errors, time out, kill process if taking more than expected
* Report checks, time improvement/regression

* Html report?
