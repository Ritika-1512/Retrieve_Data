public class OppWithAcc {
    public static id accMethod(string name){
        Account acc= new Account();
        acc = [select id, Name, Type from account ];
       return acc.id; 
    }
    public static list<opportunity> oppMethod(id a){
        list<opportunity> oppty= new list<opportunity>();
        oppty = [select Name, StageName, CloseDate from opportunity where AccountId =: a];
        return oppty;
    }

}