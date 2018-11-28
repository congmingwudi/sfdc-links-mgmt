({
    
    init: function(component, event, helper) {
        
        // retrieve Links organized by Category in a Map
        // if a 'targetCategory' is passed in, only retrieve links for that category
        var targetCategory = component.get("v.targetCategory");
        console.log('LinkListController > init - targetCategory: ' + targetCategory);

        // Create the action
        var action = null;
        if (targetCategory == '') {
            action = component.get("c.getLinks"); // method on the LinkController
        } else {
            action = component.get("c.getLinksByCategory"); // method on the LinkController
            action.setParams({
                "targetCategory": targetCategory
            });
        } 
        
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            console.log('LinkListController > init - getLinks response: ' + response.getState())
            var state = response.getState();
            if (state === "SUCCESS") {
                
                // linkList                
                var linkList = response.getReturnValue();
            	console.log('LinkListController > init - linkList: ' + JSON.stringify(linkList));
                
                // categoryList
                var linkMap = new Map();
                var categoryList = new Array();
                
                for (var i = 0; i < linkList.length; ++i) {
                    var link = linkList[i];
                    var category = link.Category__c;
                    var categoryLinkList = null;
                    if (linkMap.get(category) == undefined) {
                        categoryLinkList = new Array();
                    } else {
                        categoryLinkList = linkMap.get(category);                        
                    }
                    categoryLinkList.push(link);
                    linkMap.set(category, categoryLinkList); 
                }
                
                console.log('LinkListController > init - linkMap: ' + JSON.stringify(linkMap));
                //console.log('ProductListController > init - productMap[Gear]: ' + JSON.stringify(productMap.get('Gear')));
                component.set("v.linkMap", linkMap);
 
                for (var [key, value] of linkMap) {
                    categoryList.push(key);
				}
                console.log('LinkListController > init - categories: ' + JSON.stringify(categoryList));
                component.set("v.categoryList", categoryList);
               
            }
            else {
                console.log("LinkListController > init - failed with state: " + state);
            }
        });

        // Send action off to be executed
        $A.enqueueAction(action);
        
    } // end init
    
})