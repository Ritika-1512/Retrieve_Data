({
    accListFun : function(component, event, helper){
        var button = component.get('c.getAccountList');
        var self = this; 
        button.setCallback(this, function(actionResult){
            component.set('v.contactList', actionResult.getReturnValue());
        });
        $A.enqueueAction(button);
        
    },
	doInit : function(component, event, helper) {
        /*step1*/
       var action=component.get('c.getContactList')
       //optional /* step2*/
       action.setParams({
           accountId : component.get("v.recordId"),
       });
       /*step4*/
       action.setCallback(this, function(response){
           var responseValue = response.getReturnValue();
           console.log('response', responseValue);
           component.set('v.contactList', responseValue);
       });
       /*step3*/
        $A.enqueueAction(action, false);

	},
    
    doRedirect : function(component, event, helper) {
        var eventSource = event.getSource();
        var id = eventSource.get('v.name');
        alert(id);
    
},
})