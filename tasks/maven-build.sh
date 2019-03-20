#!/bin/bash -ex

cd source-code/modules/$MODULE_NAME
mvn clean install

NAME=`ls target/*.jar | cut -d '/' -f 2 | grep 'with-deps.jar$'`

mv target/$NAME ../../../artifacts/app.jar
