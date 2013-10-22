# encoding: utf-8

Then /^我向下滑动屏幕$/ do
  custom_step(
    'I scroll down',
    '测试失败: 滑动屏幕失败'
  )
end

Then /^我向上滑动屏幕$/ do
  custom_step(
    'I scroll up',
    '测试失败: 滑动屏幕失败'
  )
end

When /^我向右滑动屏幕$/ do
  custom_step(
      'I swipe left',
      '测试失败: 滑动失败'
  )
end

When /^我向左滑动屏幕$/ do
  custom_step(
      'I swipe right',
      '测试失败: 滑动失败'
  )
end