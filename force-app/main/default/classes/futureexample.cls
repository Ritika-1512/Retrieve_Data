public class futureexample {
    public void firstMethod(){
        System.debug('one');
        System.debug('two');
        System.debug('three');
        System.debug('four');
        System.debug('five');
        System.debug('six');
        System.debug('seven');
        System.debug('Eight');
    }
    public void secondMethod(){
        System.debug('This is 1');
        System.debug('This is 2');
        System.debug('This is 3');
        System.debug('This is 4');
        System.debug('This is 5');
        System.debug('This is 6');
    }
    @future
    public static void futureMethod(){
        System.debug('future 1');
        System.debug('future 2');
        System.debug('future 3');
        System.debug('future 4');
    }

}