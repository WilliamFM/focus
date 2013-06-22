<cfoutput>

<cfloop array="#rc.screener.responses#" index="response">

<a href="/response/viewresponse/#response.responseUUID#" class="btn btn-success">#response.responseUUID#</a>

<hr />

</cfloop>

</cfoutput>