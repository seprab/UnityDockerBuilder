# !/bin/bash
# Official doc: https://docs.unity3d.com/2021.2/Documentation/Manual/ManagingYourUnityLicense.html

if [ "$#" -ne 4 ]; then
    echo "You have to use 4 arguments: container-install.sh <version> <license key> <username> <password>"
    exit 1
fi
/root/Unity/Hub/Editor/$1/Editor/Unity -quit -batchmode -returnlicense -username $2 $3 $4