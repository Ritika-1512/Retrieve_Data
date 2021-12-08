public class SerchAccountDetails {
	@auraEnabled
    public static List<Account> searchRecord(String name)
    {
        List<Account> accDetailList = new List<Account>();
        accDetailList = [select Id,Name,Phone,type FROM Account where name =:name];
        return accDetailList;
    }
}