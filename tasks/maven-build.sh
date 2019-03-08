#!/bin/bash -ex

cd source-code

mvn clean install

NAME=`ls target/*.jar | cut -d '/' -f 2 | rev | cut -c 5- | rev`-`date +%s%N`

mv manifest.yml ../artifacts/
mv target/*.jar ../artifacts/
tar cvf $NAME.tar -C ../artifacts/ .
mv $NAME.tar ../artifacts/
