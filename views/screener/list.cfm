<cfoutput>

<a href="/screener/new" class="btn btn-primary"><i class="icon icon-plus icon-white"></i> Create New Screener</a>

<hr />

<cfloop array="#rc.screeners#" index="screener">

<a href="/v/#screener.screenerUUID#" class="btn btn-primary">#screener.screenerName#</a> <a href="/screener/edit/#screener.screenerUUID#" class="btn">edit</a>
<hr />

</cfloop>

</cfoutput>