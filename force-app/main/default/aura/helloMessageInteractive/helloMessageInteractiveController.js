({
	handleClick : function(component, event, helper) {
        var btnClicked=event.getsource();
        var btnMessage=btnClicked.get("v.label");
        component.set("v.message", btnMessage);
		
	}
})