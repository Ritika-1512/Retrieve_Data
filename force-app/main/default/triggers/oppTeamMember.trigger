trigger oppTeamMember on Opportunity (after insert) {
    list<OpportunityTeamMember> otm = new list<OpportunityTeamMember>();
   
        for(Opportunity opp : trigger.new){
            if(opp.Amount >= 5000000){
                id opId = opp.Id;
                id uId = '0052w000008LYWDAA4';
                 OpportunityTeamMember optm = new OpportunityTeamMember(OpportunityId=opId,UserId=uId);
                otm.add(optm);
            }
        
        insert otm;
    }
}