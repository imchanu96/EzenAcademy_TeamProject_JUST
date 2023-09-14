<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>
	<style type="text/css">
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
		.boardListT {
			border-collapse: collapse;
			border: 1px solid #999999;
			width: 980px;
			font-size: 20px;
		}
		
		.boardListT th, .boardListT td{
			text-align: center;
			padding: 10px;
		}
		
		.boardListT th{
			border-top: 2px solid #aaaaaa;
			border-bottom: 1px solid #cccccc;
		}
		
		.boardListT td{
			border-bottom: 1px solid #cccccc;
		}
	</style>
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="Board.jsp">전체 게시판</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div>
				<button id='writeButton' onclick="location.href='BoardWrite.jsp'">글쓰기</button>
			</div>
				<table class='boardListT'>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="BoardView.jsp">안녕하세요</a></td>
						<td>박미영</td>
						<td>2023-09-14</td>
						<td>0</td>
					</tr>
				</table>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/Paging.jsp">
		<jsp:param value="${paginMap}" name="pagingMap"/>
	</jsp:include>
	
	<form action="./list.do" id="pagingForm" method="post">
		<input type="hidden" id="curPage" name="curPage" value="${pagingMap.boardPaging.curPage}">
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>