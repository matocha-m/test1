#!/bin/bash -ex
ls -la
cd source-code/modules/SampleModule
ls -la
mvn clean install

NAME=`ls target/*.jar | cut -d '/' -f 2 | tail -n 1`

mv target/$NAME ../../../artifacts/app.jar
