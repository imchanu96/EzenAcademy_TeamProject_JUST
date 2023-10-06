<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 게시글 작성</title>
<script type="text/javascript" src="/JobHub/resources/js/BoardWrite.js"></script>
<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<jsp:include page="/WEB-INF/views/board/BoardNavigation.jsp"/>
		
		<div id="content">
			<form id="addForm" action="./addCtr.do" method='post'>
				<input type='hidden' name='boardWriter' value='${personalMemberDto.perNickname}'>
				<input type='hidden' name='perNo' value='${personalMemberDto.perNo}'>
				<!-- 회사명 임시로 bTag에 담음 -->
				<input type='hidden' name='boardTag' value='${personalMemberDto.perCom}'>
				<div id="titleInputBox">
					<input name="boardTitle" id="titleInput" type="text"
						placeholder="제목을 입력해주세요(24자 이내)"
						onfocus="titleFocusFnc();" onblur="titleBlurFnc();">
					<div class="errorMsg" id="titleErrorMsg">
						최대 24자 이내로 입력해주세요.
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="boardContent"
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