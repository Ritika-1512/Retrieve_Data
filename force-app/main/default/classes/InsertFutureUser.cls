public class InsertFutureUser {
    @future
    public static void insertUser(){
        profile p =[select id from profile where name='Standard User'];
        UserRole r=[select id from UserRole where name='COO'];
    }

}