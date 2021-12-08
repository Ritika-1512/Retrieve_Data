trigger updatePhone on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete)
{
    if(trigger.isBefore ){
    }
    else if(trigger.isAfter){
        if(trigger.isUpdate){
            contactTriggerHandler.afterUpdateHelper(trigger.new);
        }
    }
}