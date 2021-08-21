trigger AddOwnerColor on Account (before insert, before update) {
    
 Set<id> ownerIds = new Set<id>();
    for (Account a: Trigger.new )
        ownerIds.add(a.OwnerId);
    Map<id,User> owners= new Map<Id,User>
        ([Select Favorite_Color__c from user where Id in:ownerIds]);
for (Account a: Trigger.new )
    a.Owner_Favorite_Color__c = owners.get(a.OwnerId).Favorite_Color__c;
}