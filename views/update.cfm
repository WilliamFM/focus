<div id="mainBody">

<cfoutput>

                <section id="stats">
                  <div class="row-fluid">
                    <div class="span2">
                        <div class="kpi">#arrayLen(deserializeJSON(rc.serverList.fileContent)['servers'])#</div>
                        <div><small>total servers</small></div>
                    </div>
                  </div>
                </section>

<section id="tables">
<div class="sub-header">
      <h2>Servers</h2>
    </div>
                  <table class="table table-striped full-section table-hover">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>ID</th>
                        <th>Status</th>
                        <th>Create Date</th>
                        <th>RAM</th>
                        <th>IP</th>
                        <th>Region</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>

<cfloop array="#deserializeJSON(rc.serverList.fileContent)['servers']#" index="item">

<cfhttp url="#rc.serverAPI#/flavors/#item.flavor.id#" method="GET" result="rc.flavorResult">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

<cfset rc.flavor = deserializeJSON(rc.flavorResult.FileContent)>

                      <tr>
                        <td class="primary"><p>#item.name#</p></td>
                        <td>#item.id#</td>
                        <td>
                            <div class="progress progress-mini">
                              <div class="bar" style="width: #item.progress#%"></div>
                            </div>
                          <label class="tiny"><cfif findNoCase('-new-', item.name)>SETUP<cfelse>#item.status#</cfif> #item.progress#%</label>
                        </td>
                        <td>#dateFormat(item.created, "mm/dd/yy")# #timeFormat(item.created, "hh:mm ss tt")#</td>
                        <td>#rc.flavor.flavor.ram#MB</td>
                        <td><cftry><cfloop array="#item.addresses.public#" index="address"><cfif address.version eq 4>#address.addr#</cfif></cfloop><br /><cfloop array="#item.addresses.private#" index="address"><cfif address.version eq 4>#address.addr#</cfif></cfloop><cfcatch type="any">unassigned</cfcatch></cftry></td>
						<td>#rc.endpoint.region#</td>
                        <td><!---<a href="/server/clone/server/#item.id#" class="btn btn-inverse btn-mini"><i class="icon-plus-sign icon-white"></i> clone</a>---></td>
                      </tr>
</cfloop>

                    </tbody>
                  </table>
  </section>

</cfoutput>

</div>


<cfoutput>
<cfif arrayLen(rc.record.actions)>

<cfset count=0>
<cfloop array="#rc.record.actions#" index="scheduledAction">

<cfset count = count+1>

<cfif scheduledAction.status is 'installing'>

<cfswitch expression="#scheduledAction.action#">
<cfcase value="complete">

<cfhttp url="#rc.serverAPI#/servers/#scheduledAction.id#" method="GET" result="rc.detail">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

<cfset rc.detailResponse = deserializeJSON(rc.detail.FileContent).server>

<cfif isDefined("rc.detailResponse.addresses.public")>
<cfloop array="#rc.detailResponse.addresses.public#" index="address">
<cfif address.version eq 4>
	<cfset rc.publicIP = #address.addr#>
</cfif>
</cfloop>
</cfif>

<cfif isDefined("rc.detailResponse.addresses.private")>
<cfloop array="#rc.detailResponse.addresses.private#" index="address">
<cfif address.version eq 4>
	<cfset rc.privateIP = #address.addr#>
</cfif>
</cfloop>
</cfif>

<cfhttp url="http://#rc.publicIP#:8080/complete.htm" result="rc.status"></cfhttp>

<cfif #trim(rc.status.fileContent)# is '100'>

<cfoutput>
<cfsavecontent variable="rc.body">
{
    "server" : {
        "name" : "#replaceNoCase(rc.detailResponse.name, '-new-', '-')#"
    }
	
}
</cfsavecontent>{'name':'#replaceNoCase(rc.detailResponse.name, '-new-', '-')#'}
</cfoutput>

