# encoding: utf-8

Given /^我点击第"(\d+)"个选择框$/ do |checkboxNumber|
  custom_step(
    %Q|I toggle checkbox number \"#{checkboxNumber}\"|,
    %Q|测试失败: 第 '#{checkboxNumber}' 选择框没有显示出来|
  )
end

Given /^我在第"(\d+)"个输入框里输入"([^\"]*)"$/ do |number, text|
  custom_step(
    %Q|I enter \"#{text}\" into input field number #{number}|,
    %Q|测试失败: 第 '#{number}' 输入框没有显示出来|
  )
end

Given /^我在"([^\"]*)"里输入"([^\"]*)"$/ do |target, text|
  custom_step(
    %Q|I enter  \"#{text}\" as  \"#{target}\"|,
    %Q|测试失败: 输入框 '#{target}' 没有显示出来|
  )
end

Given /^我清空第"(\d+)"个输入框的内容$/ do |id|
  custom_step(
    %Q|I clear input field number #{id}|,
    %Q|测试失败: 第 '#{id}' 输入框没有显示出来|
  )
end

Given /^我清空"([^\"]*)"$/ do |target|
  custom_step(
    %Q|I clear\"#{target}\"|,
    %Q|测试失败: 输入框 '#{target}' 没有显示出来|
  )
end
