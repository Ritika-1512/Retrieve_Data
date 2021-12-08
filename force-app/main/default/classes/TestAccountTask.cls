@isTest
public class TestAccountTask {
    @isTest
    public static void returnList(){
       Account accList=  utilityAccount.utilityAccountMethod();
        insert accList;
    test.startTest();
    AccountTask.accountMethod();
    test.stopTest();
        
}
    
    @isTest
    public static void returnList2(){
       Account accList=  utilityAccount.utilityAccountMethod();
        accList.Name = 'abc';
        insert accList;
    test.startTest();
    AccountTask.accountMethod();
    test.stopTest();  
}
}