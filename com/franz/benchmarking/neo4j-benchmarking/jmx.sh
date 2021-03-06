#!/bin/bash

# Find Java
if [ "$JAVA_HOME" = "" ] ; then
	JAVA="java"
else
	JAVA="$JAVA_HOME/bin/java"
fi

# Set Java options
if [ "$JAVA_OPTIONS" = "" ] ; then
	JAVA_OPTIONS="-Xms32M -Xmx32M"
fi

DIR=`dirname $0`

# Launch the application
$JAVA $JAVA_OPTIONS -cp $DIR/target/classes:$DIR/"target/dependency/*" com.franz.benchmarking.JmxClient $*

# Return the program's exit code
exit $?
