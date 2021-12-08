public class accountSearch {
    @auraEnabled
     public static list<account> getAccountList(){
        list<account> accountList=new list<account>([select id, Name, Industry, Phone 
                                                     from account]);
        system.debug(accountList);
        return accountList;
    }

}