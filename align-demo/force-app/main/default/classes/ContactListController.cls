public with sharing class ContactListController {
    public ContactListController() {
        return;
    }
    @AuraEnabled(cacheable=true)
    global static List<Contact> getContacts(){
        return [SELECT Id, firstname, lastname FROM Contact];
    }
}
