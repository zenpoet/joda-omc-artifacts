#!/bin/bash

#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
#export CLASSPATH=/media/soneya/extradrive1/OMC/joda_time_qual/target/test-classes:/media/soneya/extradrive1/OMC/joda_time_qual/target/classes:/home/soneya/.m2/repository/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:/home/soneya/.m2/repository/junit/junit/4.11/junit-4.11.jar:/home/soneya/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

mkdir -p $TRACES/field_traces

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestBaseDateTimeField.trace  org.joda.time.field.TestBaseDateTimeField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestFieldUtils.trace  org.joda.time.field.TestFieldUtils
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestMillisDurationField.trace  org.joda.time.field.TestMillisDurationField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestOffsetDateTimeField.trace  org.joda.time.field.TestOffsetDateTimeField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestPreciseDateTimeField.trace  org.joda.time.field.TestPreciseDateTimeField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestPreciseDurationDateTimeField.trace  org.joda.time.field.TestPreciseDurationDateTimeField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestPreciseDurationField.trace  org.joda.time.field.TestPreciseDurationField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestScaledDurationField.trace  org.joda.time.field.TestScaledDurationField
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/field_traces/TestUnsupportedDateTimeField.trace  org.joda.time.field.TestUnsupportedDateTimeField




