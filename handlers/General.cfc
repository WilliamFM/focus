<cfcomponent output="false">

<cfproperty name="hasher" inject="coldbox:myPlugin:hasher" scope="cachebox" ref="testing">
<cfproperty name="ORMService" inject="coldbox:plugin:ORMService" scope="instance">

	<cfscript>
		this.event_cache_suffix = "";
		this.prehandler_only 	= "";
		this.prehandler_except 	= "";
		this.posthandler_only 	= "";
		this.posthandler_except = "";
		this.aroundHandler_only = "";
		this.aroundHandler_except = "";		
		/* HTTP Methods Allowed for actions. */
		/* Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'} */
		this.allowedMethods = structnew();
	</cfscript>

<!----------------------------------------- IMPLICIT EVENTS ------------------------------------------>

	<!--- UNCOMMENT HANDLER IMPLICIT EVENTS

	<!--- preHandler --->
	<cffunction name="preHandler" returntype="void" output="false" hint="Executes before any event in this handler">
		<cfargument name="event">
		<cfargument name="action" hint="The intercepted action"/>
		<cfargument name="eventArguments" hint="The event arguments an event is executed with (if any)"/>
		<cfscript>
			var rc = event.getCollection();
		</cfscript>
	</cffunction>

	<!--- postHandler --->
	<cffunction name="postHandler" returntype="void" output="false" hint="Executes after any event in this handler">
		<cfargument name="event">
		<cfargument name="action" 			hint="The intercepted action"/>
		<cfargument name="eventArguments" 	hint="The event arguments an event is executed with (if any)"/>
		<cfscript>
			var rc = event.getCollection();
		</cfscript>
	</cffunction>
	
	<!--- aroundHandler --->
	<cffunction name="aroundHandler" returntype="void" output="false" hint="Executes around any event in this handler">
		<cfargument name="event">
		<cfargument name="targetAction" 	hint="The intercepted action UDF method"/>
		<cfargument name="eventArguments" 	hint="The event arguments an event is executed with (if any)"/>
		<cfscript>
			var rc = event.getCollection();
			// process targeted action
			argument.targetAction(event);
		</cfscript>
	</cffunction>

	<!--- onMissingAction --->
	<cffunction name="onMissingAction" returntype="void" output="false" hint="Executes if a request action (method) is not found in this handler">
		<cfargument name="event" >
		<cfargument name="missingAction" 	hint="The requested action string"/>
		<cfargument name="eventArguments" 	hint="The event arguments an event is executed with (if any)"/>
		<cfscript>
			var rc = event.getCollection();
		</cfscript>
	</cffunction>
	
	<!--- onError --->
	<cffunction name="onError" output="false" hint="Executes if ANY action causes an exception">
		<cfargument name="event">
		<cfargument name="faultAction" 		hint="The action that caused the error"/>
		<cfargument name="exception"  		hint="The exception structure"/>
		<cfargument name="eventArguments" 	hint="The event arguments an event is executed with (if any)"/>
		<cfscript>	
			
		</cfscript>
	</cffunction>

	--->

<!------------------------------------------- PUBLIC EVENTS ------------------------------------------>

	<!--- Default Action --->
	<cffunction name="index" returntype="any" output="false" hint="My main event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>

        <cfset rc.hasher = getColdboxOCM().set('me', 'test', 120, 20)>
        <cfset rc.hasher = getColdboxOCM().get('me')>
        <cfset rc.hasher = getColdboxOCM().get('wirebox-plugins.hasher').getHash()>
        
		<cfset rc.welcomeMessage = "Welcome">        
        
        <cfset event.setLayout("Layout.Main")>
        
        <cfhttp url="http://localhost:5985/config/rackspace" result="local.rackspace"></cfhttp>
        <cfoutput>
                <cfset rc.key = #deserializeJSON(local.rackspace.FileContent).key#>
                <cfset rc.username = #deserializeJSON(local.rackspace.FileContent).username#>
        </cfoutput>
        
<cfhttp url="http://localhost:5985/config/rackspace" result="rc.credentials"></cfhttp>
<cfset rc.key = #trim(deserializeJSON(rc.credentials.FileContent).key)#>
<cfset rc.username = #trim(deserializeJSON(rc.credentials.FileContent).username)#>

<cfoutput>
<cfsavecontent variable="rc.body">{"auth":{"RAX-KSKEY:apiKeyCredentials":{"username":"#rc.username#", "apiKey":"#rc.key#"}}}</cfsavecontent>
</cfoutput>

<cfhttp url="https://identity.api.rackspacecloud.com/v2.0/tokens" method="POST" result="rc.token">
<cfhttpparam name="Content-Type" type="header" value="application/json">
<cfhttpparam type="body" value="#rc.body#">
</cfhttp>

<cfset rc.result="#deserializeJSON(rc.token.filecontent)#">



