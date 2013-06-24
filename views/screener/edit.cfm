<cfoutput>

<h1>#rc.screener.screenerName#</h1>

<hr />

<a href="/screener/newquestion/#rc.screenerID#" class="btn btn-success"><i class="cus-add"></i> Add Question</a>

<a href="/screener/viewresponses/#rc.screenerID#" class="btn btn-success"><i class="cus-book-open"></i> View Responses</a>

<a href="/screener/v/#rc.screenerID#" class="btn btn-success" target="screener_#rc.screenerID#"><i class="cus-application-form"></i> View</a>

<a href="##/screener/v/#rc.screenerID#" class="btn btn-success shareScreener"><i class="cus-arrow-divide"></i> Share</a>

<div class="screenerLink">
<br />
<input type="text" class="span6" value="http://#cgi.HTTP_HOST#/v/#rc.screenerID#" />
</div>

<hr />

<cfif arrayLen(rc.questions)>

<section id="widget-grid">

<div class="jarviswidget" id="widget-id-0">

									    <header>
									        <h2>Questions</h2>                           
									    </header>
									    <!-- wrap div -->
									    <div>
									    
									        <div class="jarviswidget-editbox">

									        </div>
            
									        <div class="inner-spacer"> 
	

												<table class="table table-striped table-bordered responsive" id="dtable">
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