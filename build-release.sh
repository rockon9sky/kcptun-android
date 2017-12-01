#!/bin/bash
export ANDROID_HOME=$HOME/android/tools/sdk
#ANDROID_NDK_HOME to /path/to/android-ndk
export GOROOT_BOOTSTRAP=/usr/lib/golang
cp ../local.properties ./
git submodule update --init --recursive

# Build the App
sbt clean go-build android:package-release
