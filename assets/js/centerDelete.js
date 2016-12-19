
function radioButtonClicked(a){
	var id = a.id;
	var inputTag = document.getElementById("row"+id);
	inputTag.value = id;
	inputTag.setAttribute("name","rowNum");	
}