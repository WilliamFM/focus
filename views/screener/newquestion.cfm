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
    <label class="control-label" for="questionType">Question Type</label>
    <div class="controls">
      <select name="questionType" id="questionType" size="1" required="true" title="Please select a question type">
      <option>select a type</option>
      <option value="text">text</option>
      <option value="textarea">textarea</option>
      <option value="select">select</option>
      <option value="radio">radio</option>
      <option value="checkbox">Check Box</option>
      </select>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="questionType">Is this a master question?</label>
    <div class="controls">
		<label class="radio">
        <input type="radio" value="false" name="master" id="master" checked="checked"> No<br  />
        </label>
		<label class="radio">
        <input type="radio" value="true" name="master" id="master"> Yes<br  />
		</label>
    </div>
  </div> 
  
  <div class="control-group" id="questionOptions">
    <label class="control-label" for="questionType">Options</label>
    <div class="controls">
    
    <a href="##" class="btn btn-success" id="addOption"><i class="icon icon-plus icon-white"></i> Add Option</a>
    
    <div id="options">
    </div>
    
    </div>
  </div>

  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn btn-success">Create Question</button>
    </div>
  </div>

  <input type="hidden" name="screenerID" value="#rc.screenerID#" />
  <input type="hidden" name="optionCount" id="optionCount" value="0" />
  
</form>


</cfoutput>