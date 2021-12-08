({
	myAction : function(component, event, helper) {
		var searchAcc= component.find("accName").get("v.value");
        //component.set('v.accName');
       // var button=component.find("button").get("v.value");
       var action =component.get("c.getAccountList");
        action.setParams({
            "searchAcc":accName
        });
       action.setCallback(this, function(response){
            //var state =response.getState();
            //if(state =='SUCCESS'){
                component.set('v.accountList', response.getReturnValue());
            });
	
    $A.enqueueAction(action);
        }
})