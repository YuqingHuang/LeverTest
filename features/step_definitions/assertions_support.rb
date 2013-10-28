# encoding: utf-8
require 'calabash-android/calabash_steps'

Then /^我应该会看到"([^\"]*)"$/ do |identifier|  
  "
  var staticTexts = UIATarget.localTarget().frontMostApp().mainWindow().staticTexts()
  var textFields = UIATarget.localTarget().frontMostApp().mainWindow().textFields()

  var searchFields = textFields.toArray().concat(staticTexts.toArray());
  var fullTextSearchResult;
  for(var i =0; i<searchFields.length; i++){            
      if (searchFields[i].value() == #{identifier}) {fullTextSearchResult = true; break}
  }

  expect(fullTextSearchResult).toEqual(true)   
  "   
end

Then /^我应该会看到文本里包含"([^\"]*)"$/ do |identifier|
  "
  var staticTexts = UIATarget.localTarget().frontMostApp().mainWindow().staticTexts()
  var textFields = UIATarget.localTarget().frontMostApp().mainWindow().textFields()

  var searchFields = textFields.toArray().concat(staticTexts.toArray());
  var fullTextSearchResult;
  for(var i =0; i<searchFields.length; i++){            
     if (searchFields[i].value().indexOf(#{identifier}) !=-1 ) {fullTextSearchResult = true; break}
  }

  expect(fullTextSearchResult).toEqual(true)   
  "   
end

Then /^我应该不会看到"([^\"]*)"$/ do |identifier|
  "
  var staticTexts = UIATarget.localTarget().frontMostApp().mainWindow().staticTexts()
  var textFields = UIATarget.localTarget().frontMostApp().mainWindow().textFields()

  var searchFields = textFields.toArray().concat(staticTexts.toArray());
  var fullTextSearchResult = false;
  for(var i =0; i<searchFields.length; i++){            
      if (searchFields[i].value() == #{identifier}) {fullTextSearchResult = true; break}
  }

  expect(fullTextSearchResult).toEqual(false)   
  "   
end


