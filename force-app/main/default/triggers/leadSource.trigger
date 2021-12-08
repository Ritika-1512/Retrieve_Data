trigger leadSource on Lead (before insert) {
    if(trigger.isbefore && trigger.isinsert){
     for (Lead ld : Trigger.new){
         if(ld.LeadSource == 'Web') {
             ld.OwnerId = '0052w000008LYWDAA4';
        }
         }
}
}