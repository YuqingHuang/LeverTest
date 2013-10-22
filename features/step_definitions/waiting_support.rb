# encoding: utf-8

Then /^我等弹出窗口关闭$/ do
  "$.waitUntilDisappear('popover')"  
end

Given /^我等待"([^\"]*)"按钮显示出来$/ do |identifier|
  "$.waitUntilFound('button[name=#{identifier}]')"
end

Then /^我等待文本"([^\"]*)"$/ do |text|
  "$.waitUntilFound('text[name=#{text}]')"
end

Then /^我用最多"(\d+)"秒等待文本"([^\"]*)"显示出来$/ do |seconds, text|
  "$.waitUntilFound('text[name=#{text}]', seconds)"
end

Then /^我等待标识为"([^\"]*)"的视图显示出来$/ do |identifier|
  "$.waitUntilFound('view[name=#{identifier}]')"
  # does not work
end

Then /^我等了"(\d+)"秒$/ do |seconds|
  "steps.wait(#{seconds})"
end
