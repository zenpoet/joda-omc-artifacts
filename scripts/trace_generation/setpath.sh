export JAVA_HOME=~/jdk1.7.0_80
export PATH=$JAVA_HOME/bin:$PATH
export maven_repo=~/.m2/repository
export java_slicer_home=~/omc/lib

export JODA_OMC_HOME=/home/stg/joda-omc-artifacts

if [ -z $project_home ]; then
	export project_home=$JODA_OMC_HOME
fi

export CLASSPATH=$project_home/target/test-classes:$project_home/target/classes:$maven_repo/org/joda/joda-convert/1.9.2/joda-convert-1.9.2.jar:$maven_repo/junit/junit/4.11/junit-4.11.jar:$maven_repo/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:$project_home

export TRACES=$JODA_OMC_HOME/traces/
export SLICES=$JODA_OMC_HOME/slices/

if [ ! -d $TRACES ]; then
	mkdir -p $TRACES
fi

if [ ! -d $SLICES ]; then
	mkdir -p $SLICES
fi
