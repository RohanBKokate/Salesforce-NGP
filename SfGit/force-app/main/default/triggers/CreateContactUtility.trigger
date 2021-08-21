trigger CreateContactUtility on Account (after insert) {
    if(Trigger.isInsert)
    {
        CreateContactUtility.CreateContacts(Trigger.New);
    }
    

}