#!/bin/bash

set -e

# these should be defined somewhere
export OMC_HOME=/home/stg/omc
export JODA_OMC_HOME=/home/stg/joda-omc-artifacts

# need to run with java 1.8 or above
export JAVA_HOME=/home/stg/jdk1.8.0_311
export PATH=$JAVA_HOME/bin:$PATH

export joda_test_dir=$JODA_OMC_HOME/src/test/java/org/joda/time/
export cri_gen_jar=$OMC_HOME/lib/omc_cri_gen.jar
export slicer=$OMC_HOME/lib/slicer.jar
export trace_dir=$JODA_OMC_HOME/traces
export slice_dir=$JODA_OMC_HOME/slices

# this is where all the generated slicing scripts go
export gen_script_dir=$JODA_OMC_HOME/scripts/slicing_scripts
if [ ! -d $gen_script_dir ]; then
	mkdir -p $gen_script_dir
fi

echo "Auto-gen slicing scripts into $gen_script_dir"
java -jar $cri_gen_jar $joda_test_dir $trace_dir $slice_dir $slicer $gen_script_dir

chmod +x $gen_script_dir/*/*.sh
