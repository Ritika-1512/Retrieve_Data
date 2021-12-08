({
	callingEvent : function(component, event, helper) {
        var evt=component.getEvent("auraEvt");
        console.log("gfhjjbhj");
        evt.setParams({
            "anyValue": "this is the text From any value"
        });
        evt.fire();
		
	}
})