<cfloop array="#rc.result["access"]["serviceCatalog"]#" index="local.item">

<cfif local.item.name eq 'cloudServersOpenStack'>

<cfset rc.serverEndpoint = local.item>

<cfloop collection="#rc.serverEndpoint.endpoints#" item="local.index">

<cfset local.item = rc.serverEndpoint.endpoints[local.index]>

<cfif local.item.region eq 'DFW'>
<cfset rc.endpoint = local.item>
</cfif>
</cfloop>

</cfif>

</cfloop>

<cfoutput>

<cfset rc.authtoken = rc.result.access.token.id>
<cfset rc.accountID = rc.result.access.user.id>

<cfset rc.serverAPI = replaceNoCase(rc.endpoint.publicURL, 'ord', 'dfw')>

<cfhttp url="#rc.serverAPI#/servers/detail" method="GET" result="rc.serverList">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

</cfoutput>

        
        <cfif isDefined("session.User")>

        <cfif isDefined("rc.noLayout")>
	    <cfset event.setView(view="home",noLayout=true)>
        <cfelse>
	    <cfset event.setLayout("Layout.Home")>
	    <cfset event.setView("home")>
        </cfif>

        <cfelse>
	        <cfset event.setLayout("Layout.Main")>
			<cfset event.setView("login")>
        </cfif>
        
	</cffunction>

	<!--- Do Something Action --->
	<cffunction name="doSomething" returntype="void" output="false" hint="Do Something">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>

		<cfset setNextEvent("general.index")>
	</cffunction>

	<!--- Default Action --->
	<cffunction name="secure" returntype="void" output="false" hint="My secure event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
			
		<cfset event.setView("secure")>
	</cffunction>

	<cffunction name="test" returntype="any" output="false" hint="My test event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		<cfset event.setView("test")>

	</cffunction>
    
	<cffunction name="admin" returntype="any" output="false" hint="My admin event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		<cfset event.setView("admin")>

	</cffunction>

<!------------------------------------------- PRIVATE EVENTS ------------------------------------------>


	<cffunction name="poll" returntype="any" output="false" hint="My main event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
       
        <cfhttp url="http://localhost:5985/config/rackspace" result="local.rackspace"></cfhttp>
        <cfoutput>
                <cfset rc.key = #deserializeJSON(local.rackspace.FileContent).key#>
                <cfset rc.username = #deserializeJSON(local.rackspace.FileContent).username#>
        </cfoutput>
        
<cfhttp url="http://localhost:5985/config/rackspace" result="rc.credentials"></cfhttp>
<cfset rc.key = #trim(deserializeJSON(rc.credentials.FileContent).key)#>
<cfset rc.username = #trim(deserializeJSON(rc.credentials.FileContent).username)#>

<cfoutput>
<cfsavecontent variable="rc.body">{"auth":{"RAX-KSKEY:apiKeyCredentials":{"username":"#rc.username#", "apiKey":"#rc.key#"}}}</cfsavecontent>
</cfoutput>

<cfhttp url="https://identity.api.rackspacecloud.com/v2.0/tokens" method="POST" result="rc.token">
<cfhttpparam name="Content-Type" type="header" value="application/json">
<cfhttpparam type="body" value="#rc.body#">
</cfhttp>

<cfset rc.result="#deserializeJSON(rc.token.filecontent)#">

<cfloop array="#rc.result["access"]["serviceCatalog"]#" index="local.item">

<cfif local.item.name eq 'cloudServersOpenStack'>

<cfset rc.serverEndpoint = local.item>

<cfloop collection="#rc.serverEndpoint.endpoints#" item="local.index">

<cfset local.item = rc.serverEndpoint.endpoints[local.index]>

<cfif local.item.region eq 'DFW'>
<cfset rc.endpoint = local.item>
</cfif>
</cfloop>

</cfif>

</cfloop>

<cfoutput>

<cfset rc.authtoken = rc.result.access.token.id>
<cfset rc.accountID = rc.result.access.user.id>

<cfset rc.serverAPI = replaceNoCase(rc.endpoint.publicURL, 'ord', 'dfw')>

<cfhttp url="#rc.serverAPI#/servers/detail" method="GET" result="rc.serverList">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

    <cfhttp url="http://localhost:5985/config/scheduled" result="rc.getSchedule"></cfhttp>

	<cfset rc.record = deserializeJSON(rc.getSchedule.FileContent)>

</cfoutput>

<cfoutput>



</cfoutput>
        
        <cfif isDefined("session.User")>

	    <cfset event.setView(view="update",noLayout=true)>

        <cfif event.isProxyRequest()>
	    <cfset event.setView(view="update",noLayout=true)>
        <cfreturn renderView(view="update",noLayout=true)>
        </cfif>

        <cfelse>
	        <cfset event.setLayout("Layout.Main")>
			<cfset event.setView("login")>
        </cfif>
        
	</cffunction>


</cfcomponent>