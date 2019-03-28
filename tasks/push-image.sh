#!/bin/bash -ex

cp artifacts/app.jar source-code/modules/$MODULE_NAME/
cd source-code
iotedgedev build --file ./deployment.template.json --platform amd64
iotedgedev push --no-build --file ./deployment.template.json --platform amd64
