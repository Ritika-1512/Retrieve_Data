@isTest
public class TestOpportunityTask {
    @isTest
    private static void returnOppList(){
        Opportunity oppList = OpportunityUtility.utilityOppMehtod();
        oppList.Type='New Customer';
        insert oppList;
        test.startTest();
        OpportunityTask.oppMethod();
        test.stopTest();
    }
    @isTest
    private static void returnoppList1(){
        Opportunity oppList1 = OpportunityUtility.utilityOppMehtod();
        oppList1.Type='Existing Customer - Upgrade';
        insert oppList1;
        test.startTest();
        OpportunityTask.oppMethod();
        test.stopTest();
   }
    @isTest
    private static void returnoppList2(){
        Opportunity oppList2 = OpportunityUtility.utilityOppMehtod();
        oppList2.Type='Existing Customer - Replacement';
        insert oppList2;
        test.startTest();
        OpportunityTask.oppMethod();
        test.stopTest(); 

}
     @isTest
    private static void returnoppList4(){
        Opportunity oppList4 = OpportunityUtility.utilityOppMehtod();
        oppList4.Type='Existing Customer - Upgrade';
        insert oppList4;
        test.startTest();
        OpportunityTask.oppMethod();
        test.stopTest();
    }
     @isTest
    private static void returnoppList3(){
        Opportunity oppList3 = OpportunityUtility.utilityOppMehtod();
        
        test.startTest();
        insert oppList3;
        OpportunityTask.oppMethod();
        test.stopTest(); 

}
}