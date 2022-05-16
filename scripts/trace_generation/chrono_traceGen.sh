#!/bin/bash

set -e

this_dir=$( dirname "$(readlink -f "$0")" )
cd $this_dir

source ./setpath.sh

if [ ! -d $TRACES/chrono_traces ]; then
	mkdir -p $TRACES/chrono_traces
fi

ls

env | grep PATH
env | grep CLASS

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestBuddhistChronology.trace  org.joda.time.chrono.TestBuddhistChronology

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestIslamicChronology.trace  org.joda.time.chrono.TestIslamicChronology

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestCopticChronology.trace  org.joda.time.chrono.TestCopticChronology

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestEthiopicChronology.trace  org.joda.time.chrono.TestEthiopicChronology

exit 0

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestGJDate.trace  org.joda.time.chrono.TestGJDate
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.


start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestGJChronology.trace  org.joda.time.chrono.TestGJChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestGregorianChronology.trace  org.joda.time.chrono.TestGregorianChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestISOChronology.trace  org.joda.time.chrono.TestISOChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestJulianChronology.trace  org.joda.time.chrono.TestJulianChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/chrono_traces/TestLenientChronology.trace  org.joda.time.chrono.TestLenientChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.
