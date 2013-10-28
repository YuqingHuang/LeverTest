# encoding: utf-8

When /^我把手机调整为横屏$/ do
  "UIATarget.localTarget().setDeviceOrientation(UIA_DEVICE_ORIENTATION_LANDSCAPELEFT)"
end

When /^我把手机调整为竖屏$/ do
  "UIATarget.localTarget().setDeviceOrientation(UIA_DEVICE_ORIENTATION_PORTRAIT)"
end
