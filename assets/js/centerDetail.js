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

	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();	
	
	for(var i=sYear;i<=eYear;i++){
		if(yyyy<=i)
			strYear += "<option value = "+i+">"+i+"</option>";
	}

	for(var i=sMonth;i<=eMonth;i++){
		if(mm<=i)		
		strMonth += "<option value = "+i+">"+i+"</option>";
	}

	for(var i=sDay;i<=eDay;i++){
		if(dd<=i)		
		strDay += "<option value = "+i+">"+i+"</option>";
	}

	document.getElementById("year").innerHTML = strYear;
	document.getElementById("month").innerHTML = strMonth;
	document.getElementById("day").innerHTML = strDay;


}

function settingUseTime(a){
	var timeId = a.id;
	var useTime = document.getElementById(timeId).value;
	var hoursOfUse = document.getElementById("hoursOfUse");
	var hours = document.getElementById("hours");
	hoursOfUse.value = useTime;	
	var splitHours = useTime.split(":");
	hours.value = splitHours[0];
	
}

function matchDate(date_val){
	for(var i = 0 ; i<dateArr.length; i++){
		var hours = hoursArr[i];
		var secNo = sectionArr[i];
		var idCal = (hours-8);
		var input = secNo+'input'+idCal;
		var timeButton = document.getElementById(input);
		if(dateArr[i] == date_val){
			timeButton.value="예약 불가능";
			timeButton.style.color = "red";
			timeButton.disabled = true;			
		}else{
			timeButton.value=hours+":00 ~ "+parseInt(parseInt(hours)+2)+":00";
			timeButton.disabled = false;
		}
	}
}
