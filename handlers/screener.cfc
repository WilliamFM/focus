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
    
	function viewresponses(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);          
    
        event.setLayout('Layout.Home');
        event.setView('screener/viewresponses');

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
        if (isDefined("rc.master") and rc.master is 'true') {
        rc.newQuestion.setMaster(rc.master);                        
        }
        
        if (listFindNoCase('select,radio,checkbox', rc.questionType)) {
        
        for (i=0;i<rc.optionCount;i++) {

			if (rc['option#i+1#'] != '') {
            	rc.newOption = EntityNew('option');
                rc.newOption.setOptionLabel(rc['optionLabel#i+1#']);
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

	function saveresponse(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);   

		rc.newRespondent = EntityNew('respondent');
        rc.newRespondent.setRespondentUUID(createUUID());
        
		rc.newResponse = EntityNew('response');
        rc.newResponse.setScreener(rc.screener);
        rc.newResponse.setResponseUUID(createUUID());
        rc.screener.addResponse(rc.newResponse);
    
    	rc.questions = ORMExecuteQuery("from question where screenerID = '#rc.screener.getScreenerID()#'");

		for (rc.question in rc.questions) {
        
		rc.fieldName = "question#rc.question.questionUUID#";
        
        if (isDefined("rc['#rc.fieldName#']")) {
                
        	rc.newAnswer = EntityNew('answer');
            rc.newAnswer.setQuestion(rc.question);
            rc.newAnswer.setAnswerValue(rc[rc.fieldName]);
            rc.newAnswer.setResponse(rc.newResponse);
            rc.newResponse.addAnswer(rc.newAnswer);
            
            if (rc.question.master is 'true') {
                rc.newRespondent.addAnswer(rc.newAnswer);
                rc.newAnswer.setRespondent(rc.newRespondent);
            }
            
            EntitySave(rc.newAnswer);
        
        }

        }
       
        rc.newResponse.setRespondent(rc.newRespondent);
        rc.newRespondent.addResponse(rc.newResponse);
       
        EntitySave(rc.newRespondent); 
        EntitySave(rc.newResponse); 
        EntitySave(rc.screener);               
            
        setNextEvent(event='screener/response',persist='screenerID');

    }

	function response(event,rc,prc){
    
    	rc.screener = ORMExecuteQuery("from screener where screenerUUID = '#rc.screenerID#'", true);   
    
        event.setLayout('Layout.Home');

    }
    
}