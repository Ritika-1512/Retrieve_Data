public class Calculatorclass {
    public decimal amount{set; get;}
    public decimal year{set; get;}
    public decimal intrest{set; get;}
    public decimal rate{set; get;}
    public Calculatorclass(){
        amount=50000;
        rate=2.5;
        year=1;
    }
    public void oneyear(){
        intrest=(amount*rate*1)/100;
    }
    public void twoyear(){
       intrest=(amount*rate*2)/100;  
    }
}