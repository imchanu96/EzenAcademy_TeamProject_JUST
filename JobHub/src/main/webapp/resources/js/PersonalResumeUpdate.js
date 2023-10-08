
function addTrFnc(trObj, tdNum, tdName){
	var parentTable = document.getElementById(trObj);
//	alert(parentTable);
	var parentTr = parentTable.getElementsByTagName("tr");
	var getPropertyList = parentTr[2].parentNode.getElementsByTagName("input");
	var newTrObj = document.createElement("tr");
	newTrObj.className = parentTr[2].className;
//	newTrObj.id = trObj;
	for(var i = 0; i < tdNum; i++){
//		alert(getPropertyList[i].value);
		var newTdObj = document.createElement("td");
		var newInputObj = document.createElement("input");
		newTdObj.className = tdName;
		newInputObj.type = getPropertyList[i].type;
		newInputObj.name = getPropertyList[i].name;
		newTdObj.appendChild(newInputObj);
		newTrObj.appendChild(newTdObj);
		
	}
	parentTable.appendChild(newTrObj);
	
}

function deleteTrFnc(trObj){

	var removeTagList = document.getElementsByClassName(trObj);

//	var getPropertyList = document.getElementById(trObj).getElementsByTagName("input");
//	alert(parentTable.nodeName);
//	alert(trLength);
//	alert(removeTagList.length);
	if(removeTagList.length <= 1){
		alert("첫 줄은 삭제가 불가능합니다.");
	}else{
		removeTagList[removeTagList.length-1].remove(this);
	}

}

function submitFnc(){ // 이력서 객체의 각각의 변수들의 값들을 리스트에 담는다.
	
	var valueList = [];
	
	var resumeEduBeginDateValue	= addValueFnc("resumeEduBeginDateValue");
	valueList[0] = resumeEduBeginDateValue;
	
	var resumeEduEndDateValueList = addValueFnc("resumeEduEndDateValue");
	valueList[1] = resumeEduEndDateValueList;
	var resumeEduNameValueList = addValueFnc("resumeEduNameValue");
	valueList[2] = resumeEduNameValueList;
	var resumeEduMajorValueList = addValueFnc("resumeEduMajorValue");
	valueList[3] = resumeEduMajorValueList;
	var resumeEduLocValueList = addValueFnc("resumeEduLocValue");
	valueList[4] = resumeEduLocValueList;
	var resumeEduGradeValueList = addValueFnc("resumeEduGradeValue");
	valueList[5] = resumeEduGradeValueList;
	var resumeEduGraduateValueList = addValueFnc("resumeEduGraduateValue");
	valueList[6] = resumeEduGraduateValueList;
	var resumeCareerBeginDateValueList = addValueFnc("resumeCareerBeginDateValue");
	valueList[7] = resumeCareerBeginDateValueList;
	var resumeCareerEndDateValueList = addValueFnc("resumeCareerEndDateValue");
	valueList[8] = resumeCareerEndDateValueList;
	var resumeCareerNameValueList = addValueFnc("resumeCareerNameValue");
	valueList[9] = resumeCareerNameValueList;
	var resumeCareerPosValueList = addValueFnc("resumeCareerPosValue");
	valueList[10] = resumeCareerPosValueList;
	var resumeCareerLocValueList = addValueFnc("resumeCareerLocValue");
	valueList[11] = resumeCareerLocValueList;
	var resumeCareerJobValueList = addValueFnc("resumeCareerJobValue");
	valueList[12] = resumeCareerJobValueList;
	var resumeLicenseDateValueList = addValueFnc("resumeLicenseDateValue");
	valueList[13] = resumeLicenseDateValueList;
	var resumeLicenseNameValueList = addValueFnc("resumeLicenseNameValue");
	valueList[14] = resumeLicenseNameValueList;
	var resumeLicenseInstValueList = addValueFnc("resumeLicenseInstValue");
	valueList[15] = resumeLicenseInstValueList;
	var resumeLicenseGradeValueList = addValueFnc("resumeLicenseGradeValue");
	valueList[16] = resumeLicenseGradeValueList;

	valueCalFnc(valueList);
	
}

