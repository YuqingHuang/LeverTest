# encoding: utf-8

When /^我点击后退按钮$/ do
  custom_step(
    'I go back',
    '测试失败: 后退失败'
  )
end

When /^我点击回车按钮$/ do
  custom_step(
    'I press the enter button',
    '测试失败: 点击回车失败'
  )
end
