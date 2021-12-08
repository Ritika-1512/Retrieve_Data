public class caseTask {
    public static void insertCase(id accId, id conId){
        Case cases = new Case();
        cases.Origin = ('Web');
        cases.Status = ('New');
        cases.AccountId = accId;
        cases.ContactId = conId;
        cases.Type = ('Problem');
        if(cases.Type == null){
            system.debug('Please inter case type');
        }
        else{
            system.debug('Case created successfully');
        }
        insert cases;
       system.debug(cases);
    }

}