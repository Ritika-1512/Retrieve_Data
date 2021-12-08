public class calculationclass {
    public integer aval, bval, cval;
    public String result{set; get;}
    public calculationclass(){
        aval=10;
        bval=20;
    }
    public void add(){
        cval=aval+bval;
        result='sum of aval and bval is'+cval;
    }
    public void sub(){
        cval=aval-bval;
        result='sub of aval and bval is'+cval;
    }
    public void mul(){
        cval=aval*bval;
        result='mul of aval and bval is'+cval;
    }

}