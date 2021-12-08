public class Collectionsclass{
    public List<String> names  {set;get;}
    public String result     {set;get;}
    public Integer count     {set;get;}
    public Integer size       {set;get;}
    public Collectionsclass(){
        names =new List<String>{'Sam','Ram','Prasad','Wilson'};
         count=names.size();
        size=0;
    }
    public boolean hasNext(){
        if(count>size){
            return true;
        }else{
            return false;
        }
    }
    public String next(){
        return names[size+1];
    }

}