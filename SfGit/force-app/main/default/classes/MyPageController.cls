public with sharing class MyPageController {
    
    public PageReference saveMethod()
    {
        PageReference pgref = new PageReference('http://www.google.com');
        return pgref;
    }

}