public class accountHandler {
    public static void afterUpdate(map<Id, Account> oldmap , map<Id, Account> newmap){
        list<Id> acc=new list<Id>();
        for(Id key: oldmap.keyset()){
            Account old=oldmap.get(key);
            account newAcc = newmap.get(key);
            if(old.Phone!=newAcc.Phone){
                acc.add(key);
            }
        }
        list<contact> contactList=[select AccountId, Phone from contact];
        for(contact c: contactList){
            c.Phone = newmap.get(c.AccountId).Phone;
        }
        update contactList;
    }

}