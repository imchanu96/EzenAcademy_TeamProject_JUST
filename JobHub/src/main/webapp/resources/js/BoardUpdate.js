function titleFocusFnc() {
	var titleObj = document.getElementById("titleInput");
	
		titleObj.setAttribute("style", "outline: 1px solid #94b5fc");
}

function titleBlurFnc() {
	var titleObj = document.getElementById("titleInput");
	var titleErrorMsgObj = document.getElementById("titleErrorMsg")
	
	if (titleObj.value == "" || titleObj.value.length < 25) {
		titleObj.setAttribute("style", "border: 1px solid #d7dce5");
		titleErrorMsgObj.setAttribute("style", "display: none")
	} else if (titleObj.value.length > 24){
		titleObj.setAttribute("style", "border: 2px solid red");
		titleErrorMsgObj.setAttribute("style", "display: block")
	}
}

function contentFocusFnc() {
	var contentObj = document.getElementById("contentInput");
	
		contentObj.setAttribute("style", "outline: 1px solid #94b5fc");
}

function contentBlurFnc() {
	var contentObj = document.getElementById("contentInput");
	var contentErrorMsgObj = document.getElementById("contentErrorMsg")
	
	if (contentObj.value == "" || contentObj.value.length < 1001) {
		contentObj.setAttribute("style", "border: 1px solid #d7dce5");
		contentErrorMsgObj.setAttribute("style", "display: none");
	} else {
		contentObj.setAttribute("style", "border: 2px solid red");
		contentErrorMsgObj.setAttribute("style", "display: block");
	}
}

function submitFnc() {
	var titleObj = document.getElementById("titleInput");
	var contentObj = document.getElementById("contentInput");
	
	if(titleObj.value == "" && contentObj.value == ""){
		alert("제목과 내용을 입력해주세요.");
	} else if(titleObj.value == ""){
		alert("제목을 입력해주세요.");
	} else if(contentObj.value == ""){
		alert("내용을 입력해주세요.");
	} else{
		updateFnc();
	}
}

function updateFnc() {
var updateObj = document.getElementById('updateForm');

	if (confirm("이대로 수정하시겠습니까?") == true){ 
		alert("수정 완료되었습니다.");
		updateObj.submit();
	}else{
		return;
	}
}
	
function cancleFnc(boardNo) {
	if (confirm("정말 취소하시겠습니까?") == true){
		location.href = './listOne.do?no='+ boardNo;
		alert("취소되었습니다.");
	}else{
		return;
	}
}