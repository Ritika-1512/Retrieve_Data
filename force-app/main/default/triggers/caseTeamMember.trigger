trigger caseTeamMember on Case (after insert) {
    list<CaseTeamMember> ctm = new list<CaseTeamMember>();
        for(Case cs : trigger.new){
            if(cs.Origin == 'Email'){
                id csId = cs.Id;
                id uId = '0052w000008LYWDAA4';
                 CaseTeamMember cstm = new CaseTeamMember(TeamRoleId=uId);
                ctm.add(cstm);
  
            }
        insert ctm;
    }
}