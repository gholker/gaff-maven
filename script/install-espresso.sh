#!/bin/sh

echo "Installing Espresso to Maven"
git clone https://code.google.com/p/android-test-kit/
( cd android-test-kit/bin ;

	mvn -q install:install-file \
		-Dfile=./espresso-dependencies/testrunner-1.1.jar \
		-DartifactId=espresso-runner \
		-Dversion=1.1 \
		-DgroupId=com.google.android \
		-Dpackaging=jar ;

	mvn -q install:install-file \
		-Dfile=./espresso-dependencies/espresso-1.1.jar \
		-DartifactId=espresso \
		-Dversion=1.1 \
		-DgroupId=com.google.android \
		-Dpackaging=jar \
		-DpomFile=../../script/espresso-1.1.pom ;

	mvn -q install:install-file \
		-Dfile=./espresso-dependencies/testrunner-runtime-1.1.jar \
		-DartifactId=espresso-runtime \
		-Dversion=1.1 \
		-DgroupId=com.google.android \
		-Dpackaging=jar ;
)
rm -rf android-test-kit