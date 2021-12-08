public class contactController {
    @auraEnabled
    public static list<contact> getContactList(string accountId){
        list<contact> contactList=new list<contact>([select id, Name, email, Phone 
                                                     from contact where email !=null and AccountId =: accountId]);
        system.debug(contactList);
        return contactList;
    }

}