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

	document.getElementById("match_year").innerHTML = strYear;
	document.getElementById("match_month").innerHTML = strMonth;
	document.getElementById("match_day").innerHTML = strDay;


}
function onchangeDate(a){
	
		var year = document.getElementById("match_year");
		var month = document.getElementById("match_month");
		var day = document.getElementById("match_day");
		var val = year.options[year.selectedIndex].innerHTML+":"+month.options[month.selectedIndex].innerHTML+":"+day.options[day.selectedIndex].innerHTML;
		
		var yearSelectedIndex = year.selectedIndex;
		var monthSelectedIndex = month.selectedIndex;
		var daySelectedIndex = day.selectedIndex;
		
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
		
		for(var i=sMonth;i<=eMonth;i++){
			if(parseInt(year.options[year.selectedIndex].innerHTML)>yyyy){
				strMonth += "<option value = "+i+">"+i+"</option>";	
			}else if(parseInt(year.options[year.selectedIndex].innerHTML)==yyyy){
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
			}						
		}

		for(var i=sDay;i<=eDay;i++){
			if(parseInt(year.options[year.selectedIndex].innerHTML)>yyyy){
				strDay += "<option value = "+i+">"+i+"</option>";
			}
		}
		document.getElementById("match_month").innerHTML = strMonth;
		document.getElementById("match_day").innerHTML = strDay;
		
		year.selectedIndex = yearSelectedIndex;
		month.selectedIndex = monthSelectedIndex;
		day.selectedIndex = daySelectedIndex;
		
}