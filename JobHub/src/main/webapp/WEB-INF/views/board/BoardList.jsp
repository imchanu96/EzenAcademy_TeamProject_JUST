<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>
	<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
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
			<div id="writeBox">
				<button type="submit" onclick="location.href='./add.do'">글쓰기</button>
			</div>
			<div>
				<table id="boardList">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<c:choose>
						<c:when test="${empty boardList}">
							<tr>
							<td  colspan="5">등록된 게시글이 없습니다.</td>
						</c:when>
						<c:otherwise>
							<c:forEach var="boardDto" items="${boardList}">
							<tr>
								<td>${boardDto.bNo}</td>
								<td><a href='./listOne.do?no=${boardDto.bNo}'>${boardDto.bTitle}</a></td>
								<td>${boardDto.bWriter}</td>
								<td>
									<fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${boardDto.bCreDate}"/>
								</td>
								<td>${boardDto.bViews}</td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				
				<jsp:include page="/WEB-INF/views/board/Paging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap"/>
				</jsp:include>
			
				<form action="./list.do" id="pagingForm" method="post">
					<input type="hidden" id="curPage" name="curPage" value="${pagingMap.boardPaging.curPage}">
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>