@RestResource(urlMapping='/Account/*')
global with sharing  class RestWebService {
    @HttpDelete
    global static void doDelete()
    {
        RestRequest req=RestContext.request;
        RestResponse res = RestContext.response;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        Account account =[SELECT Id From Account WHERE Id =:accountId];
        delete account;
    }
      @HttpGet
    global static Account doGet()
    {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        Account result = [SELECT Id,Name,Phone,Website FROM Account WHERE Id=:accountId];
        return result;
    }

    @HttpPost
    global static String doPost(String name,
                                String phone,String website)
    {
        Account account = new Account();
        account.name=name;
        account.phone=phone;
        account.Website=website;
        insert account;
        return account.Id;
  
    }
    
    @HttpPut
    global static String doPut(String name)
    {
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        Account account = new Account(Id=accountId);
        update account;
        return account.Id;
    
        
    }
}