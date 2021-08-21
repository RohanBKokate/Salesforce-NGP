trigger ondelete on Account (before insert) {
    for(Account a :[Select Id FROM Account WHERE Id IN
                   (Select AccountId FROM Contact) AND
                   Id IN :Trigger.old])
    {
        Trigger.oldMap.get(a.Id).addError('Cannot delete account with related contacts');
    }

}