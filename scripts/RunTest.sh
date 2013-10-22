#! /bin/sh

XCODE_PATH=`xcode-select -print-path`
TRACETEMPLATE="/Applications/Xcode.app/Contents/Applications/Instruments.app/Contents/PlugIns/AutomationInstrument.bundle/Contents/Resources/Automation.tracetemplate"
BASE_TEST_SCRIPT=$1
APP_LOCATION=$2
DEVICE_ID=$3

arr=($@)
for i in "${arr[@]}"
do
  if [ "$i" == "-debug" ]; then
    DEBUG=true
  fi
done

if [ ! $# -gt 1 ]; then
	echo "You must specify the app location and the test file."
	echo "\t (optionally supply unique device ID of physical iOS device)"
	echo "\t eg. ./build.sh suite.js <xcodeproject directory>/build/Debug-iphonesimulator/myapp.app <device-udid>"
	exit -1
fi

# If running on device, only need name of app, full path not important
if [ ! "$DEVICE_ID" = "simulator" ]; then
  RUN_ON_SPECIFIC_DEVICE_OPTION="-w $DEVICE_ID"
  APP_LOCATION_FULL=$APP_LOCATION
  APP_LOCATION=`basename $APP_LOCATION`

  #intall app to device
  echo "******************install app to device"
  ./scripts/fruitstrap  -b $APP_LOCATION_FULL $DEVICE_ID
  echo "******************installed"
else
  echo Reset simulator
  osascript scripts/reset-simulator.scpt
fi

# Create test results directory
rm -rf test-results
mkdir test-results

# Generate test suites
echo Scanning test files...
find features -name '*.js' -exec echo \#import \"{}\" \; > suite.js
cat < ./support/imports.js > $BASE_TEST_SCRIPT
cat < suite.js >> $BASE_TEST_SCRIPT
cat < ./support/runner.js >> $BASE_TEST_SCRIPT
rm suite.js

# Kick off the instruments
echo instruments -t $TRACETEMPLATE $RUN_ON_SPECIFIC_DEVICE_OPTION $APP_LOCATION -e UIASCRIPT $BASE_TEST_SCRIPT -e UIARESULTSPATH test-results
time instruments -t $TRACETEMPLATE $RUN_ON_SPECIFIC_DEVICE_OPTION $APP_LOCATION -e UIASCRIPT $BASE_TEST_SCRIPT -e UIARESULTSPATH test-results

# cleanup the tracefiles produced from instruments
rm -rf *.trace

if [ ! $DEBUG ]; then
  #quite simulator
  echo quit simulator
  osascript -e 'tell app "iPhone Simulator" to quit'
fi

echo generate jasmine report
egrep '<string>(.+xml.+)</string' 'test-results/Run 1/Automation Results.plist' | sed 's/&lt;/</g' | sed 's/&gt;/>/g' | sed 's/\\n/,/g' | tr ',' '\n' | sed /xml/d | sed 's/\<string\>//' | sed 's/\<\/string\>//' | tr -d '\t' > test-results/report.xml

# fail script if any failures have been generated
if [ `grep "failures=\"[^0]\"" "test-results/Run 1/Automation Results.plist" | wc -l` -gt 0 ]; then
        echo 'Build Failed.'
        exit 1
else
        echo 'Build Passed.'
        exit 0
fi
