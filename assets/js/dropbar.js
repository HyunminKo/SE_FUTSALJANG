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
  
  if(a != "null"){
	var time = 8;
	var time_div = document.getElementById("time_div");
	var select = document.createElement("select");
	select.setAttribute("id","sectionSelect");
	for(var i = 0 ; i < a; i++){
			var option = document.createElement("option");
			option.setAttribute("value","구장"+String.fromCharCode(i+65));
			option.setAttribute("id",i);
			option.innerHTML = "구장"+String.fromCharCode(i+65);
				select.appendChild(option);
	}
	time_div.appendChild(select);
	for(var k = 0; k < a; k++){
		var time_table = document.createElement("table");
		time_table.setAttribute("id", k);
		for(var i = 0; i < 4; i++){
			var tr = document.createElement("tr");
			tr.setAttribute("class", "time_table_tr");
			for(var j = 0; j < 2; j++){
				var td = document.createElement("td");
				td.setAttribute("class", "time_table_td");
				td.innerHTML = document.createTextNode( time + ":00 ~ " + time+2 +":00" );
				tr.appendChild(td);
			}
			time_table.appendChild(tr);
		}
		time_div.appendChild(time_table);
	}
  }
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