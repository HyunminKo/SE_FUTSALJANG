$(document).ready(function(){
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
  if (!(e.target.nodeName=='A')) {
      $("#mypage").hide();
      $("#vip").hide();
  }
}