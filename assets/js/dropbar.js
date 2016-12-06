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
window.onload = function(){
  var title = document.getElementById("title").innerHTML;

  document.getElementById("currentScreenName").innerHTML = title;
}