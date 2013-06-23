component{
  
	function master(event,rc,prc){
    
    	rc.answers = ORMExecuteQuery("from answer where answerValue like :searchTerm and respondent > 0", {searchTerm='%#rc.searchTerm#%'});        
    
        event.setLayout('Layout.Home');
        event.setView('search/master');

    }
   
}