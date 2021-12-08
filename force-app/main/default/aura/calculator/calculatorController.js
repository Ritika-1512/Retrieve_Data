({
	addfunction : function(component, event, helper) {
        var num1= component.get("v.num1");
        var num2= component.get("v.num2");
        var sum= parseInt(num1) + parseInt(num2);
        component.set("v.result", sum);
		
	},
    subfunction : function(component, event, helper) {
        var num1= component.get("v.num1");
        var num2= component.get("v.num2");
        var sub= parseInt(num1) - parseInt(num2);
        component.set("v.result", sub);
    
    },
    mulfunction : function(component, event, helper) {
        var num1= component.get("v.num1");
        var num2= component.get("v.num2");
        var mul= parseInt(num1) * parseInt(num2);
        component.set("v.result", mul);
    },
    divfunction : function(component, event, helper) {
        var num1= component.get("v.num1");
        var num2= component.get("v.num2");
        var div= parseInt(num1) / parseInt(num2);
        component.set("v.result", div);
    },
})