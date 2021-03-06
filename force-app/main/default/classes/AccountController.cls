public with sharing class AccountController {

    @AuraEnabled
    public static List<Account> findAll() {
        return [SELECT Name, Location__Latitude__s, Location__Longitude__s 
                FROM Account
                WHERE Location__Longitude__s != NULL AND Location__Longitude__s != NULL
                LIMIT 50];
    }
}
