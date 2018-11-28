({
	init : function(component, event, helper) {
        
        var key = component.get("v.category");
        //console.log('LinkCategoryController > init - key: ' + key);
        var map = component.get("v.linkMap"); 
        //console.log('LinkCategoryController > init - linkMap: ' + JSON.stringify(map));
        //console.log('LinkCategoryController > init - linkMap[Gear]: ' + JSON.stringify(map.get('Gear')));

        var linkList = map.get(key);
        //console.log('LinkCategoryController > init - linkList: ' + JSON.stringify(linkList));
        component.set("v.linkList" , linkList);
        
	} // end init
})