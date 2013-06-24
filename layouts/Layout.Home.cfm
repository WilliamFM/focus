
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <title>FocusJr</title>
    <meta name="description" content="">
    <meta name="author" content="">
    
	<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!--// OPTIONAL & CONDITIONAL CSS FILES //-->   
	<!-- date picker css -->
	<link rel="stylesheet" href="/includes/jarvis/css/datepicker.css?v=1">
	<!-- full calander css -->
	<link rel="stylesheet" href="/includes/jarvis/css/fullcalendar.css?v=1">
	<!-- data tables extended CSS -->
	<link rel="stylesheet" href="/includes/jarvis/css/TableTools.css?v=1">
	<!-- bootstrap wysimhtml5 editor -->
	<link rel="stylesheet" href="/includes/jarvis/css/bootstrap-wysihtml5.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/wysiwyg-color.css">
	<!-- custom/responsive growl messages -->
	<link rel="stylesheet" href="/includes/jarvis/css/toastr.custom.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/toastr-responsive.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/jquery.jgrowl.css?v=1">
	
	<!-- // DO NOT REMOVE OR CHANGE ORDER OF THE FOLLOWING // -->
	<!-- bootstrap default css (DO NOT REMOVE) -->
	<link rel="stylesheet" href="/includes/jarvis/css/bootstrap.min.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/bootstrap-responsive.min.css?v=1">
	<!-- font awsome and custom icons -->
	<link rel="stylesheet" href="/includes/jarvis/css/font-awesome.min.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/cus-icons.css?v=1">
	<!-- jarvis widget css -->
	<link rel="stylesheet" href="/includes/jarvis/css/jarvis-widgets.css?v=1">
	<!-- Data tables, normal tables and responsive tables css -->
	<link rel="stylesheet" href="/includes/jarvis/css/DT_bootstrap.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/responsive-tables.css?v=1">
	<!-- used where radio, select and form elements are used -->
	<link rel="stylesheet" href="/includes/jarvis/css/uniform.default.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/select2.css?v=1">
	<!-- main theme files -->
	<link rel="stylesheet" href="/includes/jarvis/css/theme.css?v=1">
	<link rel="stylesheet" href="/includes/jarvis/css/theme-responsive.css?v=1">
    
	<!-- // THEME CSS changed by javascript: the CSS link below will override the rules above // -->
	<!-- For more information, please see the documentation for "THEMES" -->
    <link rel="stylesheet" id="switch-theme-js" href="/includes/jarvis/css/themes/default.css?v=1">   
	
   	<!-- To switch to full width -->
    <link rel="stylesheet" id="switch-width" href="/includes/jarvis/css/full-width.css?v=1">
    
	<!-- Webfonts -->
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato:300,400,700' type='text/css'>
	
	<!-- All javascripts are located at the bottom except for HTML5 Shim -->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
   		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   		<script src="/includes/jarvis/js/include/respond.min.js"></script>
   	<![endif]-->
	
	<!-- For Modern Browsers -->
	<link rel="shortcut icon" href="/includes/jarvis/img/favicons/favicon.png">
	<!-- For everything else -->
	<link rel="shortcut icon" href="/includes/jarvis/img/favicons/favicon.ico">
	<!-- For retina screens -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/includes/jarvis/img/favicons/apple-touch-icon-retina.png">
	<!-- For iPad 1-->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/includes/jarvis/img/favicons/apple-touch-icon-ipad.png">
	<!-- For iPhone 3G, iPod Touch and Android -->
	<link rel="apple-touch-icon-precomposed" href="/includes/jarvis/img/favicons/apple-touch-icon.png">
	
	<!-- iOS web-app metas -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<!-- Add your custom home screen title: -->
	<meta name="apple-mobile-web-app-title" content="Jarvis"> 

	<!-- Startup image for web apps -->
	<link rel="apple-touch-startup-image" href="/includes/jarvis/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
	<link rel="apple-touch-startup-image" href="/includes/jarvis/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
	<link rel="apple-touch-startup-image" href="/includes/jarvis/img/splash/iphone.png" media="screen and (max-device-width: 320px)">
	
  </head>

  <body>
  	<!-- .height-wrapper -->
	<div class="height-wrapper">
		
		<!-- header -->
		<header>
			<!-- tool bar -->
			<div id="header-toolbar" class="container-fluid">
				<!-- .contained -->
				<div class="contained">
					
					<!-- theme name -->
					<a href="/" id="logo"><h1> FocusJr <span class="hidden-phone">- Admin</span> </h1></a>
					<!-- end theme name -->
																		
					<!-- span4 -->
					<div class="pull-right">
						<!-- demo theme switcher-->
						<div id="theme-switcher" class="btn-toolbar">
							
							<!-- search and log off button for phone devices -->
							<div class="btn-group pull-right visible-phone">
								<a href="javascript:void(0)" class="btn btn-inverse btn-small"><i class="icon-search"></i></a>
								<a href="login.html" class="btn btn-inverse btn-small"><i class="icon-off"></i></a>
							</div>
							<!-- end buttons for phone device -->
							
							<!-- dropdown mini-inbox-->
							<div class="btn-group">
								<!-- new mail ticker -->
								<a href="javascript:void(0)" class="btn btn-small btn-inverse dropdown-toggle" data-toggle="dropdown">
									<span class="mail-sticker">2</span>
									<i class="cus-email"></i>
								</a>
								<!-- end new mail ticker -->
								
								<!-- email lists -->
								<div class="dropdown-menu toolbar pull-right">
									<h3>Inbox</h3>
									<!-- "mailbox-slimscroll-js" identifier is used with Slimscroll.js plugin -->
									<ul id="mailbox-slimscroll-js" class="mailbox">
										<li>
											<a href="javascript:void(0)" class="unread">
												<img src="/includes/jarvis/img/email-important.png" alt="important mail">
												From: David Simpson
												<i class="icon-paper-clip"></i>
												<span>Dear Jim, Thanks! We are very impressed with the quality of the...</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="unread attachment">
												
												<img src="/includes/jarvis/img/email-unread.png" alt="important mail">
												Re:Last Year Repeat
												<i class="icon-paper-clip"></i>
												<span>Hey Jim, find attached the requirements.</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="/includes/jarvis/img/email-read.png" alt="important mail">
												RE: 2 Bugs found...
												<i class="icon-paper-clip"></i>
												<span>I have found two more bugs in this your beta version, maybe its not working...</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="/includes/jarvis/img/email-read.png" alt="important mail">
												2 Bugs found...
												<i class="icon-paper-clip"></i>
												<span>Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales.</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="/includes/jarvis/img/email-read.png" alt="important mail">
												Welcome to Jarvis!
												<i class="icon-paper-clip"></i>
												<span>Feugiat a, tellus. Phasellus viverra nulla ut metus varius. Quisque rutrum. Aenean imperdiet... </span>
											</a>
										</li>
									</ul>
									<a href="javascript:void(0);" id="go-to-inbox">Go to Inbox <i class="icon-double-angle-right"></i></a>
								</div>
								<!-- end email lists -->
							</div>
							<!-- end dropdown mini-inbox-->
							
							<!-- Tasks -->
							<div class="btn-group hidden-phone">
								<a href="javascript:void(0)" class="btn btn-inverse btn-small">Objectives</a>
								<a href="javascript:void(0)" class="btn btn-inverse dropdown-toggle btn-small" data-toggle="dropdown"><span class="caret"></span></a>
					
								<div class="dropdown-menu toolbar pull-right">
									<h3>Showing All Objectives</h3>
									<ul class="progressbox">
						                <li>
						                    <strong><i class="online pull-left"></i>Completed Campaigns</strong><b>Complete</b>
						                    <div class="progress progress-success slim"><div class="bar" style="width: 100%;"></div></div>
						                </li>
						                <li>
						                    <strong>This Week</strong><b>70%</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 70%;"></div></div>
						                </li>
						                <li>
						                    <strong>This Month</strong><b>50%</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 50%;"></div></div>
						                </li>
						                <li>
						                    <strong>Today</strong><b>22%</b>
						                    <div class="progress progress-danger slim"><div class="bar" style="width: 22%;"></div></div>
						                </li>
						                <li>
						                    <strong><i class="offline pull-left"></i>Sessions Today</strong><b>None</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 0%;"></div></div>
						                </li>
						            </ul>
								</div>

							</div>
							<!-- end Tasks -->
							
							<!-- theme dropdown -->
							<div class="btn-group hidden-phone">
								<a href="javascript:void(0)" class="btn btn-small btn-inverse" id="reset-widget"><i class="icon-refresh"></i></a>
							</div>
							<!-- end theme dropdown-->
							
						</div>
					  	<!-- end demo theme switcher-->
					</div>
					<!-- end span4 -->
				</div>
				<!-- end .contained -->
			</div>
			<!-- end tool bar -->
			
		</header>
		<!-- end header -->
		
	    <div id="main" role="main" class="container-fluid">
	    	
			<div class="contained">
				<!-- aside -->	
				<aside>	
					
					<!-- search box -->
					<div class="main-search">
						<label for="main-semain-searcharch"><i class="icon-search"></i></label>
						<form action="/search/master" id="searchForm" method="POST">
	                    <input id="main-search" type="text" name="searchTerm" placeholder="Search...">
						</form>
                	</div>
					<div class="divider"></div>
					<!-- end search box -->
										
					<!-- aside item: Mini profile -->
					<div class="my-profile">
						<a href="javascript:void(0)" class="my-profile-pic">
							<img src="/includes/jarvis/img/avatar/avatar_0.jpg" alt="" />
						</a>
						<span class="first-child">Welcome <strong>Jim!</strong></span>
						<span><a href="javascript:void(0);">Edit Profile </a></span>
					</div>
					<div class="divider"></div>
					<!-- end aside item: Mini profile -->

					<!-- aside item: Menu -->
					<div class="sidebar-nav-fixed">						
						
						<ul class="menu" id="accordion-menu-js">
							<li class="<cfif event.getCurrentEvent() is 'General.index'>current</cfif>">
								<a href="javascript:void(0)"><i class="icon-off"></i>Dashboard</a>
								<ul>
									<li>
										<a href="/" class="<cfif event.getCurrentEvent() is 'General.index'>expanded</cfif>">Home</a>
									</li>
									<li>
										<a href="/logout" class="logout-js" data-rel="/logout">Logout</a>
									</li>
								</ul>
							</li>
							<li class="">
								<a href="#"><i class="icon-envelope"></i>Inbox</a>
							</li>
							<li class="<cfif event.getCurrentHandler() is 'screener'>current</cfif>">
								<a href="javascript:void(0)"><i class="icon-check"></i>Screeners<span class="badge"><cfoutput>#rc.screenerCount#</cfoutput></span></a>							
								<ul>
									<li>
										<a href="/screener/list" class="<cfif event.getCurrentHandler() is 'screener'>expanded</cfif>">List All</a>
									</li>
								</ul>
							</li>
							<li class="<cfif event.getCurrentEvent() is 'admin.users'>current</cfif>">
								<a href="javascript:void(0)"><i class="icon-user"></i>Users<span class="badge"><cfoutput>#rc.userCount#</cfoutput></span></a>
								<ul>
									<li>
										<a href="/admin/users/manage" class="<cfif event.getCurrentEvent() is 'admin.users'>expanded</cfif>">Manage</a>
									</li>
									<li>
										<a href="/admin/users/manage/new">Add New</a>
									</li>
								</ul>
							</li>
							<li class="">
								<a href="javascript:void(0)"><i class="icon-signal"></i>Statistics &amp; Graphs</a>
								<ul>
									<li>
										<a href="#">Reports</a>
									</li>
									<li>
										<a href="#">Quotas</a>
									</li>
									<li>
										<a href="#">Statistics</a>
									</li>
								</ul>
							</li>
							<li class="">
								<a href="/"><i class="icon-refresh"></i>Refresh</a>
							</li>
						</ul>
						
					</div>
					<div class="divider"></div>
					<!-- end aside item: Menu -->
					
					<!-- aside item: Inbox -->
					<!-- inbox message 1-->
					<div class="mini-inbox">
						<div class="alert inbox">
							<button type="button" class="close" data-dismiss="alert">
								×
							</button>
							
							<a href="javascript:void(0)">
								<img src="/includes/jarvis/img/email-important.png" width="22" height="18" alt="important mail" />
								From:David S...
							</a>
							Dear Jim, Thanks! We are very impressed with the quality of the...
						</div>
						<!-- inbox message 2-->
						<div class="alert inbox">
							<button type="button" class="close" data-dismiss="alert">
								×
							</button>
							<a href="javascript:void(0)">
								<img src="/includes/jarvis/img/email-unread.png" width="22" height="18" alt="important mail" />
								Re:Last Year...
							</a>
							Hey Jim, find the requirements attached! Thx :-)
						</div>

						
					</div>
					<div class="divider"></div>
					<!-- end aside item: Inbox -->
					
					<!-- aside item: Tiny Stats -->
					<div class="number-stats">
				    	<ul>
				        	<li>4579<span>visitors</span></li>
				            <li>571<span>converted</span></li>
				            <li>879<span>abandons</span></li>
				        </ul>
				    </div>
				    <div class="divider"></div>
					<!-- end aside item: Tiny Stats -->
					
					<!-- aside buttons -->
					<div class="aside-buttons">
		                <a href="javascript:void(0)" title="" class="btn btn-primary">Create A Report</a>
		            </div>
		            <div class="divider"></div>
		            <!-- end aside buttons -->
				</aside>
				<!-- aside end -->
				
				<!-- main content -->
				<div id="page-content">
				
					<cfoutput>#renderView()#</cfoutput>
				
				</div>
				<!-- end main content -->
			
				<!-- aside right on high res -->
				<aside class="right">
					
					<!-- sparkline stats -->
					<ul class="mystats indented">
		                <li class="first">
		                    <h1><span>Responses:</span>17,349</h1>
		                    <div class="mychart" id="balance" style="width:35px"></div>
		                </li>
		                <li>
		                    <h1><span>Views:</span>145k+</h1>
		                    <div class="mychart" id="clicks" style="width:35px"></div>
		                </li>
		                <li>
		                    <h1><span>Accepted:</span>1,120</h1>
		                    <div class="mychart" id="subscribe" style="width:35px"></div>
		                </li>
		                <li class="last">
		                    <h1><span>Confirmed:</span>945+</h1>
		                    <div class="mychart" id="support" style="width:35px"></div>
		                </li>
		            </ul>
		            <div class="divider"></div>
		            <!-- end sparkline stats -->

					<!-- aside progress bars -->
					<ul class="indented aside-progress-stats">
						<li>
							<!-- easy pie chart -->
							<div class="easypie">
								<div class="percentage" data-percent="68">
									<span>68</span>%
								</div>
								<div class="easypie-text">
									Outsanding Objectives
								</div>
							</div>
							<!-- end easy pie chart -->
						</li>
		                <li>
		                    <strong>Due This Month</strong><strong class="pull-right">90%</strong>
		                    <div class="progress progress-danger slim"><div class="bar" data-percentage="90"></div></div>
		                </li>
		                <li>
		                    <strong>Due This Week</strong><strong class="pull-right">66%</strong>
		                    <div class="progress progress-info slim"><div class="bar" data-percentage="66"></div></div>
		                </li>
		                <li>
		                    <strong>Due Today</strong><strong class="pull-right">48%</strong>
		                    <div class="progress progress-info slim"><div class="bar" data-percentage="48"></div></div>
		                </li>
		                <li>
		                    <strong>Campaign Started</strong><strong class="pull-right">33%</strong>
		                    <div class="progress progress-info slim"><div class="bar" data-percentage="33"></div></div>
		                </li>
		            </ul>
		            <div class="divider"></div>
		            <!-- end aside progress bars -->
					
					<!-- date picker -->
					<div id="datepicker"></div>
					<div class="divider"></div>
					<!-- end date picker -->
					
					<!-- aside buttons -->
					<div class="aside-buttons">
		                <a href="javascript:void(0);" title="" class="btn btn-info">Create A Reminder</a>
		                <a href="javascript:void(0);" title="" class="btn btn-success">New Campaign</a>
		                <a href="javascript:void(0);" title="" class="btn btn-danger">Reset Statistics</a>
		            </div>
		            <div class="divider"></div>
		            <!-- end aside buttons -->
				</aside>
				
				<!-- end aside right -->
			</div>
			
	    </div><!--end fluid-container-->
		<div class="push"></div>
	</div>
	<!-- end .height wrapper -->
	
	<!-- footer -->
	
	<!-- if you like you can insert your footer here -->
	
	<!-- end footer -->

    <!--================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
    
    <script>window.jQuery || document.write('<script src="/includes/jarvis/js/libs/jquery.min.js"><\/script>')</script>
    	<!-- OPTIONAL: Use this migrate script for plugins that are not supported by jquery 1.9+ -->
		<!-- DISABLED <script src="/includes/jarvis/js/libs/jquery.migrate-1.0.0.min.js"></script> -->
		
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <script>window.jQuery.ui || document.write('<script src="/includes/jarvis/js/libs/jquery.ui.min.js"><\/script>')</script>
    
    <!-- IMPORTANT: Jquery Touch Punch is always placed under Jquery UI -->
    <script src="/includes/jarvis/js/include/jquery.ui.touch-punch.min.js"></script>
    
    <!-- REQUIRED: Mobile responsive menu generator -->
	<script src="/includes/jarvis/js/include/selectnav.min.js"></script>

	<!-- REQUIRED: Datatable components -->
    <script src="/includes/jarvis/js/include/jquery.accordion.min.js"></script>

	<!-- REQUIRED: Toastr & Jgrowl notifications  -->
    <script src="/includes/jarvis/js/include/toastr.min.js"></script>
    <script src="/includes/jarvis/js/include/jquery.jgrowl.min.js"></script>
    
    <!-- REQUIRED: Sleek scroll UI  -->
    <script src="/includes/jarvis/js/include/slimScroll.min.js"></script>
	
	<!-- REQUIRED: Datatable components -->
	<script src="/includes/jarvis/js/include/jquery.dataTables.min.js"></script>
	<script src="/includes/jarvis/js/include/DT_bootstrap.min.js"></script>

    <!-- REQUIRED: Form element skin  -->
    <script src="/includes/jarvis/js/include/jquery.uniform.min.js"></script>

	<!-- REQUIRED: AmCharts  -->
    <script src="/includes/jarvis/js/include/amchart/amcharts.js"></script>
	<script src="/includes/jarvis/js/include/amchart/amchart-draw1.js"></script>

	<script type="text/javascript">
		var ismobile = (/iphone|ipad|ipod|android|blackberry|mini|windows\sce|palm/i.test(navigator.userAgent.toLowerCase()));	
	    if(!ismobile){
	    	
	    	/** ONLY EXECUTE THESE CODES IF MOBILE DETECTION IS FALSE **/
	    	
	    	/* REQUIRED: Datatable PDF/Excel output componant */
	    	
	    	document.write('<script src="/includes/jarvis/js/include/ZeroClipboard.min.js"><\/script>'); 
	    	document.write('<script src="/includes/jarvis/js/include/TableTools.min.js"><\/script>'); 
	    	document.write('<script src="/includes/jarvis/js/include/select2.min.js"><\/script>');
	    	document.write('<script src="/includes/jarvis/js/include/jquery.excanvas.min.js"><\/script>');
	    	document.write('<script src="/includes/jarvis/js/include/jquery.placeholder.min.js"><\/script>');
	    	
			/** DEMO SCRIPTS **/
	        $(function() {
	            /* show tooltips 
				$.jGrowl("I am the <strong>smartest Admin Template</strong> on <strong>wrapbootstrap.com</strong>. Don't forget to check out all my pages.", { 
					header: 'Welcome, I am Jarvis!', 
					sticky: false,
					life: 5000,
					speed: 500,
					theme: 'with-icon',
					position: 'top-right', //this is default position
					easing: 'easeOutBack',
					animateOpen: { 
						height: "show"
					},
					animateClose: { 
						opacity: 'hide' 
					}
				});	
				*/
	        });
	        /** end DEMO SCRIPTS **/
	        
	    }else{
	    	
	    	/** ONLY EXECUTE THESE CODES IF MOBILE DETECTION IS TRUE **/
	    	
			document.write('<script src="/includes/jarvis/js/include/selectnav.min.js"><\/script>');
	    }
	</script>

    <!-- REQUIRED: iButton -->
    <script src="/includes/jarvis/js/include/jquery.ibutton.min.js"></script>
	
	<!-- REQUIRED: Justgage animated charts -->
	<script src="/includes/jarvis/js/include/raphael.2.1.0.min.js"></script>
    <script src="/includes/jarvis/js/include/justgage.min.js"></script>
    
    <!-- REQUIRED: Morris Charts -->
    <script src="/includes/jarvis/js/include/morris.min.js"></script> 
    <script src="/includes/jarvis/js/include/morris-chart-settings.js"></script> 
    
    <!-- REQUIRED: Animated pie chart -->
    <script src="/includes/jarvis/js/include/jquery.easy-pie-chart.min.js"></script>
    
    <!-- REQUIRED: Functional Widgets -->
    <script src="/includes/jarvis/js/include/jarvis.widget.min.js"></script>
    <script src="/includes/jarvis/js/include/mobiledevices.min.js"></script>
    <!-- DISABLED (only needed for IE7 <script src="/includes/jarvis/js/include/json2.js"></script> -->
	
	<!-- REQUIRED: Full Calendar -->
    <script src="/includes/jarvis/js/include/jquery.fullcalendar.min.js"></script>		
    
    <!-- REQUIRED: Flot Chart Engine -->
    <script src="/includes/jarvis/js/include/jquery.flot.cust.min.js"></script>			
    <script src="/includes/jarvis/js/include/jquery.flot.resize.min.js"></script>		
    <script src="/includes/jarvis/js/include/jquery.flot.tooltip.min.js"></script>		
    <script src="/includes/jarvis/js/include/jquery.flot.orderBar.min.js"></script> 	
    <script src="/includes/jarvis/js/include/jquery.flot.fillbetween.min.js"></script>	
    <script src="/includes/jarvis/js/include/jquery.flot.pie.min.js"></script> 	 
    
    <!-- REQUIRED: Sparkline Charts -->
    <script src="/includes/jarvis/js/include/jquery.sparkline.min.js"></script>

	<!-- REQUIRED: Infinite Sliding Menu (used with inbox page) -->
	<script src="/includes/jarvis/js/include/jquery.inbox.slashc.sliding-menu.js"></script> 

	<!-- REQUIRED: Form validation plugin -->
    <script src="/includes/jarvis/js/include/jquery.validate.min.js"></script>
    
    <!-- REQUIRED: Progress bar animation -->
    <script src="/includes/jarvis/js/include/bootstrap-progressbar.min.js"></script>
    
    <!-- REQUIRED: wysihtml5 editor -->
    <script src="/includes/jarvis/js/include/wysihtml5-0.3.0.min.js"></script>
    <script src="/includes/jarvis/js/include/bootstrap-wysihtml5.min.js"></script>

	<!-- REQUIRED: Masked Input -->
    <script src="/includes/jarvis/js/include/jquery.maskedinput.min.js"></script>
    
    <!-- REQUIRED: Bootstrap Date Picker -->
    <script src="/includes/jarvis/js/include/bootstrap-datepicker.min.js"></script>

    <!-- REQUIRED: Bootstrap Wizard -->
    <script src="/includes/jarvis/js/include/bootstrap.wizard.min.js"></script> 
    
	<!-- REQUIRED: Bootstrap Color Picker -->
    <script src="/includes/jarvis/js/include/bootstrap-colorpicker.min.js"></script>
    
	<!-- REQUIRED: Bootstrap Time Picker -->
    <script src="/includes/jarvis/js/include/bootstrap-timepicker.min.js"></script> 
    
    <!-- REQUIRED: Bootstrap Prompt -->
    <script src="/includes/jarvis/js/include/bootbox.min.js"></script>
    
    <!-- REQUIRED: Bootstrap engine -->
    <script src="/includes/jarvis/js/include/bootstrap.min.js"></script>
    
    <!-- DO NOT REMOVE: Theme Config file -->
    <script src="/includes/jarvis/js/config.js"></script>
    
    <!-- d3 library placed at the bottom for better performance -->
    <!-- DISABLED  <script src="/includes/jarvis/js/include/d3.v3.min.js"></script> -->
    <!-- DISABLED  <script src="/includes/jarvis/js/include/adv_charts/d3-chart-1.js"></script> -->
    <!-- DISABLED  <script src="/includes/jarvis/js/include/adv_charts/d3-chart-2.js"></script> -->

    <!-- Google Geo Chart -->
    <!-- DISABLED <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script> -->
    <!-- DISABLED <script type='text/javascript' src='https://www.google.com/jsapi'></script>-->
    <!-- DISABLED <script src="/includes/jarvis/js/include/adv_charts/geochart.js"></script> -->
	
	<script src="/includes/javascript/main.js"></script>
    
    <!-- end scripts -->
  </body>
</html>