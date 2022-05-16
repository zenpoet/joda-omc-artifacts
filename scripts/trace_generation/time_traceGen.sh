#!/bin/bash

#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
#export CLASSPATH=/media/soneya/extradrive1/OMC/joda_time_qual/target/test-classes:/media/soneya/extradrive1/OMC/joda_time_qual/target/classes:/home/soneya/.m2/repository/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:/home/soneya/.m2/repository/junit/junit/4.11/junit-4.11.jar:/home/soneya/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:/media/soneya/extradrive1/OMC/joda_time_qual/target/test-classes/tzdata

. setpath.sh

mkdir -p $TRACES/time_traces

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDate_Basics.trace  org.joda.time.TestLocalDate_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeZoneCutover.trace  org.joda.time.TestDateTimeZoneCutover
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeZone.trace  org.joda.time.TestDateTimeZone
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestAbstractPartial.trace  org.joda.time.TestAbstractPartial
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestBasePartial.trace  org.joda.time.TestBasePartial
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestBaseSingleFieldPeriod.trace  org.joda.time.TestBaseSingleFieldPeriod
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestChronology.trace  org.joda.time.TestChronology
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateMidnight_Basics.trace  org.joda.time.TestDateMidnight_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`




java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateMidnight_Constructors.trace  org.joda.time.TestDateMidnight_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateMidnight_Properties.trace  org.joda.time.TestDateMidnight_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTime_Basics.trace  org.joda.time.TestDateTime_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTime_Constructors.trace  org.joda.time.TestDateTime_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTime_Properties.trace  org.joda.time.TestDateTime_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`


java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeComparator.trace  org.joda.time.TestDateTimeComparator
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeConstants.trace  org.joda.time.TestDateTimeConstants
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeFieldType.trace  org.joda.time.TestDateTimeFieldType
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDateTimeUtils.trace  org.joda.time.TestDateTimeUtils
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`



java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDays.trace  org.joda.time.TestDays
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDuration_Basics.trace  org.joda.time.TestDuration_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDuration_Constructors.trace  org.joda.time.TestDuration_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDurationField.trace  org.joda.time.TestDurationField
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestDurationFieldType.trace  org.joda.time.TestDurationFieldType
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestHours.trace  org.joda.time.TestHours
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestIllegalFieldValueException.trace  org.joda.time.TestIllegalFieldValueException
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestInstant_Basics.trace  org.joda.time.TestInstant_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestInstant_Constructors.trace  org.joda.time.TestInstant_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestInterval_Basics.trace  org.joda.time.TestInterval_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestInterval_Constructors.trace  org.joda.time.TestInterval_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDate_Constructors.trace  org.joda.time.TestLocalDate_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDate_Properties.trace  org.joda.time.TestLocalDate_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDateTime_Basics.trace  org.joda.time.TestLocalDateTime_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDateTime_Constructors.trace  org.joda.time.TestLocalDateTime_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalDateTime_Properties.trace  org.joda.time.TestLocalDateTime_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalTime_Basics.trace  org.joda.time.TestLocalTime_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalTime_Constructors.trace  org.joda.time.TestLocalTime_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestLocalTime_Properties.trace  org.joda.time.TestLocalTime_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMinMaxLong.trace  org.joda.time.TestMinMaxLong
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMinutes.trace  org.joda.time.TestMinutes
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMonthDay_Basics.trace  org.joda.time.TestMonthDay_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`


java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMonthDay_Constructors.trace  org.joda.time.TestMonthDay_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMonthDay_Properties.trace  org.joda.time.TestMonthDay_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMonths.trace  org.joda.time.TestMonths
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableDateTime_Adds.trace  org.joda.time.TestMutableDateTime_Adds
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableDateTime_Basics.trace  org.joda.time.TestMutableDateTime_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableDateTime_Constructors.trace  org.joda.time.TestMutableDateTime_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableDateTime_Properties.trace  org.joda.time.TestMutableDateTime_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableDateTime_Sets.trace  org.joda.time.TestMutableDateTime_Sets
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableInterval_Basics.trace  org.joda.time.TestMutableInterval_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableInterval_Constructors.trace  org.joda.time.TestMutableInterval_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutableInterval_Updates.trace  org.joda.time.TestMutableInterval_Updates
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`


java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutablePeriod_Basics.trace  org.joda.time.TestMutablePeriod_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutablePeriod_Constructors.trace  org.joda.time.TestMutablePeriod_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestMutablePeriod_Updates.trace  org.joda.time.TestMutablePeriod_Updates
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPartial_Basics.trace  org.joda.time.TestPartial_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPartial_Constructors.trace  org.joda.time.TestPartial_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPartial_Match.trace  org.joda.time.TestPartial_Match
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPartial_Properties.trace  org.joda.time.TestPartial_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPeriod_Basics.trace  org.joda.time.TestPeriod_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPeriod_Constructors.trace  org.joda.time.TestPeriod_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestPeriodType.trace  org.joda.time.TestPeriodType
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestSeconds.trace  org.joda.time.TestSeconds
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestSerialization.trace  org.joda.time.TestSerialization
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestStringConvert.trace  org.joda.time.TestStringConvert
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestTimeOfDay_Basics.trace  org.joda.time.TestTimeOfDay_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestTimeOfDay_Constructors.trace  org.joda.time.TestTimeOfDay_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestTimeOfDay_Properties.trace  org.joda.time.TestTimeOfDay_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestWeeks.trace  org.joda.time.TestWeeks
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonth_Basics.trace  org.joda.time.TestYearMonth_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonth_Constructors.trace  org.joda.time.TestYearMonth_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonth_Properties.trace  org.joda.time.TestYearMonth_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonthDay_Basics.trace  org.joda.time.TestYearMonthDay_Basics
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonthDay_Constructors.trace  org.joda.time.TestYearMonthDay_Constructors
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYearMonthDay_Properties.trace  org.joda.time.TestYearMonthDay_Properties
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestYears.trace  org.joda.time.TestYears
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/time_traces/TestBasePartial.trace  org.joda.time.TestBasePartial
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.

start=`date +%s`
