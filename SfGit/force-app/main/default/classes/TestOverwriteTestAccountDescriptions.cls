@isTest
public class TestOverwriteTestAccountDescriptions {

    static testMethod void verifyAccountDescriptionWhereOverwritten()
    {
        List<Account> accounts = new List<Account>{};
            
            for(Integer i=40;i<50; i++)
        {
            Account a1 = new Account(Name= 'Rohan'+1);
            accounts.add(a1);
        }
        insert accounts;
        system.Test.stopTest();
        List<Account> insertedAccounts = [SELECT Name,Description
                                         FROM Account
                                         WHERE Id IN:accounts];
        for(Account a:insertedAccounts)
        {
            system.assertEquals('This Account is probabaly left over from testing &  it should be deleted',a.Description);
        }
    }
}