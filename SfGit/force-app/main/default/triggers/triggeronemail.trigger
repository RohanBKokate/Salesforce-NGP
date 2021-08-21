trigger triggeronemail on Contact (before insert) {
    
    for (Contact c:trigger.new)
    {
        if(c.department==null)
        {
            system.debug('Could not update Last Survey sent Field on account with clause ');
        }
    }

}