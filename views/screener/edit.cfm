<cfoutput>

<h1>#rc.screener.screenerName#</h1>

<hr />

<a href="/screener/newquestion/#rc.screenerID#" class="btn btn-success"><i class="cus-add"></i> Add Question</a>

<a href="/screener/viewresponses/#rc.screenerID#" class="btn btn-success"><i class="cus-book-open"></i> View Responses</a>

<a href="/screener/view/#rc.screenerID#" class="btn btn-success"><i class="cus-application-form"></i> View</a>

<br />

<hr />

<cfif arrayLen(rc.questions)>

<section id="widget-grid">

<div class="jarviswidget" id="widget-id-1">
									    <header>
									        <h2>Questions</h2>                           
									    </header>
									    
									    <!-- widget div-->
									    <div>
                                                                                
									    	<!-- widget edit box -->
									        <div class="jarviswidget-editbox">
									        </div>
            
									        <div class="inner-spacer"> 
	

<table class="table table-bordered table-striped responsive" id="s-table">
														<thead>
															<tr>
																<th>Question</th>
																<th>Manage</th>
															</tr>
														</thead>
														<tbody>




<cfloop array="#rc.questions#" index="question">

															<tr>
																<td>#question.questionLabel# </td>
																<td><a href="screener/editquestion/#question.questionUUID#" class="btn">edit</a></td>
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

<hr />

</cfif>

</cfoutput>