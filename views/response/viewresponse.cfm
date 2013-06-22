<cfoutput>

<cfloop array="#rc.response.answers#" index="answer">

#answer.question.questionLabel#<br />
<strong>
#answer.answerValue#
</strong>

<hr />

</cfloop>

</cfoutput>