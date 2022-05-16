#!/bin/bash

#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
#export CLASSPATH=/media/soneya/extradrive1/OMC/joda_time_qual/target/test-classes:/media/soneya/extradrive1/OMC/joda_time_qual/target/classes:/home/soneya/.m2/repository/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:/home/soneya/.m2/repository/junit/junit/4.11/junit-4.11.jar:/home/soneya/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

mkdir -p $TRACES/convert_traces

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestConverterManager.trace  org.joda.time.convert.TestConverterManager
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.


start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestCalendarConverter.trace  org.joda.time.convert.TestCalendarConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestDateConverter.trace  org.joda.time.convert.TestDateConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestConverterSet.trace  org.joda.time.convert.TestConverterSet
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestLongConverter.trace  org.joda.time.convert.TestLongConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestNullConverter.trace  org.joda.time.convert.TestNullConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.
start=`date +%s`

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestReadableDurationConverter.trace  org.joda.time.convert.TestReadableDurationConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestReadableInstantConverter.trace  org.joda.time.convert.TestReadableInstantConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestReadableIntervalConverter.trace  org.joda.time.convert.TestReadableIntervalConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestReadablePartialConverter.trace  org.joda.time.convert.TestReadablePartialConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestReadablePeriodConverter.trace  org.joda.time.convert.TestReadablePeriodConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/convert_traces/TestStringConverter.trace  org.joda.time.convert.TestStringConverter
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.



