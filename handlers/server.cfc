<cfcomponent output="false">

<cfproperty name="cloudAPI" inject="coldbox:myPlugin:cloudAPI">

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


	<cffunction name="clone" returntype="void" output="false">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
        
    <cfset rc.serverAPI = cloudAPI.getServerAPI()>
        
    <cfhttp url="http://localhost:5985/config/scheduled" result="rc.getSchedule"></cfhttp>

	<cfset rc.record = deserializeJSON(rc.getSchedule.FileContent)>  

    <cfhttp url="#rc.serverAPI#/servers/#rc.subitem#" method="GET" result="rc.getCloneDetails">
        <cfhttpparam name="Content-Type" type="header" value="application/json">
        <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
    </cfhttp>

<cfoutput>
	<cfsavecontent variable="rc.body">{
    "createImage" : {
        "name" : "clone-#deserializeJSON(rc.getCloneDetails.fileContent).server.name#",
        "metadata": {
            "ImageType": "Clone",
            "ImageVersion": "1.0"
        }
    }
}</cfsavecontent>
</cfoutput>

    <cfhttp url="#replaceNoCase(rc.serverAPI, 'v2', 'v1.1')#/servers/#rc.subitem#/createImage" method="POST" result="rc.clone">
        <cfhttpparam name="Content-Type" type="header" value="application/json">
        <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
        <cfhttpparam type="body" value="#rc.body#">
    </cfhttp>
   
<cfdump var="#rc.authtoken#">
<cfdump var="#replaceNoCase(rc.serverAPI, 'v2', 'v1.1')#/servers/#rc.subitem#/createImage">
<cfdump var="#rc.clone.filecontent#">
<cfdump var="#deserializeJSON(rc.clone.filecontent)#">
<cfabort>
    
    <cfset arrayAppend(record.actions, {"action":"create","image":"#rc.clone#"})>
    
    <cfhttp url="http://localhost:5985/config/scheduled" method="put">
        <cfhttpparam type="header" name="Content-Type" value="application/json">
        <cfhttpparam type="body" value="#rc.record#">
    </cfhttp>
    
        <cfif event.isProxyRequest()>
	    <cfset event.setView(view="home",noLayout=true)>
        <cfelse>
	    <cfset event.setLayout("Layout.Home")>
	    <cfset event.setView("home")>
        </cfif>
        
    </cffunction>

	<cffunction name="list" returntype="void" output="false">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
        
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

<cfloop array="#rc.serverEndpoint.endpoints#" item="local.item">
<cfif local.item.region eq 'ORD'>
<cfset rc.endpoint = local.item>
</cfif>
</cfloop>

</cfif>

</cfloop>

<cfoutput>

<cfset rc.authtoken = rc.result.access.token.id>
<cfset rc.accountID = rc.result.access.user.id>

<cfset rc.serverAPI = replaceNoCase(rc.endpoint.publicURL, 'dfw', 'ord')>

<cfhttp url="#rc.serverAPI#/servers/detail" method="GET" result="rc.serverList">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

</cfoutput>

	    <cfset event.setLayout("Layout.Home")>
	    <cfset event.setView("server/list")>
        
	</cffunction>

	<cffunction name="add" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
        
    <cfset rc.serverAPI = cloudAPI.getServerAPI()>

<cfoutput>

<cfset rc.sh = "wget https://raw.github.com/grapestack/grapestack/master/install.sh -O /install.sh; chmod +x /install.sh; /install.sh">

<cffile action="read" file="/grape/domain" variable="local.domain">
<cffile action="read" file="/grape/host" variable="local.host">
<cffile action="read" file="/grape/master" variable="local.master">

<cfsavecontent variable="rc.sh">
##!/bin/sh
touch /var/lock/subsys/local
wget https://raw.github.com/grapestack/grapestack/master/install.sh -O /install.sh; chmod +x /install.sh; DOMAIN=#trim(local.domain)# HOST=#trim(local.host)# MASTER=#trim(local.master)# /install.sh;
</cfsavecontent>

<cffile action="read" file="/grape/cluster/keys/cluster_key.pub" variable="local.newCert">

<cfsavecontent variable="rc.sh2">#local.newCert#</cfsavecontent>

<cfset rc.sh64 = ToBase64(rc.sh)>
<cfset rc.sh642 = ToBase64(rc.sh2)>

<cfsavecontent variable="rc.body">
{
    "server" : {
        "name" : "grapestack-new-#dateFormat(now(), "yyyymmdd")##timeformat(now(),"hhmmsstt")#",
        "imageRef" : "da1f0392-8c64-468f-a839-a9e56caebf07",
        "flavorRef" : 2,
        "metadata" : {
            "GRAPE Stack" : "grapestack-#dateFormat(now(), "yyyymmdd")##timeformat(now(),"hhmmsstt")#" 
        },
		"personality" : [
			{
                "path" : "/etc/rc.d/rc.local",
                "contents" : "#rc.sh64#" 
            },
			{
                "path" : "/root/.ssh/authorized_keys",
                "contents" : "#rc.sh642#" 
            }
        ] 
    }
	
}
</cfsavecontent>
</cfoutput>

<cfhttp url="#rc.serverAPI#/servers" method="POST" result="rc.create">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
    <cfhttpparam type="body" value="#rc.body#">
</cfhttp>

<cfset rc.createResponse = deserializeJSON(rc.create.FileContent)>

<cfset rc.pass = #rc.createResponse.server.adminPass#>

<cfhttp url="#rc.serverAPI#/servers/#rc.createResponse.server.id#" method="GET" result="rc.detail">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

<cfset rc.detailResponse = deserializeJSON(rc.detail.FileContent)>

<cfif isDefined("rc.detailResponse.server.addresses.private")>
	<cfset rc.privateIP = #rc.detailResponse.server.addresses.private[1].addr#>
<cfelse>
	<cfset rc.privateIP = '0.0.0.0'>
</cfif>

    <cfhttp url="http://localhost:5985/config/scheduled" result="rc.getSchedule"></cfhttp>

	<cfset rc.record = deserializeJSON(rc.getSchedule.FileContent)>  
    
    <cfset arrayAppend(rc.record.actions, {"action":"new","id":"#rc.createResponse.server.id#","status":"pending"})>
    
    <cfhttp url="http://localhost:5985/config/scheduled" method="put">
        <cfhttpparam type="header" name="Content-Type" value="application/json">
        <cfhttpparam type="body" value="#serializeJSON(rc.record)#">
    </cfhttp>
    
<cfhttp url="#rc.serverAPI#/servers/detail" method="GET" result="rc.serverList">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

	    <cfset event.setLayout("Layout.Home")>
	    <cfset event.setView("home")>
        
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

<!------------------------------------------- PRIVATE EVENTS ------------------------------------------>


</cfcomponent>