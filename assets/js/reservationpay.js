window.onload = function(){
	var bookingDate = document.getElementById("bookingDate");
	var span_date = document.getElementById("span_date").innerHTML;
	
	bookingDate.value = span_date;
	
	var charge = document.getElementById("span_rate").innerHTML;
	$(".point").bind('keyup mouseup', function (e) {
		var culCharge = document.getElementById("span_rate").innerHTML;
		var point = e.target.value;
		if(culCharge - point >=0){
			document.getElementById("span_rate").innerHTML = parseInt(charge)-point;
		}
		else if(culCharge-point<0){
			e.target.value = point;
		}
	});
}


function div_show(s){
	var paymentOption = document.getElementById("paymentOption");
	if(s == "credit"){
		var creditcard = document.getElementById("creditCard");
		paymentOption.value = creditcard.value; 
		document.getElementById("choice_card1").style.display = "";
		document.getElementById("choice_card2").style.display = "";
		document.getElementById("choice_card3").style.display = "";
		document.getElementById("cardPoint").setAttribute("name", "userPoint");
		document.getElementById("choice_online1").style.display = "none";
		document.getElementById("choice_online2").style.display = "none";
		document.getElementById("choice_online3").style.display = "none";
		document.getElementById("onlinePoint").setAttribute("name", "");
	}else{
		var onlinepayment = document.getElementById("onlinePayment");
		paymentOption.value = onlinepayment.value;
		document.getElementById("choice_card1").style.display = "none";
		document.getElementById("choice_card2").style.display = "none";
		document.getElementById("choice_card3").style.display = "none";
		document.getElementById("cardPoint").setAttribute("name", "");
		document.getElementById("choice_online1").style.display = "";
		document.getElementById("choice_online2").style.display = "";
		document.getElementById("choice_online3").style.display = "";
		document.getElementById("onlinePoint").setAttribute("name", "userPoint");
	}
}
