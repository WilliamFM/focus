<cfcomponent name="cloudAPI" hint="This is an api plugin" extends="coldbox.system.plugin" output="false" cache="true" cachetimeout="20">

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->

<cffunction name="init" access="public" returntype="any" output="false">
  <cfargument name="controller" type="any" required="true">
    
  <cfset super.Init(arguments.controller) />
  <cfset setpluginName("cloud API Plugin")>
  <cfset setpluginVersion("1.0")>
  <cfset setpluginDescription("This is a cloud API plugin.")>
  <!--- Any constructor code you want --->

  <cfreturn this>
</cffunction>
        
<!------------------------------------------- PUBLIC ------------------------------------------->

<cffunction name="getServerAPI" output="false" access="public" returntype="string" hint="Make a hash">

  <cfset var event = controller.getRequestService().getContext()>
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

<cfset rc.authtoken = rc.result.access.token.id>
<cfset rc.accountID = rc.result.access.user.id>

<cfset rc.serverAPI = replaceNoCase(rc.endpoint.publicURL, 'dfw', 'ord')>

<cfreturn rc.serverAPI>

</cffunction>
   
</cfcomponent>