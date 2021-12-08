public with sharing class SearchContact{
    @AuraEnabled(cacheable=true)
    public static list<contact> contactSearch(string response){
        system.debug('Printed json'+response);
        Map<String, Object> result = (Map<String, Object>)JSON.deserializeUntyped(response);
        system.debug('Result'+result);
        list<contact> conList = [select id, firstname,lastName,email ,phone from contact where firstName =: string.valueOf(result.get('firstName')) AND lastname =:string.valueOf(result.get('lastName'))];
        system.debug(conList);
        return conList;
    }
}