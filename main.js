// load dependencies
// Jasmine test and reprot utils
#import "uiautomation/ext/jasmine-uiautomation.js"
#import "uiautomation/ext/jasmine-reporters/ext/jasmine.js"
#import "uiautomation/ext/reporter/jasmine.uiautomation_junit_reporter.js"
#import "uiautomation/ext/jasmine-main-thread.js"

// json tool
#import "uiautomation/ext/json2.js"
// mechanic.js, jquery like syntax
#import "uiautomation/ext/mechanic.js"

// load extensions
#import "uiautomation/steps/features-ext.js"
#import "uiautomation/steps/touching_support.js"
#import "features/demo.js"
#import "features/demo_assertion.js"
#import "features/demo_navigation.js"
// Setup and run
jasmine.getEnv().addReporter(new jasmine.JUnitXmlReporter());
jasmine.getEnv().execute();
