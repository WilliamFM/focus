<cfoutput>

<cfif NOT arrayLen(rc.answers)>
No results found
<br />
<cfelse>
#arrayLen(rc.answers)# result<cfif arrayLen(rc.answers) neq 1>s</cfif> found:<br />
<br />
</cfif>

<section id="widget-grid">

<div class="jarviswidget" id="widget-id-1">
									    <header>
									        <h2>Search Results</h2>                           
									    </header>
									    
									    <!-- widget div-->
									    <div>
									    	<!-- widget edit box -->
									        <div class="jarviswidget-editbox">

									        </div>
									        <!-- end widget edit box -->

									        <!-- content -->	            
            
									        <div class="inner-spacer"> 
	

<table class="table table-bordered table-striped responsive" id="s-table">
				
														<tbody>




<cfloop array="#rc.answers#" index="answer">


															<tr>
																<td><a href="/respondent/view/respondentID/#answer.respondent.respondentUUID#" class="btn btn-info">View</a> </td>
																<td>#answer.respondent.respondentUUID#</td>
															</tr>

</cfloop>


</tbody>
</table>

										    </div>
										    <!-- end content-->
									    </div>
									    <!-- end wrap div -->
									</div>

</section>

<br />

</cfoutput>