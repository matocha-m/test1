#!/bin/bash -ex
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:3.1.1:get -Dartifact=com.microsoft.azure.sdk.iot:iot-device-client:1.14.0 -DrepoUrl=https://repo.maven.apache.org/maven2/

cd source-code/modules/SampleModule
mvn clean install

NAME=`ls target/*.jar | cut -d '/' -f 2 | tail -n 1`

mv target/$NAME ../../../artifacts/app.jar
