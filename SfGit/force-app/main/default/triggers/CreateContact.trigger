trigger CreateContact on Account (after insert) {
    if(Trigger.isInsert)
    {
        List<Contact> lstContacts = new List<Contact>();
        for (Account acc:Trigger.new)
        {
            Contact cnt= new Contact (LastName =acc.Name,AccountId=acc.Id, email='1rohan.kokate1@gmail.com');
        lstContacts.add(cnt);
        }
        insert lstContacts;
    }

}