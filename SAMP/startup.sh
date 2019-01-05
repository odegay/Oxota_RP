#!/usr/bin/env sh

export JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk-i386/jre

if [ -z "$JRE_HOME" ]; then
	echo "Please edit the startup.sh file and add your JRE installation path to line 1 and remove the # character."
	exit 1
fi

export LD_LIBRARY_PATH=.:$JRE_HOME/lib/i386:$JRE_HOME/lib/i386/client:$JRE_HOME/lib/i386/server:/usr/local/lib
cp /app/samp03/shoebill/bootstrap/test/shoebill-runtime-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-api-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-common-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-runtime-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-utilities-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/util-event-2.0-RC.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/kotlin-stdlib-1.1.51.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/slf4j-log4j12-1.7.25.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/slf4j-api-1.7.5.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/org.apache.log4j-1.2.13.v200706111418.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/snakeyaml-1.19.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/commons-lang3-3.8.1.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-launcher-2.0.jar /usr/lib/jvm/default-java/jre/lib/ext/
cp /app/samp03/shoebill/bootstrap/test/shoebill-dependency-manager-2.0.jar /usr/lib/jvm/default-java/jre/lib/ext/

./samp03svr
