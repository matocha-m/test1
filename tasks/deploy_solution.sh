#!/bin/bash -ex

az login --service-principal -u $USERNAME -p $PASSWORD --tenant $AZ_AD
az extension add --name azure-cli-iot-ext
VERSION=v$(cat source-code/tag.txt)
echo "deviceId='"$DEVICE_ID"'" > temp.txt
cat temp.txt
az iot edge deployment create -d test_$VERSION -n mm-iot-hub-test --content source-code/config/deployment.amd64.json --target-condition $(cat temp.txt)