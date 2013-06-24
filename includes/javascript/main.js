jQuery(document).ready(function(){
		
	$("#loginButton").bind("click", function(e) {
		
		var postData = {};
	
		postData.returnFormat = 'JSON';
		postData.email = $("#email").val();
		postData.password = $("#password").val();
		
		$.ajax({
			url: '/rest/login',
			method: 'POST',
			data: postData,
			dataType: 'json',
			success: function(data){
				if (data == true) {
					window.location = '/';
					return true;
				} else {
					return false;
				}
			},
			error: function(data){
				return false;
			}
		});
		
	});
	
	$(".menu, .nav, .well").delegate(".menuItem", "click", function() {
		window.location = $(this).attr("data-link");
	});
	
	$(".btn-group").delegate(".btn", "click", function() {
//		$("#"+$(this).attr("data-radio-field")).val($(this).attr("data-radio-value"));			
		$(this).parent().next().val($(this).attr("data-radio-value"));
	});
	
	$("#questionOptions").hide();
	
	$(".questionTypeOption").bind("click", function(){

		if ($(this).val() == 'select' | $(this).val() == 'checkbox' | $(this).val() == 'radio') {
		
			$("#questionOptions").show();
		
		} else {
			
			$("#questionOptions").hide();
			
		}
		
		});
		
	$("#addOption").bind("click", function(){
		
		var optionCount = parseInt($("#optionCount").val())+1;	
		
		var newOption = $('<div>');
		newOption.addClass('questionOption');
		
		newOption.html('<input type="text" name="option'+optionCount+'" class="option" placeholder="value for option">'+'<input type="text" name="optionLabel'+optionCount+'" class="optionLabel" placeholder="label for option">');
		
		$("#options").append(newOption);
		
		$("#optionCount").val(optionCount)
		
		});	
	
	$(".questionTypeRequirement").bind("click", function(){

		if ($(this).val() == 'select' | $(this).val() == 'checkbox' | $(this).val() == 'radio') {
		
			$("#questionRequirements").show();
		
		} else {
			
			$("#questionRequirements").hide();
			
		}
		
		});
		
	$("#addRequirement").bind("click", function(){
		
		var requirementCount = parseInt($("#requirementCount").val())+1;	
		
		var newRequirement = $('<div>');
		newRequirement.addClass('questionRequirement');
		
		newRequirement.html('<select name="requirement'+requirementCount+'" class="requirement"><option value="required">Required</option><option value="numeric">Numeric</option><option value="equation">Equation</option></select>'+'<input type="text" name="requirementOption'+requirementCount+'" class="requirementOption" placeholder="configuration for requirement">'+'<input type="text" name="requirementLabel'+requirementCount+'" class="requirementLabel" placeholder="label for requirement">');
		
		$("#requirements").append(newRequirement);
		
		$("#requirementCount").val(requirementCount)
		
		});
	
	$("#searchForm").bind("keyup", function(event){
		
			if (event.which == 13 || event.keyCode == 13) {
			
				event.preventDefault();
			
				$("#searchForm").submit();
			
			}
				
		});
	
	$(".shareScreener").bind("click", function(){
		$(this).toggleClass('btn-success');
		$(".screenerLink").toggle();
	});
	
	$(".questionTypeOption").bind("click", function(){
		$("#questionType").val($(this).val());
	});
	
});