<cfoutput>

<form class="form-horizontal" method="POST" action="/screener/saverespnose">

<cfloop array="#rc.questions#" index="question">

<cfif listFindNoCase('select', question.questionType)>

<div class="row-fluid">

<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
      <select name="question#question.questionUUID#" id="question#question.questionUUID#" size="1" required="true" title="Please select ane">
      <option>select an answer</option>

		<cfloop array="#question.options#" index="option">
        <option value="#option.optionValue#">#option.optionLabel#</option>
        </cfloop>

      </select>
    </div>
  </div>

<cfelseif listFindNoCase('radio', question.questionType)>

<div class="row-fluid">

<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
		<cfloop array="#question.options#" index="option">
        <input type="radio" value="#option.optionValue#" name="question#question.questionUUID#" id="question#question.questionUUID#" > #option.optionLabel#<br  />       
        </cfloop>
</div>

  </div>

<cfelse>

<div class="row-fluid">

<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
      <input type="text" name="question#question.questionUUID#" id="question#question.questionUUID#" placeholder="Question Label">
</div>

  </div>

</cfif>

</cfloop>



      <button type="submit" class="btn">Submit Response</button>


  <input type="hidden" name="screenerID" value="#rc.screenerID#" />
  
</form>

</cfoutput>