#!/bin/sh

echo no | android create avd --force -n test -t android-19 --abi x86
emulator -avd test -no-skin -no-audio -no-window &
./script/android-wait-for-emulator.sh
adb shell input keyevent 82 &