public with sharing class ControllerPassParamNew {
    Account account;
    
    public String getName()
    {
        return 'ControllerNew';
    }
    public Account getAccount()
    {
        if(account==null)
            account=[Select name from Account 
            where id = :ApexPages.currentPage().getParameters().get('id')];
        return account;
    }
    
    public PageReference save()
    {
        update account;
        PageReference secondPage = Page.mySecondPage;
        secondPage.setRedirect(true);
        secondPage.getParameters().put('id',account.Id);
        return secondPage;
    }
    public PageReference GoToNewPage()
    {
       
        PageReference secondPage = Page.mySecondPage;
        secondPage.setRedirect(true);
        secondPage.getParameters().put('id',account.Id);
        return secondPage;
    }
    

}