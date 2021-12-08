public class OpportunityTask {
    public static list<opportunity> oppMethod(){
        list<opportunity> oppList= new list<opportunity>([select Name, StageName, Type, CloseDate, Number_Type__c from Opportunity where Type='New Customer']);
        if(oppList.size() == 0){
            list<Opportunity> oppListwithnewCustomer=new list<opportunity>([select Name, StageName, Type, CloseDate, Number_Type__c from Opportunity where Type='Existing Customer - Upgrade' ]);
            return oppListwithnewCustomer;
        }
        else if(oppList.size() >= 1){
           list<Opportunity> oppListwithCustomer=new list<opportunity>([select Name, StageName, Type, CloseDate, Number_Type__c from Opportunity where Type='New Customer']);
            system.debug('Closed Date '+oppListwithCustomer);
             system.debug('System Date '+system.today());
            for(opportunity opplst : oppListwithCustomer){
                if(opplst.CloseDate == system.today()){
                    list<Opportunity> optListClose= new list<Opportunity>([select Name, StageName, Type, CloseDate, Number_Type__c from Opportunity ]);
                    return optListClose;
                    
                }
                
            }
           return oppListwithCustomer;
        }else{
            return oppList;
        }
    }

}