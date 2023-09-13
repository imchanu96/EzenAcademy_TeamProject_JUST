<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 목록</title>
<style type="text/css">
	#tableDiv{
		width: 70%;
		float:left";
	}
	table{
		border: 1px solid black;
		border-collapse: collapse;
		font-size: 23px;
	}
	th{
		background: gray;
		border: 1px solid black;
	}
	td{
		border: 1px solid black;
		font-size: 20px;
		
	}
</style>

<script type="text/javascript">
	
</script>
</head>
<body>	
	
<%-- 	<jsp:include page="../Header.jsp"></jsp:include> --%>
	<div style="margin-top: 100px;">
	
	</div>
	<jsp:include page="./util/SideBar.jsp"></jsp:include>
	<div id="tableDiv">
		<table>
			<tr>
				<th style="width: 10%;">회원 번호</th>
				<th style="width: 20%;">회원 이름</th>
				<th style="width: 15%;">회원 아이디</th>
				<th style="width: 10%;">회원 닉네임</th>
				<th style="width: 15%;">권한 레벨</th>
				<th style="width: 15%;">생성 일</th>
				<th style="width: 15%;">수정 일</th>
			</tr>
			<c:forEach var="personalDto" items="${personalList}">
				<tr>
					<td>${personalDto.pNo}</td>
					<td>${personalDto.pName}</td>
					<td>${personalDto.pId}</td>
					<td>${personalDto.pNickname}</td>
					<td>
						<c:choose>
							<c:when test="${personalDto.pPermission == 1 
								|| personalDto.pPermission == 2}">
										개인 회원
									</c:when>
							<c:when test="${personalDto.pPermission == 5}">
										기업 회원
									</c:when>
							<c:when test="${personalDto.pPermission == 10}">
										관리자
									</c:when>
						</c:choose>
					</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${personalDto.pCreateDate}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${personalDto.pModifyDate}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>