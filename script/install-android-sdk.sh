#!/bin/sh

echo "Installing Android SDK dependencies to Maven"
git clone --depth 1 https://github.com/mosabua/maven-android-sdk-deployer.git
(   cd maven-android-sdk-deployer ;
    mvn install -P 4.4 )
rm -rf maven-android-sdk-deployer