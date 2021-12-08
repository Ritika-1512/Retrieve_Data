@RESTresource(urlMapping='/CreateLead/')
global class CreateLead {
    @HTTPPost
    global static string createLeadRec(){
        string fName, lName,com;
        
        RestRequest req = RestContext.request;
        
        RestResponse res = RestContext.response;
        
        string arr = req.requestBody.toString();
        
        system.debug('Body is'+ arr);
        
        return 'hey';
    }

}