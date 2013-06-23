<cfoutput>

<a href="/screener/new" class="btn btn-success"><i class="icon icon-plus icon-white"></i> Create New Screener</a>

<hr />

<cfloop array="#rc.screeners#" index="screener">

<a href="/v/#screener.screenerUUID#" class="btn btn-success">View</a> <a href="/screener/edit/#screener.screenerUUID#" class="btn">edit</a> #screener.screenerName#
<hr />

</cfloop>

</cfoutput>