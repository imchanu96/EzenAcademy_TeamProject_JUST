<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardView</title>
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
		
		.boardButton{
			float: right;
		}
		
 		p{
			clear: both;
 		}
		
		#content > div {
			background-color: #fff;
		}
		.boardViewT {
			border: 1px solid black;
			width: 980px;
			font-size: 20px;
		}
		
		.boardViewT td{
			padding: 10px;
		}
		
		#boardComment{
			border: 1px solid black;
			width: 900px;
			height: 100px;
			margin: 40px;
		}
		
	</style>
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
			<form class="boardViewT" action="./update.do" method="get">
				<input type='hidden' name='no' value='${boardDto.bNo}'>
				<div class="boardButton">
					<c:if test="${boardDto.bWriter eq personalMemberDto.pNickname}">
						<button type='submit'>수정</button>
						<button type="button" onclick='deleteFnc()'>삭제</button>
					</c:if>
				</div>
				<table>
					<tr>
						<td colspan="2"><h3>제목: ${boardDto.bTitle}</h3></td>
					</tr>
					<tr>
						<td>글쓴이: ${boardDto.bWriter}</td>
						<td>
							<fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${boardDto.bCreDate}"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">${boardDto.bContent}</td>
					</tr>
				</table>
				
				<div id="boardComment">
					댓글
				</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>