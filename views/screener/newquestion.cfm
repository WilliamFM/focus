<cfoutput>

Screener: <strong>#rc.screener.screenerName#</strong>

<hr />

<form class="form-horizontal" method="POST" action="/screener/createquestion">
  <div class="control-group">
    <label class="control-label" for="questionLabel">Question Label</label>
    <div class="controls">
      <input type="text" name="questionLabel" id="questionLabel" placeholder="Question Label" required="required" title="Quesiton Label is required">
    </div>
  </div>

<div class="control-group">
<label class="control-label">Question Type</label>
<div class="controls">
    <div class="btn-group" data-toggle="buttons-radio">
    
    
      <button type="button" name="questionTypeOption" id="" required="true" value="text" class="btn btn-small questionTypeOption active"> TEXT</button>
      <button type="button" name="questionTypeOption" id="" required="true" value="textarea" class="btn btn-small questionTypeOption"> TEXTAREA</button>
      <button type="button" name="questionTypeOption" id="" required="true" value="select" class="btn btn-small questionTypeOption"> SELECT</button>
      <button type="button" name="questionTypeOption" id="" required="true" value="radio" class="btn btn-small questionTypeOption"> RADIO</button>
      <button type="button" name="questionTypeOption" id="" required="true" value="checkbox" class="btn btn-small questionTypeOption"> CHECKBOX</button>
   
    </div>
</div>
</div>
  
  <input type="hidden" id="questionType" name="questionType" value="" />
  
    <div class="control-group">
		<label class="control-label">Is this a master question?</label>
                
	<div class="controls">
                
        <div class="switch" data-on-label="YES" data-off-label="NO">
		<input type="checkbox" value="true" name="master">
        </div>        
        
	</div>
        
        
    </div>								
    
  <div class="control-group" id="questionOptions">
    <label class="control-label" for="questionType">Options</label>
    <div class="controls">
    
    <a href="##" class="btn btn-info" id="addOption"><i class="icon icon-plus icon-white"></i> Add Option</a>
    
    <div id="options">
    </div>
    
    </div>
  </div>

  <div class="control-group" id="questionRequirements">
    <label class="control-label" for="">Requirements</label>
    <div class="controls">
    
    <a href="##" class="btn btn-info" id="addRequirement"><i class="icon icon-plus icon-white"></i> Add Requirement</a>
    
    <div id="requirements">
    </div>
    
    </div>
  </div>

  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn btn-info">Create Question</button>
    </div>
  </div>

  <input type="hidden" name="screenerID" value="#rc.screenerID#" />
  <input type="hidden" name="optionCount" id="optionCount" value="0" />
  <input type="hidden" name="requirementCount" id="requirementCount" value="0" />
  
</form>


</cfoutput>