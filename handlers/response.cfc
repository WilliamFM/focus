component{
  
	function viewresponse(event,rc,prc){
    
    	rc.response = ORMExecuteQuery("from response where responseUUID = '#rc.responseID#'", true);   
    
        event.setLayout('Layout.Home');

    }
    
}