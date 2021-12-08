({
	myAction : function(component, event, helper) {
       
        var principle=parseFloat(component.get('v.principle'));
        var rate=parseFloat(component.get('v.rate'));
        var time=parseFloat(component.get('v.time'));
        var interest = (principl*time*rate)/100;
         component.set("v.interest", interest);
        var amount= principle + interest;
        component.set("v.amount", amount);
		
	}
})