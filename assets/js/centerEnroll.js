var pattern =  /\s/g;
var idForm = false;
var rgx1 = /\D/g;
var rgx2 = /(\d+)(\d{3})/; 

var centerName = document.getElementById("centerName");
var baseCharge = document.getElementById("baseCharge");
var centerSectionNum = document.getElementById("centerSectionNum");
var centerPhoneNum = document.getElementById("centerPhoneNum");
var cEnrollGuSelect = document.getElementById("cEnrollGuSelect")
function formcheck(a){
	if(a.id == "centerName"){
		if(centerName.value.match(pattern)){
			centerName.focus();
				alert("이름에 공백을 제거해 주십시오.");
				idForm = true;
			return;
		}
	}
	if(a.id == "cEnrollGuSelect"){
		if(cEnrollGuSelect.value == "구 선택"){
			alert("구를 선택하세요.");
		}
	}
	if(a.id == "baseCharge"){
        	var num01;
     		var num02;
     		num01 = baseCharge.value;
     		num02 = num01.replace(rgx1,"");
     		num01 = setComma(num02);
     		baseCharge.value =  num01;
    }
    if(a.id == "centerSectionNum"){
    	var num01;
 		var num02;
 		num01 = centerSectionNum.value;
 		num02 = num01.replace(rgx1,"");
 		num01 = setComma(num02);
 		centerSectionNum.value =  num01;
    }
    if(a.id == "centerPhoneNum"){
    	var txtNumber = '' + centerPhoneNum.value;    // 입력된 값을 문자열 변수에 저장합니다.
    	if (isNaN(txtNumber) || txtNumber == "") {    // 숫자 형태의 값이 정상적으로 입력되었는지 확인합니다.
        	centerPhoneNum.focus();
        	alert("공백을 제거하거나 숫자만 입력 하세요");
        	return;
   		}
    }

}

function setComma(inNum){
     
    var outNum;
    outNum = inNum; 
    while (rgx2.test(outNum)) {
        outNum = outNum.replace(rgx2, '$1' + ","+ '$2');
    }
    return outNum;
}
