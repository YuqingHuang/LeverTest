# encoding: utf-8

When /^我把手机调整为横屏$/ do
  custom_step(
    'I rotate the device to landscape',
    '测试失败: 调整屏幕失败'
  )
end

When /^我把手机调整为竖屏$/ do
  custom_step(
    'I rotate the device to portrait',
    '测试失败: 调整屏幕失败'
  )
end
