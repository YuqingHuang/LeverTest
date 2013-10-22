# encoding: utf-8

Given /^我按下"([^\"]*)"按钮$/ do |identifier|
  "steps.touch('button[name=#{identifier}]')"
end

Given /^等待text"([^\"]*)"出来$/ do |identifier|
  "$.waitUntilFound('text[name=#{identifier}]')"
end

Given /^等待cell"([^\"]*)"出来滑动到可视$/ do |identifier|
  "$.waitUntilFound('cell[name=#{identifier}]').scrollToVisible()"
end

Given /^等待cell"([^\"]*)"出来后滑动到可视的时候点击$/ do |identifier|
  "$.waitUntilFound('cell[name=#{identifier}]').scrollToVisible().touch()"
end
