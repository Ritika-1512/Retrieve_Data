public class ApexMessageExample {
    public ApexMessageExample(){
        Apexpages.Message msg1=new Apexpages.Message(Apexpages.Severity.CONFIRM, 'successfully');
        Apexpages.Message msg2=new Apexpages.Message(Apexpages.Severity.ERROR, 'Error message');
        Apexpages.Message msg3=new Apexpages.Message(Apexpages.Severity.WARNING, 'Warning message');
        Apexpages.Message msg4=new Apexpages.Message(Apexpages.Severity.INFO, 'Info message');                                             
        Apexpages.addMessage(msg1);
        Apexpages.addMessage(msg2);
        Apexpages.addMessage(msg3);
        Apexpages.addMessage(msg4);
    }

}