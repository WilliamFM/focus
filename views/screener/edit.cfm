<cfoutput>

<a href="/screener/newquestion/#rc.screenerID#" class="btn btn-success"><i class="icon icon-plus icon-white"></i> Add Question</a>

<a href="/screener/viewresponses/#rc.screenerID#" class="btn btn-success"><i class="icon icon-eye-open icon-white"></i> View Responses</a>

<br />

<hr />

<cfloop array="#rc.questions#" index="question">

#question.questionLabel# <a href="screener/editquestion/#question.questionUUID#">edit</a>

<br />

</cfloop>

<hr />

#rc.screener.screenerName#

</cfoutput>