public class accountToContact {
    @auraEnabled
    public static id accMethod(string Name){
       Account acc= new Account();
        acc = [select id from account where name =: Name limit 1];
       return acc.id;    
    }
    @auraEnabled
    public static list<Contact> conMethod(id a){
        list<Contact> con = new list<Contact>();
        con = [select lastName, firstName from contact where AccountId =: a];
        return con;
    }
    @auraEnabled
    public static list<opportunity> oppMethod(id a){
        list<opportunity> oppty= new list<opportunity>();
        oppty = [select Name, StageName, CloseDate from opportunity where AccountId =: a];
        return oppty;
    }
    
}