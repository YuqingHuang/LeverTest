describe("Stay Connected feature", function() {

    it("View download screen from service summary", function() {
        
        // $.debug('text value:'+ UIATarget.localTarget().frontMostApp().mainWindow().elements().textFields());

        // UIATarget.localTarget().frontMostApp().mainWindow().elements().firstWithValueForKey("First View", "Text")
        // var array = $('element[value=First View]')
        
        var staticTexts = UIATarget.localTarget().frontMostApp().mainWindow().staticTexts()
        var textFields = UIATarget.localTarget().frontMostApp().mainWindow().textFields()

        var searchFields = textFields.toArray().concat(staticTexts.toArray());
        var fullTextSearchResult = false;
        for(var i =0; i<searchFields.length; i++){            
            if (searchFields[i].value()=="-1" ) {fullTextSearchResult = true; break}
        }
    
        expect(fullTextSearchResult).toEqual(false)   
        // UIATarget.localTarget().setDeviceOrientation(UIA_DEVICE_ORIENTATION_LANDSCAPELEFT)

        steps.wait(1)
        // var currentdate = new Date();
        // var currentdatetime =  currentdate.getDate() + "/"+(currentdate.getMonth()+1) 
        //                 + "/" + currentdate.getFullYear() + " @ " 
        //                 + currentdate.getHours() + ":" 
        //                 + currentdate.getMinutes() + ":" + currentdate.getSeconds();
        // UIATarget.localTarget().captureScreenWithName('YQSHOT-'+currentdatetime)
        // //...touching_support.rb       
        // UIATarget.localTarget().logElementTree()
        // UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].logElementTree()
        // UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].scrollDown()
        // $('tableview')[0].scrollDown()
        // $.waitUntilFound('button[name=button1]', 15) 
        
        // UIATarget.localTarget().logElementTree()
        // steps.touch('button[name=button1]')
        
        // // UIATarget.localTarget().frontMostApp().mainWindow().elements()["button1"]
        
        // steps.touch('text[name=1stView]')
        // UIATarget.localTarget().logElementTree()
        // UIATarget.localTarget().frontMostApp().mainWindow().elements()["anyView"].tap()
        // // steps.touch('view[name=anyView]')
        // steps.tap(16, 208)
        // // UIATarget.localTarget().frontMostApp().mainWindow().tap({x:185, y:290 })
        // steps.longpress('button[name=button2]')
        // UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells()[0].tap()// Given /^我按下列表项里的第"(\d+)"个$/ do |identifier|
        // UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells()[1].touchAndHold(1.5)

        // UIATarget.localTarget().frontMostApp().mainWindow().textFields().firstWithName("textField1").setValue('YQ')
        

        // $('textfield')[0].setValue('')
        

        
        
    })
   
})

