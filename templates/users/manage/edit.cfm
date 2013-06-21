<cfoutput>

<form method="POST" action="/admin/users/manage/update/#rc.itemID#" class="form-horizontal">

<div class="control-group">
    <label class="control-label" for="email">Email</label>
    <div class="controls">
    <input type="text" name="email" id="email" class="field" value="#rc.user.email#" />
    </div>

</div>

<div class="control-group">
    <label class="control-label" for="password">Password</label>
    <div class="controls">
    <input type="password" name="password" id="password" class="field" value="#rc.user.password#" />

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
        <input type="checkbox" name="roles" class="field" value="#role.roleID#" <cfif rc.user.hasRoles(rc.role)>checked="true"</cfif> /> #role.roleName#
      </label>
      
</cfloop>
</cfoutput>
</div>
</div>

<div class="control-group">

    <div class="controls">

    <input type="submit" value="Save" id="saveButton" class="btn btn-primary" />

</div>
</div>

</form>

</cfoutput>