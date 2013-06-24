<cfoutput>

<a href="/screener/new" class="btn btn-info"><i class="cus-page-white-database"></i> Create New Screener</a>

<hr />

<cfloop array="#rc.screeners#" index="screener">

<a href="/v/#screener.screenerUUID#" class="btn btn"><i class="cus-magnifier"></i> View</a> <a href="/screener/edit/#screener.screenerUUID#" class="btn"><i class="cus-page-white-edit"></i> edit</a> #screener.screenerName#
<hr />

</cfloop>

</cfoutput>