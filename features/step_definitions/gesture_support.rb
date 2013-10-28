# encoding: utf-8

Then /^我向下滑动屏幕$/ do
  $('scrollview')[0].scrollDown()
end

Then /^我向上滑动屏幕$/ do
  $('scrollview')[0].scrollUp()
end

When /^我向右滑动屏幕$/ do
  $('scrollview')[0].scrollLeft()
end

When /^我向左滑动屏幕$/ do
  $('scrollview')[0].scrollRight()
end

Then /^我向下滑动列表$/ do
  $('tableview')[0].scrollDown()
end

Then /^我向上滑动列表$/ do
  $('tableview')[0].scrollUp()
end

When /^我向右滑动屏幕$/ do
  $('tableview')[0].scrollLeft()
end

When /^我向左滑动屏幕$/ do
  $('tableview')[0].scrollRight()
end