@isTest
private class testAccountToContact {
    @testSetup
    static void setupMethod(){
        Account acc=new Account(Name='infoFeat Technologies', Phone='123456789', Industry='Technology' );
        insert acc;
    }
    @isTest
    static void testConMethod(){
        Account acc = [select id from Account where name='infoFeat Technologies'];
        List<Contact> con= new List<Contact>();
        test.startTest();
        con = accountToContact.conMethod(acc.Id);
        test.stopTest();
        //system.assertEquals(, )
        
    }
     @isTest
    static void testOppMethod(){
        Account acc = [select id from Account where name='infoFeat Technologies'];
        List<Opportunity> oppty= new List<Opportunity>();
        test.startTest();
        oppty = accountToContact.oppMethod(acc.Id);
        test.stopTest();
    }
}