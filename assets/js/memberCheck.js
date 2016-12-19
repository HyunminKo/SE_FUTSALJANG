function memberModify(a){
	var list = a.parentElement.parentElement.children;
	
	if(list[0].innerHTML.startsWith("2"))
		$("#memberGrade").hide();
	else
		$("#memberGrade").show();
		
		
	var layer_Id = document.getElementById("layer_Id");
	var layer_Name = document.getElementById("layer_Name");
	var modifyPhone = document.getElementById("modifyPhone");
	var memberNo = document.getElementById("memberNo");
	
	memberNo.value = list[0].innerHTML;
	layer_Id.innerHTML = list[1].innerHTML;
	layer_Name.innerHTML = list[2].innerHTML;
	modifyPhone.placeholder = list[4].innerHTML;
	
    $("#layer_pop").show();
}
function layerClose(a){
	$("#layer_pop").hide();
}

function memberDelete(a){
	var id = a.id;
	if(confirm("정말 삭제 하시겠습니까?") == true){
		var inputTag = document.getElementById("row"+id);
		inputTag.value = id;
		inputTag.setAttribute("name","rowNum");
	}
	else{
		return;
	}
	
}