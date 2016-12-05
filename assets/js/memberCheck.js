function memberModify(){
	var No = document.getElementById("No");
	var Id = document.getElementById("Id");
	var Name = document.getElementById("Name");
	var Phone = document.getElementById("Phone");
	
	var layer_Id = document.getElementById("layer_Id");
	var layer_Name = document.getElementById("layer_Name");
	var modifyPhone = document.getElementById("modifyPhone");
	var memberNo = document.getElementById("memberNo");
	
	layer_Id.innerHTML = Id.innerHTML;
	layer_Name.innerHTML = Name.innerHTML;
	modifyPhone.placeholder = Phone.innerHTML;
	memberNo.value = No.innerHTML;
	
	
}