#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "You have to use 4 arguments: container-install.sh <version> <license key> <username> <password>"
    exit 1
fi
echo "Hello!"

# Activate Unity license
echo "Attempting to activate the editor license"
/root/Unity/Hub/Editor/$1/Editor/Unity \
  -createProject /tmp/LicenseActivationProject \
  -nographics \
  -batchmode \
  -serial $2 \
  -username $3 \
  -password $4 \
  -logfile - \
  -quit | tee ~/license-activation.log