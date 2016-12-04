function div_show(s){
	if(s == "cardit"){
		document.getElementById("choice_card1").style.display = "";
		document.getElementById("choice_card2").style.display = "";
		document.getElementById("choice_online1").style.display = "none";
		document.getElementById("choice_online2").style.display = "none";
	}else{
		document.getElementById("choice_card1").style.display = "none";
		document.getElementById("choice_card2").style.display = "none";
		document.getElementById("choice_online1").style.display = "";
		document.getElementById("choice_online2").style.display = "";
	}
}
