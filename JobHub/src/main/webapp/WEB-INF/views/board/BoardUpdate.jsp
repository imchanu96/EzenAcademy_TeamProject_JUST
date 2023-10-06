<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 게시글 수정</title>
<script type="text/javascript" src="/JobHub/resources/js/BoardUpdate.js"></script>
<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
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
						최대 24자 이내로 입력해주세요.
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="boardContent"
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();">${boardDto.boardContent}</textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 1000자 이내로 입력해주세요.
					</div>
				</div>
				<div id="buttonBox">
					<button type="button" onclick="submitFnc()">등록</button>
					<button type="button" onclick="cancleFnc(${boardDto.boardNo})">취소</button>
				</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>