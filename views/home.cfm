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
                          <label class="tiny">#item.status# #item.progress#%</label>
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


<script type="text/javascript">

pollUpdate = true;

$(document).ready(function(){

update();
	
});

function update(){
    
		var postData = {};
	
		postData.returnFormat = 'plain';
				
		$.ajax({
			url: '/rest/poll',
			method: 'POST',
			data: postData,
			dataType: 'text',
			success: function(data){
				$("#mainBody").html(data);
				
				if (pollUpdate==true) {
				setTimeout(function(){update();}, 10000);
				} else {

				}

			},
			error: function(data){
				return false;
			}
		});
		
}
</script>