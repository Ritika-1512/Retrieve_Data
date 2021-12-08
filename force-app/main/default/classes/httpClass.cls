public class httpClass {
    public static void httpMethod(){
        http ht = new http();

httprequest htreq = new httprequest();
htreq.setendpoint('https://www.eventbriteapi.com/v3/events/168276123415/');
htreq.setMethod('GET');
htreq.setHeader('Authorization', 'Bearer UBIYFHKUCP2YPN5GJJIE');
htreq.setHeader('Content-Type', 'application/json');
htreq.setHeader('Accept','application/json');

httpresponse htres = new httpresponse();
htres = ht.send(htreq);
system.debug(htres.getstatuscode());
        IntegrationClass responseParser = new IntegrationClass(JSON.createParser(htres.getBody()));
        system.debug(htres.getBody());
    }
}