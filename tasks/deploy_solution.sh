az login -u $USERNAME -p $PASSWORD
az extension add --name azure-cli-iot-ext
VERSION=`cat source-code/tag.txt`
az iot edge deployment create -d test_$VERSION -n mm-iot-hub-test --content source-code/config/deployment.amd64.json --target-condition="deviceId=''$DEVICE_ID''"