public without sharing class LinkController {
    
    @AuraEnabled
    public static List<Link__c> getLinks() {
       System.debug('LinkController > getLinks');
       return [SELECT Id, Name, Category__c, URL__c, Icon__c FROM Link__c WHERE Active__c=true];
    } 
    
    @AuraEnabled
    public static List<Link__c> getLinksByCategory(String targetCategory) {
       System.debug('LinkController > getLinks - targetCategory: ' + targetCategory);
       return [SELECT Id, Name, Category__c, URL__c, Icon__c FROM Link__c WHERE Active__c=true AND Category__c=:targetCategory];
    } 
    
} // end LinkController