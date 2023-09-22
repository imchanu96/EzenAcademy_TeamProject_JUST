<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${boardDto.bTitle} - JobHub</title>
	<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function deleteFnc() {
		if (confirm("정말 삭제하시겠습니까?") == true){
			//true는 확인버튼을 눌렀을 때 코드 작성
			location.href = './delete.do?no=${boardDto.bNo}';
			alert("삭제되었습니다.");
		}else{
			// false는 취소버튼을 눌렀을 때, 취소됨
			return;
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
			<form action="./update.do" method="get">
				<input type='hidden' name='no' value='${boardDto.bNo}'>
				<div id="viewBox">
					<c:if test="${boardDto.bWriter eq personalMemberDto.pNickname}">
						<button type='submit'>수정</button>
						<button type="button" onclick='deleteFnc()'>삭제</button>
					</c:if>
				</div>
				<table id="boardView">
					<tr>
						<td colspan="4"><h3>제목: ${boardDto.bTitle}</h3></td>
					</tr>
					<tr>
						<td>글쓴이: ${boardDto.bWriter}</td>
						<td>
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.bCreDate}"/>
						</td>
						<td>
							조회수 ${boardDto.bViews}
						</td>
						<td>
							추천수 ${boardDto.bLikeCount}
						</td>
					</tr>
					<tr>
						<td colspan="4">${boardDto.bContent}</td>
					</tr>
				</table>
			</form>
			<div id="listBox">
				<button type="button" onclick="location.href='./list.do'">목록으로</button>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>