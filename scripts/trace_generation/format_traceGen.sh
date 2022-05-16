#!/bin/bash

#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
#export CLASSPATH=/media/soneya/extradrive1/OMC/joda_time_qual/target/test-classes:/media/soneya/extradrive1/OMC/joda_time_qual/target/classes:/home/soneya/.m2/repository/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:/home/soneya/.m2/repository/junit/junit/4.11/junit-4.11.jar:/home/soneya/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

mkdir -p $TRACES/format_traces

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestDateTimeParserBucket.trace  org.joda.time.format.TestDateTimeParserBucket
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestISODateTimeFormat.trace  org.joda.time.format.TestISODateTimeFormat
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestISODateTimeFormat_Fields.trace  org.joda.time.format.TestISODateTimeFormat_Fields
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestISODateTimeFormatParsing.trace  org.joda.time.format.TestISODateTimeFormatParsing
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestISOPeriodFormat.trace  org.joda.time.format.TestISOPeriodFormat
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestISOPeriodFormatParsing.trace  org.joda.time.format.TestISOPeriodFormatParsing
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestPeriodFormat.trace  org.joda.time.format.TestPeriodFormat
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestPeriodFormatParsing.trace  org.joda.time.format.TestPeriodFormatParsing
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestPeriodFormatter.trace  org.joda.time.format.TestPeriodFormatter
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestPeriodFormatterBuilder.trace  org.joda.time.format.TestPeriodFormatterBuilder
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestTextFields.trace  org.joda.time.format.TestTextFields

#not all tests traces are generated due to Method code too large! Error, only partially done
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestDateTimeFormat.trace  org.joda.time.format.TestDateTimeFormat
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestDateTimeFormatStyle.trace  org.joda.time.format.TestDateTimeFormatStyle
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestDateTimeFormatter.trace  org.joda.time.format.TestDateTimeFormatter
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/format_traces/TestDateTimeFormatterBuilder.trace  org.joda.time.format.TestDateTimeFormatterBuilder

