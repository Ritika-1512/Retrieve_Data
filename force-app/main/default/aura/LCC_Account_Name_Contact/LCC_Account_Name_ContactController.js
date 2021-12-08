({
	execute : function(component, event, helper) {
		// TODO: Review the migrated code
		var x;
x = ''+component.get('v.sObjectInfo.Account.Name')+'';
helper.showTextAlert(component, '!Account Name' + x);


	},

	accept : function(component, event, helper) {
		$A.get("e.force:closeQuickAction").fire();
	}
})