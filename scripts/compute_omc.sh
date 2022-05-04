#!/bin/bash

export JAVA_HOME=/home/stg/jdk1.8.0_311
export PATH=$JAVA_HOME/bin:$PATH

export OMC_HOME=/home/stg/omc
export JODA_OMC_HOME=/home/stg/joda-omc-artifacts

export omc_s_jar=$OMC_HOME/lib/omc_s.jar
export clover_xml=$JODA_OMC_HOME/clover.xml
export joda_slices=$JODA_OMC_HOME/slices

#output_for_omc
export joda_out=$JODA_OMC_HOME/omc_output
if [ ! -d $joda_out ]; then
	mkdir $joda_out
fi

#
# compute OMC information
#
echo "Computing OMC coverage into $joda_out"
java -jar $omc_s_jar $joda_slices $clover_xml $joda_out

