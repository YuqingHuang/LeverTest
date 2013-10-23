//Extend $
$.extend($, {
	waitUntilFound: function(name, timeoutInSeconds, throwException) {
		var elements = null;
		//try 20 seconds by default
		timeoutInSeconds = timeoutInSeconds == null ? 20 : timeoutInSeconds;
		var delay = 0.5;

		var maxRetry = Math.max(1, timeoutInSeconds / delay);

		$.debug("Load " + name);
		for (var i = maxRetry; i > 0; i--) {			
			var elements = $('window').find(name);
			// var elements = UIATarget.localTarget().frontMostApp().mainWindow().elements()[name];	
			if (elements.length > 0) {
				break;
			} else if (i == 1) {
				if (throwException == false) {
					elements = null;
				} else {
					throw ("Element \"" + name + "\" failed to become valid within " + timeoutInSeconds + " seconds.");
				}
			}
			$.delay(delay);
		}
		return elements;
	},
	waitUntilDisappear: function(name, timeoutInSeconds, throwException) {
		var elements = null;
		//try 20 seconds by default
		timeoutInSeconds = timeoutInSeconds == null ? 20 : timeoutInSeconds;
		var delay = 0.5;

		var maxRetry = Math.max(1, timeoutInSeconds / delay);

		for (var i = maxRetry; i > 0; i--) {
			var elements = $('window').find(name);

			if (elements.length == 0 || !elements.first().isVisible()) {
				break;
			} else if (i == 1) {
				if (throwException == false) {
					elements = null;
				} else {
					throw ("Element \"" + name + "\" failed to become valid within " + timeoutInSeconds + " seconds.");
				}
			}
			$.delay(delay);
		}
		return elements;
	},
	waitUntilFoundOrNil: function(name, timeoutInSeconds) {
		return this.waitUntilFound(name, timeoutInSeconds, false);
	},
	touchIfFound: function(name, timeoutInSeconds) {
		var elements= this.waitUntilFound(name, timeoutInSeconds, false);
		if(elements!=null && elements.length>0){
			elements.touch();
		}
	},
	scrollToFind:function(name,steps,errorMsg){
		var elements=$(name);
		if(elements.length>0){
			return elements;
		}
		
		steps=steps==null?5:steps;
		//Try to find in table
		var visibleTable=null;
		$("tableview").each(function(){
			if(this.isVisible()){
				for(var i=0;i<steps;i++){
					this.scrollDown();
					
					elements = $(name);
					if(elements.length>0){
						i=steps+1;
						return false;
					}
				}
			};
		});
		if(!elements){
			//Try in scrollview then
			$("scrollview").each(function(){
				if(this.isVisible()){
					for(var i=0;i<steps;i++){
						this.scrollDown();
						elements = $(name);
						if(elements.length>0){
							i=steps+1;
							return false;
						}
					}
				};
			});	
		}
		if(!elements){
			throw errorMsg==null? name+" not found": errorMsg;
		}
		return elements;
	}
});

var steps ={
}
