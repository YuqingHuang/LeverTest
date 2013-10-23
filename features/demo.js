describe("Stay Connected feature", function() {

    it("View download screen from service summary", function() {
        //...touching_support.rb                
        
        $.waitUntilFound('button[name=button1]', 15) 
        
        UIATarget.localTarget().logElementTree()
        steps.touch('button[name=button1]')
        
        // UIATarget.localTarget().frontMostApp().mainWindow().elements()["button1"]
        
        steps.touch('text[name=1stView]')
        UIATarget.localTarget().logElementTree()
        UIATarget.localTarget().frontMostApp().mainWindow().elements()["anyView"].tap()
        // steps.touch('view[name=anyView]')
        steps.tap(16, 208)
        // UIATarget.localTarget().frontMostApp().mainWindow().tap({x:185, y:290 })
        steps.longpress('button[name=button2]')
        UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells()[0].tap()// Given /^我按下列表项里的第"(\d+)"个$/ do |identifier|

    
    })
   
})

