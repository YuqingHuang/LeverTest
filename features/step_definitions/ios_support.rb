# encoding: utf-8

Given /^IOS-我按下"([^\"]*)"按钮$/ do |identifier|
  "steps.touch('button[name=#{identifier}]')"
end

Given /^IOS-等待text"([^\"]*)"出来$/ do |identifier|
  "$.waitUntilFound('text[name=#{identifier}]')"
end

Given /^IOS-等待cell"([^\"]*)"出来滑动到可视$/ do |identifier|
  "$.waitUntilFound('cell[name=#{identifier}]').scrollToVisible()"
end

Given /^IOS-等待cell"([^\"]*)"出来后滑动到可视的时候点击$/ do |identifier|
  "$.waitUntilFound('cell[name=#{identifier}]').scrollToVisible().touch()"
end


        #steps.touch('button[name=Add]')
		#$.waitUntilFound('cell[name=单元 1]').scrollToVisible().touch()
		#$.waitUntilFound('text[name=单元 1 的详情]')
        #steps.touch('button[name=Master]')
        #$.waitUntilFound('cell[name=单元 1]').scrollToVisible()

