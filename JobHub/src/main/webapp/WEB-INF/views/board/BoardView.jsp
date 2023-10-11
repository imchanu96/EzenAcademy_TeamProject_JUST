<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <title>${boardDto.boardTitle} - JobHub</title> --%>
<title>JobHub : 게시글 조회</title>
<script type="text/javascript" src="/JobHub/resources/js/BoardView.js"></script>
<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<jsp:include page="/WEB-INF/views/board/BoardNavigation.jsp"/>
				
		<div id="content">
			<form action="./update.do" method="get">
				<input type='hidden' name='no' value='${boardDto.boardNo}'>
				<div id="viewBox">
					<c:if test="${boardDto.perNo eq personalMemberDto.perNo}">
						<button type='submit'>수정</button>
						<button type="button" onclick='deleteFnc(${boardDto.boardNo})'>삭제</button>
					</c:if>
				</div>
				<div id="boardView">
					<table>
						<tr>
							<td colspan="5"><p id="boardTitle">${boardDto.boardTitle}</p></td>
						</tr>
						<tr>
							<td class="boardInfo">${boardDto.boardWriter}</td>
							<!-- 회사명 임시로 bTag에 담음 -->
							<td class="boardInfo">${boardDto.boardTag}</td>
							<td class="boardInfo">
								수정일: <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.boardModDate}"/>
							</td>
							<td class="boardInfo">
								조회수 ${boardDto.boardViews}
							</td>
							<td class="boardInfo">
								추천수 ${boardDto.boardLikeCount}
							</td>
						</tr>
						<tr>
							<td colspan="5">
								<div id="boardContent">${boardDto.boardContent}</div>
							</td>
						</tr>
					</table>
				</div>
			</form>
			
			<div id="listBox">
				<button type="button" onclick="history.back()">목록으로</button>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>