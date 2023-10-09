<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 개인회원 목록</title>

<script type="text/javascript">
	function persoanlPermissionUpdateFnc(perNo) {
		location.href= "./personalUpdate.do?perNo=" + perNo;
	}
</script>
<link rel="stylesheet" href="/JobHub/resources/css/AdminMemberList.css" type="text/css">
</head>
<body>	
	
<%-- 	<jsp:include page="../Header.jsp"></jsp:include> --%>
	<div style="margin-top: 100px;">
	
	</div>
	<jsp:include page="./util/SideBar.jsp"></jsp:include>
	<div id="tableDiv">
		<form action="personalUpdate.do" method="get">
		<span style="font-size: 22px; font-weight: bold;">[개인회원 목록]</span>
		<table>
			<tr>
				<th style="width: 10%; background-color: #537DC9;">회원번호</th>
				<th style="width: 10%; background-color: #537DC9;">이름</th>
				<th style="width: 15%; background-color: #537DC9;">아이디</th>
				<th style="width: 20%; background-color: #537DC9;">닉네임</th>
				<th style="width: 15%; background-color: #537DC9;">권한 레벨</th>
				<th style="width: 15%; background-color: #537DC9;">생성일</th>
				<th style="width: 15%; background-color: #537DC9;">수정일</th>
			</tr>
			<c:forEach var="personalDto" items="${personalList}">
				<tr>
					<td style="text-align: center;">${personalDto.perNo}</td>
					<td style="text-align: center;">${personalDto.perName}</td>
					<td style="text-align: center;">${personalDto.perId}</td>
					<td style="text-align: center;">${personalDto.perNickname}</td>
					<td style="text-align: right;">${personalDto.perPermission}
						<c:choose>
							<c:when test="${personalDto.perPermission == 0}">
										탈퇴 회원
									</c:when>
							<c:when test="${personalDto.perPermission == 1 
											|| personalDto.perPermission == 2}">
										개인 회원
									</c:when>
							<c:when test="${personalDto.perPermission == 5}">
										기업 회원
									</c:when>
							<c:when test="${personalDto.perPermission == 10}">
										관리자
									</c:when>
						</c:choose>
					</td>
					<td style="text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${personalDto.perCreateDate}" />
					</td>
					<td style="text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${personalDto.perModifyDate}" />
					</td>
					<td>
						<div>
							<input type="button" value="삭제" style="background-color: #ff837e;
																    border: none;
																    border-radius: 12px;
																    box-shadow: 0px 1px 4px 0px #ddd;
																    font-size: 16px;
																    font-weight: bold;
																    color: #fff;
																    cursor: pointer;
																    margin: 5px;"
								onclick="persoanlPermissionUpdateFnc(${personalDto.perNo});">
						</div>
					</td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>
	
</body>
</html>