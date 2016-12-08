$(document).ready(function(){
    $("#layer_pop").hide();	
    $("#btn_vip").click(function(){
        $("#vip").show();
        $("#userMypage").hide();
        $("#hostMypage").hide();
        $("#adminMypage").hide();
    });
    $("#btn_userMypage").click(function(){
        $("#userMypage").show();
        $("#vip").hide();
    });
    $("#btn_hostMypage").click(function(){
        $("#hostMypage").show();
        $("#vip").hide();
    });
    $("#btn_adminMypage").click(function(){
        $("#adminMypage").show();
        $("#vip").hide();
    });
    
	$("#searchBtn").click(function(){
		var sel = document.getElementById("guList");
		var currentScreenName = document.getElementById("currentScreenName");
		var val;
		val = sel.options[sel.selectedIndex].innerHTML;
		if(val=="전체"){
			currentScreenName.innerHTML="대전 전체 풋살장 검색";
			$(".card").show();
		}else{
			currentScreenName.innerHTML="대전 "+ val +" 풋살장 검색";
			$(".card").hide();
			$("."+val).show();
		}
	});
	
	$("#main").hover(
			  function () {
			   $('#currentScreenName').css('color','#ff7496');
			  }, 
			  function () {
			    $('#currentScreenName').css('color','white');
			  }
	);
	
	$(".cardForm").click(function(e){
		var target = e.target;
		while(target.className != 'cardForm')
			target = target.parentNode;
		$("#"+target.id).submit();
	});
	
	var year = document.getElementById("year");
	var month = document.getElementById("month");
	var day = document.getElementById("day");
	var date_val = year.options[year.selectedIndex].innerHTML+":"+month.options[month.selectedIndex].innerHTML+":"+day.options[day.selectedIndex].innerHTML;
	
	var sS = document.getElementById("sectionSelect");
	var section_abc = sS.options[sS.selectedIndex].id;
	matchDate(date_val,section_abc);
	
});

window.onclick = function(e) {
  if (!(e.target.nodeName=='A')&&!(e.target.nodeName=='INPUT')) {
      $("#userMypage").hide();
      $("#hostMypage").hide();
      $("#adminMypage").hide();
      $("#vip").hide();
  }
}

function bodyOnload(a){
  var title = document.getElementById("title").innerHTML;
  document.getElementById("currentScreenName").innerHTML = title;
  
		
 }
 

function selectSection(a){
	var sectionNo = document.getElementById("sectionNo");
	var time_div = document.getElementById("time_div");
	var sectionSelect = document.getElementById("sectionSelect");
	var tables = time_div.childNodes;
	var val;
	val = sectionSelect.options[sectionSelect.selectedIndex];

	for (var i = 2; i < tables.length; i++) {
		var names = tables[i].className;
		var name = names.split(" ");
		if (val.id == name[1]) {
			var temp = name[1];
			$("."+temp).show();
			sectionNo.value = val.id;
		}
		else{
			var temp = name[1];
			$("."+temp).hide();
		}
		
	}
}
function selectDate(a){
	var year = document.getElementById("year");
	var month = document.getElementById("month");
	var day = document.getElementById("day");
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
	document.getElementById("month").innerHTML = strMonth;
	document.getElementById("day").innerHTML = strDay;
	
	year.selectedIndex = yearSelectedIndex;
	month.selectedIndex = monthSelectedIndex;
	day.selectedIndex = daySelectedIndex;
	
	matchDate(val);
}
function pageSetting(a){
	var val = a;
	var currentScreenName = document.getElementById("currentScreenName");
	$("#guList").val(val);
	if(val=="전체"){
		currentScreenName.innerHTML="대전 전체 풋살장 검색";
		$(".card").show();
	}else{
		currentScreenName.innerHTML="대전 "+ val +" 풋살장 검색";
		$(".card").hide();
		$("."+val).show();
	}
}


function urlCheck(){
	var para = document.location.href.split("/");
	
	if(para[4] == "home.jsp"){
		return false;
	}
	else{
			var sel = document.getElementById("guList");
			var hidden = document.getElementById("hiddenInput");
			hidden.value = sel.options[sel.selectedIndex].innerHTML;
			return true;
	}
}
