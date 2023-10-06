<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 내 글 조회</title>

<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/Board.css" type="text/css">
</head>
<body>
	<jsp:include page="../../Header.jsp"/>
	
	<div id="container">
		<form action="personalMyPostList.do" method="get">
		
		<jsp:include page="./PersonalMyPageNav.jsp"/>
		
		</form>
		
		<div id="content">
				<c:if test="${not empty personalMemberDto}">
					<div id="writeBox">
						<button type="button" onclick="writeFnc(${personalDto.perNo});">글쓰기</button>
					</div>
				</c:if>
				<div>
					<table id="boardList">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th colspan="2">글쓴이</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
						<c:if test="${not empty personalMemberDto}">
							<c:choose>
								<c:when test="${empty boardList}">
									<tr>
									<td colspan="6">등록된 게시글이 없습니다.</td>
								</c:when>
								<c:otherwise>
									<c:forEach var="boardDto" items="${boardList}">
									<tr>
										<td>${boardDto.boardNo}</td>
										<td><a href='./listOne.do?no=${boardDto.boardNo}'>${boardDto.boardTitle}</a></td>
										<td>${boardDto.boardWriter}</td>
										<!-- 회사명 임시로 bTag에 담음 -->
										<td>${boardDto.boardTag}</td>
										<td>
		<%-- 									<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.boardCreDate}"/> --%>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${boardDto.boardCreDate}"/>
										</td>
										<td>${boardDto.boardViews}</td>
									</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</c:if>
						
						<c:if test="${empty personalMemberDto}">
							<c:choose>
								<c:when test="${empty boardList}">
									<tr class="blur">
									<td colspan="5">등록된 게시글이 없습니다.</td>
								</c:when>
								<c:otherwise>
									<c:forEach var="boardDto" items="${boardList}">
									<tr class="blur">
										<td>${boardDto.boardNo}</td>
										<td>${boardDto.boardTitle}</td>
										<td>${boardDto.boardWriter}</td>
										<td>
		<%-- 									<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.boardCreDate}"/> --%>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${boardDto.boardCreDate}"/>
										</td>
										<td>${boardDto.boardViews}</td>
									</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							
							<div id="loginSign">
								<div>
									<p><a href="../personal/login.do">로그인</a> 후 이용하실 수 있습니다.</p>
								</div>
							</div>
						<!-- 비회원 loginSign -->
						
						</c:if>
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
<!-- 	</div>	 -->
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>