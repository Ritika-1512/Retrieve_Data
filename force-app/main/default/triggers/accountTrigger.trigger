trigger accountTrigger on Account (before insert) {
    for(account acc : trigger.new){
        acc.Description ='test Description';
        insert acc;
    }

}