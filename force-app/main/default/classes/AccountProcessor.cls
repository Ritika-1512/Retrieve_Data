public class AccountProcessor {
    @future
    public static void countContacts(set<id> accId){
        list<Account> acc=[select id, Number_Of_Contacts__c,(select id from Contacts) from Account where id in:accId];
        list<Account> upAcc=new list<Account>();
        for(Account a: acc){
            a.Number_Of_Contacts__c= a.contacts.size();
            upAcc.add(a);
        }
        update upAcc;
    }

}