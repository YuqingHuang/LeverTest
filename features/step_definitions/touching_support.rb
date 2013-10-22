# encoding: utf-8

Given /^我按下"([^\"]*)"按钮$/ do |identifier|
  "steps.touch('button[name=#{identifier}]')"
end

# Given /^我按下第"(\d+)"个按钮$/ do |identifier|
#   custom_step(
#     %Q|I press button number #{identifier} button|,
#     "测试失败: 第 '#{identifier}' 个按钮没有被按下"
#   )
# end

# Given /^我按下第"(\d+)"个图标按钮$/ do |identifier|
#   custom_step(
#     %Q|I press image button number #{identifier} button|,
#     "测试失败: 第 '#{identifier}' 个图标按钮没有被按下"
#   )
# end

Given /^我点击"([^\"]*)"文本$/ do |identifier|
  "steps.touch('text[name=#{identifier}]')"
end

Given /^我点击标识为"([^\"]*)"的视图$/ do |identifier|
  "steps.touch('view[name=#{identifier}]')"
  # does not work
  # UIATarget.localTarget().frontMostApp().mainWindow().elements()["anyView"].tap()
end

Given /^我按下列表项里的第"(\d+)"个$/ do |identifier|
  # "UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells()[#{identifier}].tap()"
  
end

Given /^我长按列表项里的第"(\d+)"个$/ do |identifier|
  # "UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells()[#{identifier}].touch(1.5)"
end

Given /^我在屏幕上点击左面的 "(\d+)"% 和上面的 "(\d+)"% $/ do |x, y|
  "steps.tap(#{x}, #{y})"
end
