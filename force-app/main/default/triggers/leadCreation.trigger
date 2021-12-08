trigger leadCreation on Lead (before insert) {
    for(lead ld:trigger.new){
        if(ld.LeadSource == 'Web'){
            ld.Rating ='Cold';
                }
        else{ld.Rating='Hot';
                    
                }
    }
    

}