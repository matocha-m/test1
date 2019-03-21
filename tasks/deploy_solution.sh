#!/bin/bash -ex

az login --service-principal -u $USERNAME -p $PASSWORD --tenant $AZ_AD
az extension add --name azure-cli-iot-ext
VERSION=v$(cat source-code/tag.txt)

#az iot edge deployment create -d test_$VERSION -n mm-iot-hub-test --content source-code/config/deployment.amd64.json --target-condition "deviceId='$DEVICE_ID'"
az iot edge set-modules --device-id $DEVICE_ID --hub-name mm-iot-hub-test --content source-code/config/deployment.amd64.json