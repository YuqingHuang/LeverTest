# encoding: utf-8

Given /^我点击第"(\d+)"个选择框$/ do |checkboxNumber|
  
end

Given /^我在第"(\d+)"个输入框里输入"([^\"]*)"$/ do |number, text|
  "$('textfield')[#{number}].setValue(#{text})"
end

Given /^我在"([^\"]*)"里输入"([^\"]*)"$/ do |target, text|
  "UIATarget.localTarget().frontMostApp().mainWindow().textFields().firstWithName(#{target}).setValue(#{text})"
end

Given /^我清空第"(\d+)"个输入框的内容$/ do |id|
  "$('textfield')[#{number}].setValue('')"
end

Given /^我清空"([^\"]*)"$/ do |target|
  "UIATarget.localTarget().frontMostApp().mainWindow().textFields().firstWithName(#{target}).setValue('')"
end
