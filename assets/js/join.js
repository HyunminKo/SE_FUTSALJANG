isExsitID = false;
var isExsitPW = false;
var isExsitTel = false;
var isExsitName = false;
var isNext = false;
var isopen=false;

function confirmSubmit(a){
	var isComplete = false;
	var temp_id;
	var temp_pw;
	var temp_name;
	var temp_phone;
	var temp_tel;
	var pattern =  /\s/g;
	var tel_pattern ="[0-9]{3}-[0-9]{4}-[0-9]{4}";
	var join_main = document.getElementById("main");
	var join_id_box = document.getElementById("join_id_box");
	var join_pw_box = document.getElementById("join_pw_box");

	var span_div = document.createElement("div");
	var span_tag = document.createElement("span");
	span_div.appendChild(span_tag);
	span_tag.style.color = "red";

	if(a.id == "join_id_box" ){
		var i = 0;
		for(i = 0 ; i<join_main.children.length; i++){
			if((join_main.children[i].id)=="div_id"){
				temp_id=i;
				break;
			}
		}
		if(join_id_box.value.match(pattern) || join_id_box.value.length <4){
			join_id_box.focus();
			if(isExsitID != true){
				span_tag.innerHTML = "아이디에 공백이 있거나 4자이상 입력해주세요";
				join_main.insertBefore(span_div,join_main.children[i+1]);
				isExsitID = true;
				}
				return;
			}
		}
	if(a.id == "join_pw_box"){
		var i = 0;
		for(i = 0 ; i<join_main.children.length; i++){
			if((join_main.children[i].id)=="div_pw"){
				temp_pw=i;
				break;
			}
		}
		if(join_pw_box.value.length <5){
			if(isExsitPW != true){
			span_tag.innerHTML = "비밀번호를 6자이상 입력해주세요";
			join_main.insertBefore(span_div,join_main.children[i+1]);
			isExsitPW = true;
			}
			return;
		}
		if(isExsitPW==true){
			join_main.removeChild(join_main.children[temp_pw+1]);
			isExsitPW = false;			
		}
	}
	if(a.id == "join_name_box" ){
		var i = 0;
		for(i = 0 ; i<join_main.children.length; i++){
			if((join_main.children[i].id)=="div_name"){
				temp_name=i;
				break;
			}
		}
		if(join_name_box.value.match(pattern) || join_name_box.value.length <2){
			join_name_box.focus();
			if(isExsitName != true){
			span_tag.innerHTML = "이름에 공백이 있거나 2자이상 입력해주세요";
			join_main.insertBefore(span_div,join_main.children[i+1]);
			isExsitName = true;
			}
			return;
		}
		if(isExsitName == true){
			join_main.removeChild(join_main.children[temp_name+1]);
			isExsitName = false;	
		}
	}
	if(a.id == "phone"){
		var i = 0;
		for(i = 0 ; i<join_main.children.length; i++){
			if((join_main.children[i].id)=="join_phone_box"){
				temp_tel=i;
				break;
			}
		}
		if(phone.value.match(tel_pattern)){

		}else{
			if(isExsitTel != true){
				span_tag.innerHTML = "EX) 010-xxxx-xxxx";
				join_main.insertBefore(span_div,join_main.children[i+1]);
				isExsitTel = true;
			}
			return;
		}
		if(isExsitTel == true){
			join_main.removeChild(join_main.children[temp_tel+1]);
			isExsitTel = false;	
		}
	}

	isComplete=true;
	return isComplete;
}