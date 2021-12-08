public class AccountTask {
    public static list<Account> accountMethod(){
        list<Account> accList= new list<Account>([select id, Name, Type from Account where name='infoFeat' and Type='Prospecting']);
        if(accList.size() == 0)
        {
          list<Account> accListTypeProspecting = new list<Account>([select id, Name, Type from Account where Type='Prospecting']);  
            return accListTypeProspecting;
        }
        else{
         return accList;   
        }
        
    } 
}