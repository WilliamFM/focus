<style type="text/css">

.tiny {
font-size: .8em;
}

input {
	width: auto;
}

</style>

<div id="mainBody">

<section id="tables">

<div class="row-fluid">
	  <div class="span6">
			<cfoutput>
            
                    <form method="POST" action="/user/create" class="fixedForm">
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        Email:
                        </div>
                        
                        <div class="span4">
                        </div>
                        
                        <div class="span4">
                        <input type="text" name="email" id="semail" class="field" />
                        </div>
                    
                    </div>
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        Password:
                        </div>
                        
                        <div class="span4">
                        </div>
                        
                        <div class="span4 clearfix">
                        <input type="password" name="password" id="spassword" class="field" />
                        </div>
                    
                    </div>
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        Verify:
                        </div>
                        
                        <div class="span4">
                        </div>
                        
                        <div class="span4 rightspan4 clearfix">
                        <input type="password" name="vpassword" id="vpassword" class="field" />
                        </div>
                    
                    </div>
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        <input type="submit" value="Create Account" id="signupButton" class="button btn" />
                        </div>
                        
                        <div class="span4">

                        </div>
                        
                        <div class="span4 rightspan4 clearfix">
                        
                        </div>
                    
                    </div>
                    
            
                
                <div class="row-fluid">
                
                    <div class="span4">
                   
                    </div>
                    
                    <div class="span4">
                    
                    </div>
                    
                    <div class="span4 clearfix">            
                    
                    </div>
                
                </div>
            
                    </form>
            </cfoutput>
        </div><!--/span-->
                    
		<div class="span6">             
            <cfoutput>
            
                
                    <form method="POST" action="/user/login" class="fixedForm">
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        Email:
                        </div>
                        
                        <div class="span4">
                        </div>
                        
                        <div class="span4 clearfix">
                        <input type="text" name="email" id="email" class="field" />
                        </div>
                    
                    </div>
                    
                    <div class="row-fluid">
                    
                        <div class="span4 leftspan4">
                        Password:
                        </div>
                        
                        <div class="span4 middlespan4">
                        </div>
                        
                        <div class="span4 rightspan4 clearfix">
                        <input type="password" name="password" id="password" class="field" />
                        </div>
                    
                    </div>       
                    
                    <div class="row-fluid">
                    
                        <div class="span4">
                        <input type="button" value="Login" id="loginButton" class="button btn" />
                        </div>
                        
                        <div class="span4 clearfix">

                        </div>
                        
                        <div class="span4">
                        
                        </div>
                    
                    </div>
                    
                <div class="row-fluid">
                
                    <div class="span4">
                   
                    </div>
                    
                    <div class="span4">
                    <hr  />
                    <a href="http://www.facebook.com/dialog/permissions.request?app_id=0000000000&display=page&redirect_uri=http://www.focusjr.com/facebook&response_type=code&fbconnect=1&perms=email"><img src="/includes/images/facebook.png" border="0" /></a>
                    </div>
                    
                    <div class="span4 clearfix">            
                    
                    </div>
                    
                 </div>
                
            
                    </form>
            </cfoutput>
		</div>
</div>

</div>

</section>