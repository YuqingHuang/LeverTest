# encoding: utf-8

When /^我进入第"(\d+)"个Tab$/ do |number|
  "$('tabbar')[0].buttons()[#{number}].tap()"
end

When /^我点击后退按钮$/ do
  "$('navigationBar')[0].buttons()['Back'].tap()"
end

When /^我点击Home按钮，在"(\d+)"秒后重新打开应用$/ do |seconds|
  "UIATarget.localTarget().deactivateAppForDuration(#{seconds})"  
end

When /^我点击回车按钮$/ do
  "UIATarget.localTarget().frontMostApp().keyboard().buttons()['Return'].tap()"
end
