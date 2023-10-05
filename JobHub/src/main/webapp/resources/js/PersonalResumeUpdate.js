
function addTrFnc(trObj, tdNum){
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
	alert(removeTagList.length);
	if(removeTagList.length <= 1){
		alert("첫 줄은 삭제가 불가능합니다.");
	}else{
		removeTagList[removeTagList.length-1].remove(this);
	}

}

function submitFnc(){
	
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
	
//	alert(valueList[1]+ "." + nameList[1] + ".value");
	for(var i = 0; i < valueList.length; i++){
		isertValueList[i].value  = valueList[i];
	}
	var resumeUpdateForm = document.getElementById("resumeUpdateForm");
	resumeUpdateForm.submit();
	
};

function addValueFnc(objectName){
	var object = document.getElementsByName(objectName);
	var str = "";
	for(var i = 0; i < object.length; i++){
			str += object[i].value;
			if(i != object.length-1){
				str += ", ";
			}
	}
//	alert(str);
	return str;
}