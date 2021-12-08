({
	handleEventApplication : function(component, event, helper) {
        console.log("parent c");
        var message = event.getParams("anyValue");
        component.set("v.eventhandler", message);
		
	}
})