$(document).ready(function(){
	$("#escort_fields").hide();
	$("input:checkbox").prop("checked", false);
	cat = 'after';
	pricecat = '';

	$("#user_price_method").click(function(){
		cat = $(this).val();
		calculateTotal();
	});

	$("input[name$='user[price_category]']").each(function(){
		$(this).prop('checked', false);
		calculateTotal();
	});

	$("input[name$='user[price_category]']").click(function(){
		if ($(this).attr("id") == "user_price_category_escort"){
			$("#escort_fields").show();
			$(".program_participation").prop('checked', false);
        	$("#program_fields").hide();
		}
		else {
			$(".escort_day").prop('checked', false);
			$("#escort_fields").hide();
        	$("#program_fields").show();
		}
		pricecat = $(this).val();
		calculateTotal();
	});

	$("#full_course").click(function(){
			if($(this).is(':checked'))
		        $(".program_participation").prop('checked', true);
		    else
		        $(".program_participation").prop('checked', false);
			calculateTotal();
	});

	$(".escort_day").click(function(){
       calculateTotal();
	});

	$(".meal_price").click(function(){
       calculateTotal();
	});

	$(".program_participation").click(function(){
		if (pricecat == '')
			alert('Choose price category / Válassz árkategóriát');
		if ($(".program_participation").not(':checked').length > 0)
			$("#full_course").prop('checked', false);
		else
			$("#full_course").prop('checked', true);
		calculateTotal();
	});

	$(document).on('click', '.meal_fields', function(){
   		calculateTotal();
	});

	$(".bus_trip").click(function(){
		calculateTotal();
	});

	function calculateTotal() {
		price = 0;

		$(".escort_day").each(function()
        {	if($(this).is(':checked')){
        	price = price + parseFloat($(this).val());
        	}
        });

        $(".meal_price").each(function()
        {	
        		if ($(this).hasClass("first_day"))
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				price = price + 1200;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 2400;
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				price = price + 800;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 1600;
	        			}	
        			}
        		}
        		else if ($(this).hasClass("seventh_day"))
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				price = price + 1200;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 1800;
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				price = price + 800;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 1300;
	        			}	
        			}
        		}
        		else
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				price = price + 1200;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 3000;
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				price = price + 800;
	        			}
	        			if ($(this).val() == "3"){
	        				price = price + 2100;
	        			}	
        			}
        		}
        });

		$(".program_participation").each(function(){
				if($(this).is(':checked'))
				{
						if (pricecat == 'full'){
							price = price + parseFloat($(this).attr('data-full-price'));
						}
						else if (pricecat == 'discount')
						{
							price = price + parseFloat($(this).attr('data-discount-price'));
						}
						else if (pricecat == 'escort')
						{
							price = price;
						}
				}
		});

		if($(".bus_trip").is(':checked')){
			$(".seats").each(function(){
				price = price + parseFloat($(this).val()) * 1000;
			});
		}
        $("#total_price").text(price);
	}
});

