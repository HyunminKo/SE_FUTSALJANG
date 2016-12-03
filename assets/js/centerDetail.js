window.onload =function(){
	var sYear = 2016;
	var eYear = 2030;
	var sMonth = 1;
	var eMonth = 12;
	var sDay = 1;
	var eDay = 31;

	var strYear="";
	var strMonth="";
	var strDay="";

	for(var i=sYear;i<=eYear;i++){
		strYear += "<option value = "+i+">"+i+"</option>";
	}

	for(var i=sMonth;i<=eMonth;i++){
		strMonth += "<option value = "+i+">"+i+"</option>";
	}

	for(var i=sDay;i<=eDay;i++){
		strDay += "<option value = "+i+">"+i+"</option>";
	}

	document.getElementById("year").innerHTML = strYear;
	document.getElementById("month").innerHTML = strMonth;
	document.getElementById("day").innerHTML = strDay;

}