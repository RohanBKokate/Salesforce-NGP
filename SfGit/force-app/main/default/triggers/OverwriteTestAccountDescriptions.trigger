trigger OverwriteTestAccountDescriptions on Account (before insert) {
    
    for (Account a:Trigger.new){
        
        if (a.Name.contains('Rohan'))
    {
        system.debug('test debug');
        a.Description = 
            'This Account is probabaly left over from testing &  it should be deleted ';
        
    }
    }
}