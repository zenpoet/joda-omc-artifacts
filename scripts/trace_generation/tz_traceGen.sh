#!/bin/bash

#export JAVA_HOME=/home/zenpoet/jdk1.7.0_80
#export project_home=/home/zenpoet/OMC-FSE/subjects/joda_time
#export maven_repo=/home/zenpoet/.m2/repository
#export java_slicer_home=/home/zenpoet/OMC-FSE/tool/javaslicer/assembly
#export CLASSPATH=$project_home/target/test-classes:$project_home/target/classes:$maven_repo/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:$maven_repo/junit/junit/4.11/junit-4.11.jar:$maven_repo/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

export TRACES=$project_home/traces/tz_traces
mkdir -p TRACES

java -version
javac -version
mvn -version

java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestBuilder.trace  org.joda.time.tz.TestBuilder
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestCachedDateTimeZone.trace  org.joda.time.tz.TestCachedDateTimeZone
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestCompiler.trace  org.joda.time.tz.TestCompiler
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestFixedDateTimeZone.trace  org.joda.time.tz.TestFixedDateTimeZone
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestUTCProvider.trace  org.joda.time.tz.TestUTCProvider
java -Xmx7g -javaagent:$java_slicer_home/tracer.jar=tracefile:$TRACES/TestZoneInfoCompiler.trace  org.joda.time.tz.TestZoneInfoCompiler
