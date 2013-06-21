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

      <div class="nav-collapse collapse" id="main-menu">
        <div class="auth pull-right">
            <img class="avatar" src="/includes/dashboard/images/avatar.png">
            <span class="name">GRAPE Stack</span><br/>
            <span class="links">
                <a href="#">Customize</a>
            </span>
        </div>
      </div>
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
                        <a href="/"><i class="icon-play"></i> Dashboard</a>
                      </li>

<li class="optionsMenu">
<a href="/screener/list"><i class="icon-user icon-white"></i> Manage Screeners</a>
</li>

<li class="optionsMenu">
<a href="/admin/users/manage"><i class="icon-user icon-white"></i> Manage Users</a>
</li>
<li class="optionsMenu">
<a href="#/credentials/add"><i class="icon-lock icon-white"></i> API Credentials</a>
</li>
<li class="optionsMenu">
<a href="/server/add" disabled><i class="icon-plus icon-white"></i> Add New Server</a>
</li>
<!---
<li class="optionsMenu">
<a href="#/domain/add"><i class="icon-plus icon-white"></i> Add New Domain</a>
</li>
--->

                    </ul>
                </nav>
            </aside>
        </div>
        <div class="span9" id="content-wrapper">
            <div id="content">

             <section id="stats">
                  <header>
                    <div class="pull-right">
                        <a class="btn btn-small" href="/logout">Log Out</a>
                    </div>
                    <h1><cfif security('admin')>Managing GRAPE Stack for focusjr.com<cfelse>Using focusjr.com as <cfoutput>#session.User.email#</cfoutput></cfif></h1>
                  </header>
             </section>

    <script src="/includes/assets/js/jquery.js"></script>

<cfif event.getCurrentEvent() is not 'General.index'>
<div id="mainBody">
<cfelse>
<div>
</cfif>
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