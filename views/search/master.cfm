

<cfoutput>

<cfif NOT arrayLen(rc.answers)>
No results found
<br />
<cfelse>
#arrayLen(rc.answers)# result<cfif arrayLen(rc.answers) neq 1>s</cfif> found:<br />
<br />
</cfif>

<section id="widget-grid">

<div class="jarviswidget" id="widget-id-0">

									    <header>
									        <h2>Search Results</h2>                           
									    </header>
									    <!-- wrap div -->
									    <div>
									    
									        <div class="jarviswidget-editbox">

									        </div>
            
									        <div class="inner-spacer"> 
	

												<table class="table table-striped table-bordered responsive" id="dtable">
													<thead>
														<tr>
															<th>View</th>
															<th>Respondent</th>
														</tr>
													</thead>
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