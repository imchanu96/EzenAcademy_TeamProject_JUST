<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 게시판</title>
<script type="text/javascript" src="/JobHub/resources/js/BoardList.js"></script>
<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<jsp:include page="/WEB-INF/views/board/BoardNavigation.jsp"/>
<%-- 	${searchText} --%>
		<div id="content">
			<c:if test="${not empty personalMemberDto}">
				<div id="writeBox">
					<form action="./list.do" id="searchForm" method="post">
					<select id="search" name="search">
						<option value="BOARD_TITLE">제목</option>
						<option value="BOARD_WRITER">글쓴이</option>
						<option value="BOARD_CONTENT">내용</option>
					</select>
					<input type="text" id="searchText" 
					name="searchText" placeholder="검색 내용" value="${searchText}">
					<input type="submit" value="검색" id="searchBtn">
					</form>
					<button type="button" onclick="writeFnc(${personalDto.perNo});">글쓰기</button>
				</div>
			</c:if>
			<div>
				<table id="boardList">
					<tr>
						<th style="width: 66px;">번호</th>
						<th style="width: 392px;">제목</th>
						<th id="writer" style="width: 248px;">글쓴이 &emsp;&emsp;&emsp;&emsp;&emsp;</th>
						<th style="width: 116px;">작성일</th>
						<th style="width: 87px;">조회수</th>
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
									<td id="tdWriter">
										<span>${boardDto.boardWriter}</span>
										&nbsp;
										<span id="spanBTag">${boardDto.boardTag}</span>
									</td>
									<!-- 회사명 임시로 bTag에 담음 -->
<%-- 									<td>${boardDto.boardTag}</td> --%>
									<td>	
									<c:set var="now" value="<%=new java.util.Date()%>" />
									<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
									<!-- 화면에 뿌릴때 -->
									
<%-- 									<c:out value="${sysDate}"/> --%>
									<c:set var="creDate">
										<fmt:formatDate value="${boardDto.boardCreDate}" pattern="yyyy-MM-dd"/>
									</c:set>
										<c:if test="${sysDate == creDate}">
											<fmt:formatDate pattern="HH:mm" value="${boardDto.boardCreDate}"/>
										</c:if>
										<c:if test="${sysDate != creDate}">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${boardDto.boardCreDate}"/>
										</c:if>
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
								<p><a href="../personal/login.do">로그인</a> 후 이용해주세요.</p>
							</div>
						</div>
					<!-- 비회원 loginSign -->
					
					</c:if>
				</table>
				<jsp:include page="/WEB-INF/views/board/Paging.jsp">
					<jsp:param value="${pagingMap}" name="pagingMap"/>
				</jsp:include>
			
				<form action="./list.do" id="pagingForm" method="post">
					<input type="hidden" id="search" name="search" value="${search}">
					<input type="hidden" id="searchText" name="searchText"value="${searchText}">
					<input type="hidden" id="curPage" name="curPage" value="${pagingMap.boardPaging.curPage}">
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>