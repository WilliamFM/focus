<cfoutput>

#rc.screener.screenerName#

<hr />

<form class="form-horizontal" method="POST" action="/screener/saveresponse">

<cfloop array="#rc.questions#" index="question">

<div class="row-fluid question">

<cfif listFindNoCase('select', question.questionType)>

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


<cfelseif listFindNoCase('radio', question.questionType)>



<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
		<cfloop array="#question.options#" index="option">
		<label class="radio">
        <input type="radio" value="#option.optionValue#" name="question#question.questionUUID#" id="question#question.questionUUID#" > #option.optionLabel#<br  />       
		</label>
        </cfloop>
</div>



<cfelseif listFindNoCase('checkbox', question.questionType)>

<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
		<cfloop array="#question.options#" index="option">
		<label class="checkbox">
        <input type="checkbox" value="#option.optionValue#" name="question#question.questionUUID#" id="question#question.questionUUID#" > #option.optionLabel#<br  />       
		</label>
        </cfloop>
</div>

<cfelse>

<div class="span6">
#question.questionLabel#
</div>


<div class="span6">
      <input type="text" name="question#question.questionUUID#" id="question#question.questionUUID#" placeholder="">
</div>

</cfif>

</div>

</cfloop>


<div class="row-fluid question">
      <button type="submit" class="btn btn-success" id="submit">Submit</button>
</div>


  <input type="hidden" name="screenerID" value="#rc.screenerID#" />
  
</form>

</cfoutput>