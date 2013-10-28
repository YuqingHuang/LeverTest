# encoding: utf-8

Then /^我截取屏幕图片$/ do
   "var currentdate = new Date();
   	var currentdatetime =  currentdate.getDate() + '/'
   						+ (currentdate.getMonth()+1) + '/'' 
   						+ currentdate.getFullYear() + ' @ ' 
                        + currentdate.getHours() + ':' 
                        + currentdate.getMinutes() + ':' 
                        + currentdate.getSeconds();
	UIATarget.localTarget().captureScreenWithName('screenshot-' + currentdatetime');" 
end
