#! /bin/sh

APP_PATH="Release-iphonesimulator/LeverTest.app"
APP_TARGET="LeverTest"

# go to the project folder and build
if [ ! "$1" == "-skipbuild" ]; then
shift
xcodebuild -target "$APP_TARGET" -sdk iphonesimulator clean build
fi

CURRENT_PATH=`pwd -P`

echo "app is $CURRENT_PATH/build/$APP_PATH"
./scripts/RunTest.sh main.js "$CURRENT_PATH/build/$APP_PATH" simulator $@
