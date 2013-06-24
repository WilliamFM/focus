
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
					<a href="/" id="logo"><h1> FocusJr <span class="hidden-phone"></span> </h1></a>
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
				
				<!-- main content -->
				<div id="page-content">
				
					<cfoutput>#renderView()#</cfoutput>
				
				</div>
				<!-- end main content -->
			
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
    
	<style type="text/css">
	#page-content {
		margin-right: 10px !important;
		margin-left: 10px !important;
	}	
	</style>
	
    <!-- end scripts -->
  </body>
</html>