<cfoutput>

<h1>#rc.screener.screenerName#</h1>

<hr />

<a href="/screener/newquestion/#rc.screenerID#" class="btn"><i class="cus-add"></i> Add Question</a>

<a href="/screener/viewresponses/#rc.screenerID#" class="btn"><i class="cus-book-open"></i> View Responses</a>

<a href="/screener/v/#rc.screenerID#" class="btn" target="screener_#rc.screenerID#"><i class="cus-application-form"></i> View</a>

<span class="form-horizontal">
<a href="##/screener/v/#rc.screenerID#" class="btn shareScreener"><i class="cus-arrow-divide"></i> Share</a>

<span class="screenerLink">

<input type="text" class="span5" value="http://#cgi.HTTP_HOST#/v/#rc.screenerID#" />
</span>
</span>

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