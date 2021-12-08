trigger RecordDelete on Account (after delete) {
    set<Account> accSet= new  set<Account>([select name, industry from Account]);
    for(Account acc : accSet){
        list<Contact> conList= new list<Contact>([select id from Contact where AccountId =: acc.Id]);
        for(Contact con : conList){
            delete con;
        }
        delete acc;
    }
}