<cfoutput>

<cfif isDefined("rc.subItem")>

	<cfswitch expression="#rc.subItem#">
    
		<cfcase value="new">
		   
			<cfinclude template="/templates/users/manage/new.cfm">
			
		</cfcase>
        
		<cfcase value="edit">
		   
			<cfinclude template="/templates/users/manage/edit.cfm">
			
		</cfcase>
        
	</cfswitch>

<cfelse>

    <div class="hRow">
<!---	<a href="##newUserForm" role="button" class="btn btn-small" data-toggle="modal">New User</a>--->
    	<a href="/admin/users/manage/new" class="btn btn-small">New User</a>
    </div>
    
    <hr>
    
    <div id="userList">

                <cfloop array="#rc.users#" index="user">
                
                <div class="hRow">
                <a href="/admin/users/manage/edit/#user.userID#" class="btn btn-small"><i class="icon-cog"></i></a> <a href="/admin/users/manage/edit/#user.userID#">#user.email#</a>
                </div>
                
                </cfloop>
              
	</div>
    
<br />
<br />
<br />
    
    <div id="newUserForm" class="modal hide">
    
			<div class="modal-header">
              <a href="##" class="close">&times;</a>
              <h3>New User</h3>
            </div>
            <div class="modal-body">
              <p>
              
<cfoutput>

<form method="POST" action="/admin/users/manage/create" class="form-horizontal">

<div class="control-group">
    <label class="control-label" for="email">Email</label>
    <div class="controls">
    <input type="text" name="email" id="email" class="field" value="" />
    </div>

</div>

<div class="control-group">
    <label class="control-label" for="password">Password</label>
    <div class="controls">
    <input type="password" name="password" id="password" class="field" value="" />

</div>

</div>

<div class="control-group">
    <label class="control-label" for="roles">Roles</label>
    <div class="controls">

<cfset rc.roles = EntityLoad('role')>

<cfoutput>
<cfloop array="#rc.roles#" index="role">

<cfset rc.role = EntityLoad('role', role.roleID)[1]>

      <label class="checkbox">
        <input type="checkbox" name="roles" class="field" value="#role.roleID#" /> #role.roleName#
      </label>
      
</cfloop>
</cfoutput>
</div>
</div>


</cfoutput>

            </div>
            <div class="modal-footer">
              <input type="submit" value="Create" id="createButton" class="btn btn-primary" />
              <a href="##" class="btn secondary" onclick="$('##newUserForm').modal('hide');">Cancel</a>
            </div>
				</form>
	</div>

</cfif>

</cfoutput>