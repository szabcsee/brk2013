$(document).ready(function(){
	$("#escort_fields").hide();
	$("input[name$='user[price_category]']").each(function(){
		$(this).prop('checked', false)
	});

	$("input[name$='user[price_category]']").click(function(){
		if ($(this).attr("id") == "user_price_category_escort"){
			$("#escort_fields").show();
        	$("#program_fields").hide();
		}
		else {
			$("#escort_fields").hide();
        	$("#program_fields").show();
		}
	});

	$("#full_course").click(function(){
		$(".program_participation").prop('checked', true)
	});

	$(".escort_day").click(function(){
		$(".escort_day [type=checkbox]:checked").each(function()
        {
        	$("#user_payment").prop('value', $(this).val());
        });        
	});
});

