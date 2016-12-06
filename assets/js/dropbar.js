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
		alert($("e:nth-last-child(1)").val());
		$(".cardForm").submit();
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
function bodyOnload(){
  var title = document.getElementById("title").innerHTML;

  document.getElementById("currentScreenName").innerHTML = title;
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