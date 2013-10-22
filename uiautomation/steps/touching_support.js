$.extend(steps, {
    input:function(name,value,timeout){
        $.waitUntilFound(name,timeout).input(value);
    },
    touch:function(name,timeout){
        $.waitUntilFound(name,timeout).touch(0.2);
    },
    longpress:function(name,timeout){
        $.waitUntilFound(name,timeout).touch(1.5);
    },
    tap:function(xpoint,ypoint){
        UIATarget.localTarget().tap({x:xpoint, y:ypoint });
    },
    waittosee:function(name,timeout){
        $.waitUntilFound(name,timeout);
    },
    wait:function(timeout){
        $.delay(timeout);
    },
    scrolltoandtouch:function(name,steps,errorMsg){
        $.scrollToFind(name,steps,errorMsg).touch(0.02);
    },
    shouldhave:function(name){
        if($(name).length==0){
            throw "Should have "+name+" but not";
        }
    },
    shouldsee:function(name){
        this.shouldhave(name);
    },
    shouldnothave:function(name){
        if($(name).length!=0){
            throw "Should not have "+name+" but see";
        }
    }
});
