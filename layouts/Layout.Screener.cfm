<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>focusjr.com Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="/includes/dashboard/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link href="/includes/dashboard/inspiritas.css" rel="stylesheet">
    <link href="/includes/styles/main.css" rel="stylesheet">
    
<style type="text/css">

.avatar {
	width: 40px;
	height: 40px;
}

.contentBlock {
	padding: 10px;
}

</style>
    
</head>

<body>

<!-- Navbar
  ================================================== -->
<div class="navbar navbar-static-top navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <a class="brand" href="#">focusjr.com</a>
      <span class="tagline">Generic Rapid Application Programming Environment <a href="http://github.com/grapestack/grapestack/" target="_github">Read more.</a></span>


    </div>
  </div>
</div>

<div class="container">
    <div class="row-fluid">
        <div class="span3">
            <aside>
                <nav>
                    <ul class="nav">
                      <li class="selected">
                        <a href="/"></a>
                      </li>
                    </ul>
                </nav>
            </aside>
        </div>
        <div class="span9" id="content-wrapper">
            <div id="content">

             <section id="stats">
                  <header>
                    <div class="pull-right">

                    </div>
                    <h1><cfoutput>#rc.screener.screenerName#</cfoutput></h1>
                  </header>
             </section>

    <script src="/includes/assets/js/jquery.js"></script>


<div id="mainBody">
<cfoutput>#renderView()#</cfoutput>
</div>

            </div>
        </div>
    </div>

    <div id="push"></div>

</div><!-- /container -->

    <div id="footer">
      <div class="container">
        <p class="muted credit">&copy; <cfoutput>#dateFormat(now(), "yyyy")#</cfoutput> focusjr.com</p>
      </div>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/includes/dashboard/js/highcharts.js"></script>
    <script src="/includes/dashboard/js/inspiritas.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.6/angular.min.js"></script>
    <script src="/includes/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="/includes/javascript/main.js"></script>

  </body>
</html>