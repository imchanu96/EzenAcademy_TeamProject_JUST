<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 - JobHub</title>
	<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
<script>
	
	function titleFocusFnc() {
		var titleObj = document.getElementById("titleInput");
		
			titleObj.setAttribute("style", "outline: 1px solid #94b5fc");
	}

	function titleBlurFnc() {
		var titleObj = document.getElementById("titleInput");
		var titleErrorMsgObj = document.getElementById("titleErrorMsg");
		
		if (titleObj.value == "" || titleObj.value.length < 20) {
			titleObj.setAttribute("style", "border: 1px solid #d7dce5");
			titleErrorMsgObj.setAttribute("style", "display: none");
			
			return true;
		} else if (titleObj.value.length > 20){
			titleObj.setAttribute("style", "border: 2px solid red");
			titleErrorMsgObj.setAttribute("style", "display: block");
			
			return false;
		}
	}
	
	function contentFocusFnc() {
		var contentObj = document.getElementById("contentInput");
		
			contentObj.setAttribute("style", "outline: 1px solid #94b5fc");
	}
	
	function contentBlurFnc() {
		var contentObj = document.getElementById("contentInput");
		var contentErrorMsgObj = document.getElementById("contentErrorMsg");
		
		if (contentObj.value == "" || contentObj.value.length < 1000) {
			contentObj.setAttribute("style", "border: 1px solid #d7dce5");
			contentErrorMsgObj.setAttribute("style", "display: none");
			
			return true;
		} else {
			contentObj.setAttribute("style", "border: 2px solid red");
			contentErrorMsgObj.setAttribute("style", "display: block");
			
			return false;
		}
	}
	
	function registerFnc() {
		if (confirm("이대로 등록하시겠습니까?")){
			alert("등록 완료되었습니다.");
		}else{
			return;
		}
	}
		
	function cancleFnc() {
		if (confirm("정말 취소하시겠습니까?")){ 
			location.href = "./list.do";
			alert("취소되었습니다.");
		}else{
			return;
		}
	}
	
	function submitFnc() {
		var postObj = document.getElementsByTagName('Form')[0];
		
		if (titleBlurFnc() == true && contentBlurFnc() == true) {
			registerFnc();
			postObj.submit();
		}
	}
</script>

</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="./list.do">전체 게시판</a>
				</div>
			</div>
		</div>

		<div id="content">
			<form action="./addCtr.do" method='post'>
				<input type='hidden' name='bWriter' value='${personalMemberDto.getpNickname()}'>
				<input type='hidden' name='pNo' value='${personalMemberDto.getpNo()}'>
				<div id="titleInputBox">
					<input name="bTitle" id="titleInput" type="text"
						placeholder="제목을 입력해주세요(20자 이내)"
						onfocus="titleFocusFnc();" onblur="titleBlurFnc();">
					<div class="errorMsg" id="titleErrorMsg">
						최대 20자 이내로 입력해주세요.
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="bContent"
						placeholder="내용을 입력해주세요."
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();"></textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 1000자 이내로 입력해주세요.
					</div>
				</div>
				<div id="buttonBox">
					<button type="button" onclick="submitFnc()">등록</button>
					<button type="button" onclick="cancleFnc()">취소</button>
				</div>
			</form>
		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>