@isTest
private class LinkController_Test {

    @isTest static void test_getLinks() {
        
        // test data - insert links
        List<Link__c> links = new List<Link__c>();
        
        Link__c link1 = new Link__c(Name = 'UoP Architecture', 
                                    URL__c='https://app.box.com/s/rzyzjm95ul3ez1k6319iuhjg5h4wjj2c',
                                    Category__c='Category 1',
                                    Active__c=true                                  
                                   );
        links.add(link1);
        
        Link__c link2 = new Link__c(Name = 'Student-Faculty Portals demo', 
                                    URL__c='https://app.box.com/s/dtnqll6473mjmthn0djpjrl34omcndij',
                                    Category__c='Category 1',
                                    Active__c=true
                                   );
        links.add(link2);
        
        Link__c link3 = new Link__c(Name = 'phoenix.edu', 
                                    URL__c='http://phoenix.edu',
                                    Category__c='Category 2',
                                    Active__c=true
                                   );
        links.add(link3);
        
        insert links;
        
        // test LinkController
        
        System.debug('LinkController_Test >> test_getLinks > start');
    	List<Link__c> linkList = LinkController.getLinks();
        System.debug('LinkController_Test >> test_getLinks > linkList: ' + linkList);
        
        // test LinkController - by category
        
        String targetCategory = 'Category 2';
    	linkList = LinkController.getLinksByCategory(targetCategory);
        System.debug('LinkController_Test >> test_getLinksByCategory > linkList: ' + linkList);
        
    } // end test_getLinks
    
}