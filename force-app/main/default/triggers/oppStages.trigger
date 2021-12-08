trigger oppStages on Opportunity (before update) {
    for(Opportunity opp : trigger.new){
        if(opp.StageName == 'Closed Won' ){
            opp.CloseDate = system.today();
            opp.Type='New Customer';
        }
    }
    
}