<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${boardDto.boardTitle} - JobHub</title>
	<link href="/JobHub/resources/css/Board.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function deleteFnc() {
		if (confirm("정말 삭제하시겠습니까?") == true){
			//true는 확인버튼을 눌렀을 때 코드 작성
			location.href = './delete.do?no=${boardDto.boardNo}';
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
		<jsp:include page="/WEB-INF/views/board/BoardNavigation.jsp"/>
				
		<div id="content">
			<form action="./update.do" method="get">
				<input type='hidden' name='no' value='${boardDto.boardNo}'>
				<div id="viewBox">
					<c:if test="${boardDto.boardWriter eq personalMemberDto.perNickname}">
						<button type='submit'>수정</button>
						<button type="button" onclick='deleteFnc()'>삭제</button>
					</c:if>
				</div>
				<div id="boardView">
					<table>
						<tr>
							<td colspan="5"><h3>제목: ${boardDto.boardTitle}</h3></td>
						</tr>
						<tr>
							<td>${boardDto.boardWriter}</td>
							<!-- 회사명 임시로 bTag에 담음 -->
							<td>${boardDto.boardTag}</td>
							<td>
								<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.boardCreDate}"/>
							</td>
							<td>
								조회수 ${boardDto.boardViews}
							</td>
							<td>
								추천수 ${boardDto.boardLikeCount}
							</td>
						</tr>
						<tr>
							<td colspan="5">${boardDto.boardContent}</td>
						</tr>
					</table>
				</div>
			</form>
			
<!-- 			<div style="width: 910px; border-radius: 10px; border-collapse: collapse; margin: 14px auto 0px auto; font-size: 20px; -->
<!-- 				background-color: #F7FBFF; padding: 20px; box-shadow: 0px 1px 4px 0px #ddd; table-layout: fixed;"> -->
<!-- 				<form action="" method="get"> -->
<%-- 					<input type='hidden' name='comNo' value='${CommentDto.comNo}'> --%>
<!-- 					<table> -->
<!-- 						<tr> -->
<!-- 							<td>댓글</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<%-- 							<td>작성자 ${commentDto.comWriter}</td> --%>
<%-- 							<td>내용 ${commentDto.comContent}</td> --%>
<!-- 							<td> -->
<%-- 								<fmt:formatDate pattern="yyyy-MM-dd" value="${commentDto.comCreDate}"/> --%>
<!-- 							</td> -->
<!-- 							<td><a>수정</a></td> -->
<!-- 							<td><a>삭제</a></td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
<!-- 				</form> -->
<!-- 				<form action="" method="post"> -->
<!-- 					<table style="width: 910px; border-radius: 10px; border-collapse: collapse; margin: 14px auto 0px auto; font-size: 20px; -->
<!-- 						background-color: #fff; padding: 20px; box-shadow: 0px 1px 4px 0px #ddd; table-layout: fixed;"> -->
<!-- 						<tr> -->
<%-- 							<td>${personalMemberDto.pNickname}</td> --%>
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<!-- 								<input type="text" name="comContent" placeholder="댓글을 남겨보세요" style="width: 740px; padding: 10px; -->
<!-- 									border-radius: 10px; margin: 10px 15px;"> -->
<!-- 								<button type="submit">등록</button> -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
<!-- 				</form> -->
<!-- 			</div> -->
			
			<div id="listBox">
				<button type="button" onclick="location.href='./list.do'">목록으로</button>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>