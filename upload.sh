#!/bin/bash

#VersionString=`grep -E 's.version.*=' SOCLive_BaseLib.podspec`
#VersionNumber=`tr -cd 0-9 <<<"$VersionString"`
#
#NewVersionNumber=$(($VersionNumber + 1))
#LineNumber=`grep -nE 's.version.*=' SOCLive_BaseLib.podspec | cut -d : -f1`
#sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" SOCLive_BaseLib.podspec
#
#echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"
#
#git add .
#git commit -am ${NewVersionNumber}
#git tag ${NewVersionNumber}
#git push origin master --tags
#pod repo push ROSPrivatePods SOCLive_BaseLib.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

git add .
git commit -am '0.1.1'
git tag 0.1.1
git push origin master --tags

#pod lib lint RCBaseLib.podspec --allow-warnings --use-libraries
pod repo push RCPrivatePods RCBaseLib.podspec --verbose --allow-warnings --use-libraries --use-modular-headers --skip-import-validation
