<style type="text/css">

.tiny {
font-size: .8em;
}

</style>

<cfoutput>

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
                        <th>Location</th>
                      </tr>
                    </thead>
                    <tbody>

<cfloop array="#deserializeJSON(rc.serverList.fileContent)['servers']#" index="item">
                      <tr>
                        <td class="primary">#item.name#</td>
                        <td>#item.id#</td>
                        <td>
                            <div class="progress progress-mini">
                              <div class="bar" style="width: #item.progress#%"></div>
                            </div>
                          <label class="tiny">#item.progress#%</label>
                        </td>
                        <td>#dateFormat(item.created, "mm/dd/yy")# #timeFormat(item.created, "hh:mm ss tt")#</td>
                        <td>512MB</td>
                        <td>#item.addresses.public[1].addr#<br />#item.addresses.private[1].addr#</td>
						<td>ORD</td>
                      </tr>
</cfloop>

                    </tbody>
                  </table>
  </section>

</cfoutput>