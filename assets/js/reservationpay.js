window.onload = function(){
	var bookingDate = document.getElementById("bookingDate");
	var span_date = document.getElementById("span_date").innerHTML;
	
	bookingDate.value = span_date;
}



function div_show(s){
	var paymentOption = document.getElementById("paymentOption");
	if(s == "credit"){
		var creditcard = document.getElementById("creditCard");
		paymentOption.value = creditcard.value; 
		document.getElementById("choice_card1").style.display = "";
		document.getElementById("choice_card2").style.display = "";
		document.getElementById("choice_online1").style.display = "none";
		document.getElementById("choice_online2").style.display = "none";
	}else{
		var onlinepayment = document.getElementById("onlinePayment");
		paymentOption.value = onlinepayment.value;
		document.getElementById("choice_card1").style.display = "none";
		document.getElementById("choice_card2").style.display = "none";
		document.getElementById("choice_online1").style.display = "";
		document.getElementById("choice_online2").style.display = "";
	}
}
