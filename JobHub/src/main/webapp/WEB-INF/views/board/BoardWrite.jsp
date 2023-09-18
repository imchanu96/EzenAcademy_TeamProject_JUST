<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardWrite</title>
	<style type="text/css">
	
			/* 	모든 선택자의 border: 1px solid red; 는 작업용입니다. */
			
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2;}
			
/* content */
		#container {
			width: 1280px;
			height: 1000px;
			margin: 0px auto;
		}
/* navigation */
		#navigation {
			margin: 10px;
			float: left;
			width: 250px;
			height: 950px;
			font-size: 25px;
			text-align: center;
			background-color: #eff5ff;
		}
		#smallMenuBox {
			margin: 30px auto;
			width: 200px;
			height: 500px;
		}
		.smallMenuItem {
			margin-bottom: 20px;
		}
		.smallMenuItem a {
			color: #475067;
		}
/* content */
		#content {
			margin: 10px;
			float: left;
			width: 980px;
			height: 950px;
			font-size: 30px;
			background-color: #f8fafc;
		}
		
		#boardWriteBox{
			border: 1px solid black;
		}
		
		#titleInput{
			border: 1px solid #999999;
			background-color: #fff;
			margin: 10px 25px 10px 25px;
			padding: 10px;
			border-radius: 5px;
			width: 910px;
			height: 30px;
		}
		
		#contentInput{
			border: 1px solid #999999;
			background-color: #fff;
			margin: 0px 25px 10px 25px;
			padding: 10px;
			border-radius: 5px;
			width: 910px;
			height: 500px;
		}
		
	</style>
	<script type="text/javascript">
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
		
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/board/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="./list.do">전체 게시판</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div id="boardWriteBox">
				<form action="./addCtr.do" method='post'>
					<input type='hidden' name='bWriter' value='${personalmemberDto.getpNickname()}'>
					<div id="titleInputBox">
						<input id="titleInput" name="bTitle" type="text" placeholder="제목을 입력해주세요">
					</div>
					<div id="contentInputBox">
						<textarea id="contentInput" name ='bContent' placeholder="내용을 입력해주세요"></textarea>
					</div>
					<button type="submit" onclick="registerFnc()">등록</button>
					<button type="button" onclick="cancleFnc()">취소</button>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>