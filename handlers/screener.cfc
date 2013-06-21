component{
  
	function list(event,rc,prc){

        rc.screeners = EntityLoad('screener');
    
        event.setLayout('Layout.Home');
        event.setView('screener/list');

    }

	function new(event,rc,prc){
    
        event.setLayout('Layout.Home');
        event.setView('screener/new');

    }

	function view(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);   
        
    	rc.questions = ORMExecuteQuery("from question where screenerID = '#rc.screener.getScreenerID()#'");   
    
        event.setLayout('Layout.Screener');
        event.setView('screener/view');

    }
    
	function edit(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);   
    
    	rc.questions = ORMExecuteQuery("from question where screenerID = '#rc.screener.getScreenerID()#'");   
    
        event.setLayout('Layout.Home');
        event.setView('screener/edit');

    }
    
	function newquestion(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);
        
    }
    
	function createquestion(event,rc,prc){
    
 		//this uses the screenerID from the hidden form field to load the screener this question will be added to   
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);
        
        //create an empty object based off of our question model
    	rc.newQuestion = EntityNew('question');
        
        //set the label of the question to the value of the form field with name="questionLabel" which is available as rc.questionLabel
        rc.newQuestion.setQuestionLabel(rc.questionLabel);
        
        rc.newQuestion.setQuestionUUID(createUUID());    
        rc.newQuestion.setScreener(rc.screener);
        rc.newQuestion.setQuestionType(rc.questionType);
        
        if (listFindNoCase('select,radio,checkbox', rc.questionType)) {
        
        for (i=0;i<5;i++) {

			if (rc['option#i+1#'] != '') {
            	rc.newOption = EntityNew('option');
                rc.newOption.setOptionLabel(rc['option#i+1#']);
                rc.newOption.setOptionValue(rc['option#i+1#']);
                rc.newOption.setQuestion(rc.newQuestion);
                rc.newQuestion.addOption(rc.newOption);
                EntitySave(rc.newOption);
            }

        }
        
        }
        
        rc.screener.addQuestion(rc.newQuestion);
    	EntitySave(rc.newQuestion);
        setNextEvent('screener/edit/#rc.screenerID#');
        
    }

	function create(event,rc,prc){
    
    	rc.newScreener = EntityNew('screener');
        rc.newScreener.setScreenerName(rc.screenerName);
        rc.newScreener.setScreenerUUID(createUUID());        
    	EntitySave(rc.newScreener);
    
        rc.screeners = EntityLoad('screener');
    
        event.setLayout('Layout.Home');
        setNextEvent('screener/list');

    }

}