public class CreateContactUtility {
    public static void CreateContacts(List<account> lstAccounts)
    {
        system.debug('Account::'+lstAccounts);
        List<Contact> lstContacts = new List<Contact>();
        if(lstAccounts.size()>0)
        {
            for(Account acc:lstAccounts)
            {
                Contact cnt = new Contact(LastName=acc.Name, AccountId=acc.Id);
                lstContacts.add(cnt);
            }
        
        insert lstContacts;
        }
    }

}