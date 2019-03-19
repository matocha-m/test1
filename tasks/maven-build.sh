#!/bin/bash -ex
ls -la
cd source-code/modules/SampleModule
ls -la
mvn clean install

NAME=`ls target/*.jar | cut -d '/' -f 2 | rev | cut -c 5-`

mv target/*.jar ../../../artifacts/
tar cvf $NAME.tar -C ../../../artifacts/ .
mv $NAME.tar ../../../artifacts/
