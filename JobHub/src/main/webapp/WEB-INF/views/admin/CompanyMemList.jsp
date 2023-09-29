<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>기업회원 목록</title>

<script type="text/javascript">
	function companyPermissionUpdateFnc(comNo) {
		location.href= "./companyUpdate.do?comNo=" + comNo;
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
		<form action="companyUpdate.do" method="get">
		<table>
			<tr>
				<th style="width: 10%;">기업회원 번호</th>
				<th style="width: 20%;">담당자 이름</th>
				<th style="width: 15%;">회사 코드</th>
				<th style="width: 10%;">회사명</th>
				<th style="width: 15%;">권한 레벨</th>
				<th style="width: 15%;">생성 일</th>
				<th style="width: 15%;">수정 일</th>
			</tr>
			<c:forEach var="companyMemberDto" items="${companyMemList}">
				<tr>
					<td>${companyMemberDto.comNo}</td>
					<td>${companyMemberDto.comInChargeName}</td>
					<td>${companyMemberDto.comCode}</td>
					<td>${companyMemberDto.comName}</td>
					<td>
						<c:choose>
							<c:when test="${companyMemberDto.comPermission == 0}">
								탈퇴 회원
									</c:when>
							<c:when test="${companyMemberDto.comPermission == 5}">
								기업 회원
									</c:when>
						</c:choose>
					</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${companyMemberDto.comCreDate}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${companyMemberDto.comModDate}" /></td>
						<td><div><input type="button" value="삭제" 
							onclick="companyPermissionUpdateFnc(${companyMemberDto.comNo});"></div></td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>
	
</body>
</html>