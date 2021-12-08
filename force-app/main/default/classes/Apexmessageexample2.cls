public class Apexmessageexample2 {
    public String name{set; get;}
    public Integer age{set; get;}
    public void submit(){
        if (name==' '){
            Apexpages.Message msg= new Apexpages.Message(Apexpages.Severity.ERROR, 'Name cant be blank');
            Apexpages.addMessage(msg);
        }
        if(age<30){
            Apexpages.Message msg= new Apexpages.Message(Apexpages.Severity.ERROR, 'age can not be less than 30');
            Apexpages.addMessage(msg);
        }
    }

}