function valueCalFnc(valueList){

	var isertValueList = [];
	// form태그로 보낼 값의 input태그들을 정의한다.
	var resumeEduBeginDate = document.getElementById("resumeEduBeginDate");
	isertValueList[0] = resumeEduBeginDate;
	var resumeEduEndDate = document.getElementById("resumeEduEndDate");
	isertValueList[1] = resumeEduEndDate;
    var resumeEduName = document.getElementById("resumeEduName");
	isertValueList[2] = resumeEduName;
    var resumeEduMajor = document.getElementById("resumeEduMajor");
	isertValueList[3] = resumeEduMajor;
    var resumeEduLoc = document.getElementById("resumeEduLoc");
	isertValueList[4] = resumeEduLoc;
    var resumeEduGrade = document.getElementById("resumeEduGrade");
	isertValueList[5] = resumeEduGrade;
    var resumeEduGraduate = document.getElementById("resumeEduGraduate");
	isertValueList[6] = resumeEduGraduate;
    var resumeCareerBeginDate = document.getElementById("resumeCareerBeginDate");
	isertValueList[7] = resumeCareerBeginDate;
    var resumeCareerEndDate = document.getElementById("resumeCareerEndDate");
	isertValueList[8] = resumeCareerEndDate;
    var resumeCareerName = document.getElementById("resumeCareerName");
	isertValueList[9] = resumeCareerName;
    var resumeCareerPos = document.getElementById("resumeCareerPos");
	isertValueList[10] = resumeCareerPos;
    var resumeCareerLoc = document.getElementById("resumeCareerLoc");
	isertValueList[11] = resumeCareerLoc;
    var resumeCareerJob = document.getElementById("resumeCareerJob");
	isertValueList[12] = resumeCareerJob;
	var resumeLicenseDate = document.getElementById("resumeLicenseDate");
	isertValueList[13] = resumeLicenseDate;
	var resumeLicenseName = document.getElementById("resumeLicenseName");
	isertValueList[14] = resumeLicenseName;
	var resumeLicenseInst = document.getElementById("resumeLicenseInst");
	isertValueList[15] = resumeLicenseInst;
	var resumeLicenseGrade = document.getElementById("resumeLicenseGrade");
	isertValueList[16] = resumeLicenseGrade;

	settingDtoFnc();

//	alert(valueList[1]+ "." + nameList[1] + ".value");
	for(var i = 0; i < valueList.length; i++){ // 정의된 input태그들의 value를 addValueFnc()를 통해 하나로 합친 값으로 지정해준다.
		isertValueList[i].value  = valueList[i];
	}
	
	var resumeUpdateForm = document.getElementById("resumeUpdateForm");
	// 정의된 값을 form태그를 submit하여 보냄
	resumeUpdateForm.submit();
	
}

function addValueFnc(objectName){ // input들의 name으로 객체를 선언 배열형태의 input값들을 하나로 합친다.
	var inputObject = document.getElementsByName(objectName);
	var str = "";
	
	
	for(var i = 0; i < inputObject.length; i++){// 매개변수로 전달받은 변수의 길이만큼 더한다.
			str += inputObject[i].value;
			
			if(i != inputObject.length-1){
				str += ", ";
			}
			
	
	}
//	alert(str);
	return str;
}


function settingDtoFnc(){
	var educationTr = document.getElementsByClassName("educationTr");
	var careerTr = document.getElementsByClassName("careerTr");
	var resumeNo = document.getElementById("resumeNo");
	
	var educationDtoList = [];
	var careerDtoList = [];
	var dtoList = [];
	
//	var educationDtoV2 = document.getElementById("educationDtoV2");
//	var careerDtoV2 = document.getElementById("careerDtoV2");
	var dtoList = document.getElementById("dtoList");
	
	for(var i = 0; i < educationTr.length; i++){
		var educationDto = new Object;
		
		educationDto.resumeNo = resumeNo.value;
		var educationResumeValueList 
			= educationTr[i].getElementsByClassName("resumeValue");

		educationDto.eduBeginDate 
			= educationResumeValueList[0].children[0].value;
		educationDto.eduEndDate
			= educationResumeValueList[1].children[0].value;
		educationDto.eduName
			= educationResumeValueList[2].children[0].value;
		educationDto.eduMajor
			= educationResumeValueList[3].children[0].value;
		educationDto.eduLocation 
			= educationResumeValueList[4].children[0].value;
		educationDto.eduGrade 
			= educationResumeValueList[5].children[0].value;
		educationDto.eduGreaduate
			= educationResumeValueList[6].children[0].value;
		educationDto.eduNo
			= educationResumeValueList[7].children[0].value;

		educationDtoList.push(educationDto);
//		alert(educationResumeValueList[0].children[0].value);
//		alert(educationResumeValueList[1].children[0].value);
//		alert(educationResumeValueList[2].children[0].value);
//		alert(educationResumeValueList[3].children[0].value);
//		alert(educationResumeValueList[4].children[0].value);
//		alert(educationResumeValueList[5].children[0].value);
//		alert(educationResumeValueList[6].children[0].value);
//		alert(educationResumeValueList[7].children[0].value);
	}
//	educationDtoV2.value = educationDtoList;
	for(var i = 0; i < careerTr.length; i++){
		var careerDto = new Object;
		
		careerDto.resumeNo = resumeNo.value;

		var careerResumeValueList 
			= careerTr[i].getElementsByClassName("resumeValue");

		careerDto.carBeginDate
			= careerResumeValueList[0].children[0].value;
		careerDto.carEndDate
			= careerResumeValueList[1].children[0].value;
		careerDto.carName
			= careerResumeValueList[2].children[0].value;
		careerDto.carPosition
			= careerResumeValueList[3].children[0].value;
		educationDto.carLocation
			= careerResumeValueList[4].children[0].value;
		careerDto.carJob
			= careerResumeValueList[5].children[0].value;
		careerDto.carNo
			= careerResumeValueList[6].children[0].value;

		careerDtoList.push(careerDto);
//		alert(careerResumeValueList[0].children[0].value);
//		alert(careerResumeValueList[1].children[0].value);
//		alert(careerResumeValueList[2].children[0].value);
//		alert(careerResumeValueList[3].children[0].value);
//		alert(careerResumeValueList[4].children[0].value);
//		alert(careerResumeValueList[5].children[0].value);
//		alert(careerResumeValueList[6].children[0].value);
//		alert(careerDtoList);
	}
//	careerDtoV2.value = careerDtoList;
	var jsonData = {
		educationDtoList: educationDtoList,
	  	careerDtoList: careerDtoList
	};
	
	var dtoList = document.getElementById("dtoList");
	dtoList.value = JSON.stringify(jsonData);
	alert(dtoList);
//	dtoList[0] = educationDtoList;
//	dtoList[1] = careerDtoList;
//	alert(dtoList);
}