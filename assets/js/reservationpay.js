function div_show(s){
	if(s == "cardit"){
		document.getElementById("choice_card").style.display = "";
		document.getElementById("choice_online").style.display = "none";
	}else{
		document.getElementById("choice_card").style.display = "none";
		document.getElementById("choice_online").style.display = "";
	}
}
