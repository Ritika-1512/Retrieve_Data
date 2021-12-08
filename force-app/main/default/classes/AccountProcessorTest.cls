@isTest
public class AccountProcessorTest {
    @isTest
    public static void testClass(){
       Account a = new Account();
        a.Name='Test Account';
        insert a;
        
        Contact con = new Contact();
        con.FirstName ='Ritika';
        con.LastName = 'Solanki';
        con.AccountId=a.Id;
        insert con;
        
        set<id> setAccId = new set<id>();
        setAccId.add(a.Id);
        
        test.startTest();
        AccountProcessor.countContacts(setAccId);
        test.stopTest();
        
        Account accs=[select Number_of_Contacts__c from Account where id=:a.Id limit 1];
        system.assertEquals(Integer.valueOf(accs.Number_of_Contacts__c),1);
    }

}