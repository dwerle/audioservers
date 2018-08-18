#!/bin/bash

GROUP='org.jaudiolibs'
ARTIFACT_BASE='audioservers'
VERSION='1.2.0-SNAPSHOT'

for ARTIFACT in api jack javasound
	do
		mvn install:install-file -DgroupId=$GROUP -DartifactId=$ARTIFACT_BASE-$ARTIFACT -Dversion=$VERSION -Dfile="$ARTIFACT_BASE-$ARTIFACT/target/$ARTIFACT_BASE-$ARTIFACT-$VERSION.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=$1  -DcreateChecksum=true
	done
