#!/bin/sh

echo "link zipalign"
rm $ANDROID_HOME/tools/zipalign
ln -s $ANDROID_HOME/build-tools/20.0.0/zipalign $ANDROID_HOME/tools/zipalign

./script/install-android-sdk.sh
./script/install-espresso.sh
