<cfoutput>

<a href="/screener/newquestion/#rc.screenerID#" class="btn btn-primary"><i class="icon icon-plus icon-white"></i> Add Question</a>

<br />

<hr />

<cfloop array="#rc.questions#" index="question">

#question.questionLabel# <a href="screener/editquestion/#question.questionUUID#">edit</a>
<br />

</cfloop>

<hr />

#rc.screener.screenerName#

</cfoutput>