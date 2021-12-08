({
	myAction : function(component, event, helper) {
        var params = event.getParam('arguments');
        if(params){
            var first = params.greeting;
            var second = params.name;
            alert(first + " " + second);
        }
		
	}
})