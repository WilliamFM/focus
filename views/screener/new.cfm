<cfoutput>

<form class="form-horizontal" method="POST" action="/screener/create">
  <div class="control-group">
    <label class="control-label" for="screenerName">Screener Name</label>
    <div class="controls">
      <input type="text" name="screenerName" id="screenerName" placeholder="Screener Name">
    </div>
  </div>

  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">Create Screener</button>
    </div>
  </div>
</form>

</cfoutput>