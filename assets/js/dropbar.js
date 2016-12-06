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

$("#main").hover(
		  function () {
		   $('#currentScreenName').css('color','#ff7496');
		  }, 
		  function () {
		    $('#currentScreenName').css('color','white');
		  }
);