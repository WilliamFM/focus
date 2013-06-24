component extends="coldbox.system.Interceptor"{

	function configure(){}

	any function preProcess(event,interceptData){
		rc = event.getCollection();
        
        rc.screenerCount = new Query();
        rc.screenerCount.setSQL("select screenerID from screeners");
        
        rc.screenerCount = rc.screenerCount.execute().result.recordcount;       
        
        rc.userCount = new Query();
        rc.userCount.setSQL("select userID from users");
        rc.userCount = rc.userCount.execute().result.recordcount;
		
		return false;
	}
}