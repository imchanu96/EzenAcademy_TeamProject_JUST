<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
	
		function titleFocusFnc() {
			var titleObj = document.getElementById("titleInput");
			
				titleObj.setAttribute("style", "outline: 1px solid #94b5fc");
		}
	
		function titleBlurFnc() {
			var titleObj = document.getElementById("titleInput");
			var titleErrorMsgObj = document.getElementById("titleErrorMsg")
			
			if (titleObj.value == "" || titleObj.value.length < 50) {
				titleObj.setAttribute("style", "border: 1px solid #d7dce5");
				titleErrorMsgObj.setAttribute("style", "display: none")
			} else if (titleObj.value.length > 20){
				titleObj.setAttribute("style", "border: 2px solid red");
				titleErrorMsgObj.setAttribute("style", "display: block")
			}
		}
		
		function contentFocusFnc() {
			var contentObj = document.getElementById("contentInput");
			
				contentObj.setAttribute("style", "outline: 1px solid #94b5fc")
		}
		
		function contentBlurFnc() {
			var contentObj = document.getElementById("contentInput");
			var contentErrorMsgObj = document.getElementById("contentErrorMsg")
			
			if (contentObj.value == "" || contentObj.value.length < 1000) {
				contentObj.setAttribute("style", "border: 1px solid #d7dce5");
				contentErrorMsgObj.setAttribute("style", "display: none")
			} else {
				contentObj.setAttribute("style", "border: 2px solid red");
				contentErrorMsgObj.setAttribute("style", "display: block")
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
			
		function cancleFnc() {
			if (confirm("정말 취소하시겠습니까?") == true){
				location.href = './listOne.do?no=${boardDto.boardNo}';
				alert("취소되었습니다.");
			}else{
				return;
			}
		}
		
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<jsp:include page="/WEB-INF/views/board/BoardNavigation.jsp"/>
	
		<div id="content">
			<form id="updateForm" action="./updateCtr.do" method='post'>
				<input type='hidden' name='boardNo' value='${boardDto.boardNo}'>
				<div id="titleInputBox">
					<input name="boardTitle" id="titleInput" type="text" 
						value='${boardDto.boardTitle}' onfocus="titleFocusFnc();" onblur="titleBlurFnc();">
					<div class="errorMsg" id="titleErrorMsg">
						최대 20자 이내로 입력해주세요.
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="boardContent"
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();">${boardDto.boardContent}</textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 200자 이내로 입력해주세요.
					</div>
				</div>
				<div id="buttonBox">
					<button type="button" onclick="updateFnc()">등록</button>
					<button type="button" onclick="cancleFnc()">취소</button>
				</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>