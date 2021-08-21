public with sharing class AccountListLWC {
    @AuraEnabled(cacheable=true)
    public static List <Account> queryAccountsByEmployeeNumber(Integer numberOfEmployees)
    {
    return [select
    Name,numberOfEmployees from Account
    where NumberOfEmployees <= : numberOfEmployees
    ];
    }
}