<cfhttp url="#rc.serverAPI#/servers/#scheduledAction.id#" method="PUT" result="rc.detail">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
    <cfhttpparam type="body" value="#rc.body#">
</cfhttp>

	<cfset rc.record.actions[count]["status"]="complete">
	<cfset rc.record.actions[count]["action"]="none">
    
    <cfset arrayDeleteAt(rc.record.actions, count)>

    <cfhttp url="http://localhost:5985/config/scheduled" method="put">
        <cfhttpparam type="header" name="Content-Type" value="application/json">
        <cfhttpparam type="body" value="#serializeJSON(rc.record)#">
    </cfhttp>

</cfif>

</cfcase>

</cfswitch>

</cfif>

<cfif scheduledAction.status is 'ready'>

<cfswitch expression="#scheduledAction.action#">
<cfcase value="setup">

<cfhttp url="#rc.serverAPI#/servers/#scheduledAction.id#" method="GET" result="rc.detail">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

<cfset rc.detailResponse = deserializeJSON(rc.detail.FileContent).server>

<cfif isDefined("rc.detailResponse.addresses.public")>
<cfloop array="#rc.detailResponse.addresses.public#" index="address">
<cfif address.version eq 4>
	<cfset rc.publicIP = #address.addr#>
</cfif>
</cfloop>
</cfif>

<cfif isDefined("rc.detailResponse.addresses.private")>
<cfloop array="#rc.detailResponse.addresses.private#" index="address">
<cfif address.version eq 4>
	<cfset rc.privateIP = #address.addr#>
</cfif>
</cfloop>
</cfif>

<cfif rc.detailResponse.status is 'ACTIVE' and rc.detailResponse.progress is '100'>

	<cfset rc.record.actions[count]["status"]="installing">
	<cfset rc.record.actions[count]["action"]="complete">

<cfsavecontent variable="rc.ssh">-l root #rc.privateIP# -p 22 -o StrictHostKeyChecking=no 'sed -i "s/Defaults    requiretty/##Defaults    requiretty/g" /etc/sudoers; chmod +x /etc/rc.d/rc.local; reboot;'</cfsavecontent>

<cftry>
<cfexecute name = "ssh"
    arguments = '#rc.ssh#'
    timeout = "20">
    </cfexecute>
    <cfcatch type="any">

    </cfcatch>
</cftry>
    
    <cfhttp url="http://localhost:5985/config/scheduled" method="put">
        <cfhttpparam type="header" name="Content-Type" value="application/json">
        <cfhttpparam type="body" value="#serializeJSON(rc.record)#">
    </cfhttp>
    
</cfif>

</cfcase>
</cfswitch>

</cfif>

<cfif scheduledAction.status is 'pending'>

<cfswitch expression="#scheduledAction.action#">
<cfcase value="new">

<cfhttp url="#rc.serverAPI#/servers/#scheduledAction.id#" method="GET" result="rc.detail">
    <cfhttpparam name="Content-Type" type="header" value="application/json">
    <cfhttpparam name="X-Auth-Token" type="header" value="#rc.authtoken#">
</cfhttp>

<cfset rc.detailResponse = deserializeJSON(rc.detail.FileContent).server>

<cfif rc.detailResponse.status is 'ACTIVE' and rc.detailResponse.progress is '100'>

	<cfset rc.record.actions[count]["status"]="ready">
	<cfset rc.record.actions[count]["action"]="setup">

    <cfhttp url="http://localhost:5985/config/scheduled" method="put">
        <cfhttpparam type="header" name="Content-Type" value="application/json">
        <cfhttpparam type="body" value="#serializeJSON(rc.record)#">
    </cfhttp>

</cfif>

</cfcase>
</cfswitch>

</cfif>

</cfloop>

<script type="text/javascript">
pollUpdate = true;
</script>
<cfelse>

<script type="text/javascript">
pollUpdate = false;
</script>

</cfif>
</cfoutput>