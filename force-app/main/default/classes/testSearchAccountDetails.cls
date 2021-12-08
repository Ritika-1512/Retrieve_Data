@isTest
private class testSearchAccountDetails {
    @testSetup
    static void testAccount(){
       Account acc= new Account(Name='Info1', Industry='Technology', Phone='1234567890');
        insert acc; 
    }
    @isTest
    static void testSearchRecord(){
        List<Account> acc = new List<Account>();
       test.startTest();
         acc = SerchAccountDetails.searchRecord('Info1');
       test.stopTest();
        system.assertEquals('Info1', acc[0].Name);

}
}