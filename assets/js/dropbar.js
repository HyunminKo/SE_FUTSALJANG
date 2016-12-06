$(document).ready(function(){
    $("#layer_pop").hide();	
    $("#btn_vip").click(function(){
        $("#vip").show();
        $("#mypage").hide();
    });
    $("#btn_mypage").click(function(){
        $("#mypage").show();
        $("#vip").hide();
    });
});

window.onclick = function(e) {
  if (!(e.target.nodeName=='A')&&!(e.target.nodeName=='INPUT')) {
      $("#mypage").hide();
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