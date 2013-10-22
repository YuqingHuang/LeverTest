# encoding: utf-8
require 'calabash-android/calabash_steps'

Then /^我应该会看到"([^\"]*)"$/ do |identifier|
  custom_step(
    %Q|I should see \"#{identifier}\"|,
    %Q|测试失败: 文案 '#{identifier}' 没有找到|
  )
end

Then /^我看到"([^\"]*)"$/ do |identifier|
  custom_step(
    %Q|I should see \"#{identifier}\"|,
    %Q|测试失败: 文案 '#{identifier}' 没有找到|
  )
end

Then /^我应该会看到文本里包含"([^\"]*)"$/ do |identifier|
  custom_step(
    %Q|I should see text containing \"#{identifier}\"|,
    %Q|测试失败: 文案 '#{identifier}' 没有找到|
  )
end

Then /^我应该不会看到"([^\"]*)"$/ do |identifier|
  custom_step(
    %Q|I should not see \"#{identifier}\"|,
    %Q|测试失败: 文案 '#{identifier}' 没有找到|
  )
end

Then /^我不会看到"([^\"]*)"$/ do |identifier|
  custom_step(
    %Q|I should not see \"#{identifier}\"|,
    %Q|测试失败: 文案 '#{identifier}' 没有找到|
  )
end

