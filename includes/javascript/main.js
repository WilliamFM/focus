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
	
	$("#questionType").bind("change", function(){
		
		if ($(this).val() == 'select' | $(this).val() == 'checkbox' | $(this).val() == 'radio') {
		
			$("#questionOptions").show();
		
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
	
	$("#searchForm").bind("keyup", function(event){
		
			if (event.which == 13 || event.keyCode == 13) {
			
				event.preventDefault();
			
				$("#searchForm").submit();
			
			}
				
		});
	
});