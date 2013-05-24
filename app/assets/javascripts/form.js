$(document).ready(function(){
	$("#escort_fields").hide();
	$("input:checkbox").prop("checked", false);
	$("#user_price_method").val("");
	cat = '';
	pricecat = '';
	lang = $("#form_language").val();
	$("#currency_selector").val(lang);
	$(".meal_price").val('0');
	$("#forint").hide();
	$("#eur").hide();

	$("#currency_selector").click(function(){
		lang = $(this).val();
		calculateTotal();
	});
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
		if ($(".price_category").is(':checked')){
			if($(this).is(':checked')){
				if (cat == ""){
					if (lang == "hu"){
						alert('Válaszd ki a fizetés módját.');
					}
					if (lang == "en"){
						alert('Choose price method.');	
					}
					$(this).prop('checked', false);
				}
				else {
		        	$(".program_participation").prop('checked', true);
		        }
		    }
		    else {
		        $(".program_participation").prop('checked', false);
		    }
			calculateTotal();
		}
		else {
			if (lang == "hu"){
				alert('Válaszd ki az árkategóriát.');
			}
			if (lang == "en"){
				alert('Choose price category.');	
			}
			$(this).prop('checked', false);
		}
	});

	$(".escort_day").click(function(){
       calculateTotal();
	});

	$(".meal_price").click(function(){
		if (cat == ''){
			if (lang == "hu"){
	        	alert('Válaszd ki a fizetés módját');
	        	}
	       	if (lang == "en"){
	        	alert('Choose payment method');	
	        	}
			$(this).prop('checked', false);
		}
		else {
       		calculateTotal();
        }
	});

	$(".program_participation").click(function(){
		if (pricecat == '' || cat == ''){
			if (lang == "hu"){
	        	alert('Válassz árkategóriát');
	        	}
	       	if (lang == "en"){
	        	alert('Choose price category');	
	        	}
			$(this).prop('checked', false);
		}
		else {
		if ($(".program_participation").not(':checked').length > 0)
			$("#full_course").prop('checked', false);
		else
			$("#full_course").prop('checked', true);
		}
		calculateTotal();
	});

	$(document).on('click', '.meal_fields', function(){
   		calculateTotal();
	});

	$(document).on('click', '.add_nested_fields', function(){
   		calculateTotal();
	});

	$(document).on('click', '.remove_fields', function(){
   		calculateTotal();
	});

	$(".bus_trip").click(function(){
		calculateTotal();
	});
	$(".seats").click(function(){
		calculateTotal();
	});

	function calculateTotal() {
		price = 0;

		$(".escort_day").each(function()
        {	if($(this).is(':checked')){
	        	if (lang == "hu"){
		        	price = price + parseFloat($(this).val());
		        }
		        if (lang == "en"){
		        	price = price + 3.5;	
		        }
        	}
        });

        $(".meal_price").each(function()
        {	
        	if($(this).is(':visible')){
        		if ($(this).hasClass("first_day"))
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 1200;
	        				}
	        				if (lang == "en"){
	        					price = price + 4.5;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 2400;
	        				}
	        				if (lang == "en"){
	        					price = price + 8.5;	
	        				}
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 800;
	        				}
	        				if (lang == "en"){
	        					price = price + 3;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 1600;
	        				}
	        				if (lang == "en"){
	        					price = price + 6;	
	        				}
	        			}	
        			}
        		}
        		else if ($(this).hasClass("seventh_day"))
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 1200;
	        				}
	        				if (lang == "en"){
	        					price = price + 4.5;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 1800;
	        				}
	        				if (lang == "en"){
	        					price = price + 6.5;	
	        				}
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 800;
	        				}
	        				if (lang == "en"){
	        					price = price + 3;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 1300;
	        				}
	        				if (lang == "en"){
	        					price = price + 5;	
	        				}
	        			}	
        			}
        		}
        		else
        		{
        			if (cat == "after")
        			{
	        			if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 1200;
	        				}
	        				if (lang == "en"){
	        					price = price + 4.5;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 3000;
	        				}
	        				if (lang == "en"){
	        					price = price + 11;	
	        				}
	        			}
        			}
        			if (cat == "before")
        			{
        				if ($(this).val() == "1"){
	        				if (lang == "hu"){
	        					price = price + 800;
	        				}
	        				if (lang == "en"){
	        					price = price + 3;	
	        				}
	        			}
	        			if ($(this).val() == "3"){
	        				if (lang == "hu"){
	        					price = price + 2100;
	        				}
	        				if (lang == "en"){
	        					price = price + 8;	
	        				}
	        			}	
        			}
        		}
        	}
        });
		if ($("#full_course").is(":checked")){
				if (cat == 'after' && pricecat == 'full'){
						if (lang == "hu"){
	        				price = price + 35000;
	        			}
	        			if (lang == "en"){
	        				price = price + 125;	
	        			}
				}
				if (cat == 'before' && pricecat == 'full'){
						if (lang == "hu"){
	        				price = price + 30000;
	        			}
	        			if (lang == "en"){
	        				price = price + 108;	
	        			}
				}
				else if (pricecat == 'discount'){
						if (lang == "hu"){
	        				price = price + 17500;
	        			}
	        			if (lang == "en"){
	        				price = price + 63;	
	        			}
	        	}
		}
		else {
		$(".program_participation").each(function(){
				if($(this).is(':checked'))
				{
						if (pricecat == 'full'){
							if (lang == "hu"){
	        				price = price + parseFloat($(this).attr('data-full-price'));
	        				}
	        				if (lang == "en"){
	        				price = price + parseFloat($(this).attr('data-full-price-eur'));	
	        				}
						}
						else if (pricecat == 'discount')
						{	
							if (lang == "hu"){
	        				price = price + parseFloat($(this).attr('data-discount-price'));
	        				}
	        				if (lang == "en"){
	        				price = price + parseFloat($(this).attr('data-discount-price-eur'));	
	        				}
						}
						else if (pricecat == 'escort')
						{
							price = price;
						}
				}
		});
		}

		if($(".bus_trip").is(':checked')){
			$(".seats").each(function(){
				if (lang == "hu"){
	        				price = price + parseFloat($(this).val()) * 2000;
	        			}
	        			if (lang == "en"){
	        				price = price + parseFloat($(this).val()) * 7;	
	        			}
			});
		}
        $("#total_price").text(price);
        $(".price_container").val(price);
        if (lang == "hu"){
        	$("#eur").hide();
        	$("#forint").show();
        }
        if (lang == "en"){
        	$("#forint").hide();
        	$("#eur").show();
        }
	}
});