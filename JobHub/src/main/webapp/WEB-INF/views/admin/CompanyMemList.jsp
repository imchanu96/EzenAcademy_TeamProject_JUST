<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 기업회원 목록</title>

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
		<span style="font-size: 22px; font-weight: bold;">[기업회원 목록]</span>
		<table>
			<tr>
				<th style="width: 10%; background-color: #5A8FA0;">회원번호</th>
				<th style="width: 10%; background-color: #5A8FA0;">담당자명</th>
				<th style="width: 15%; background-color: #5A8FA0;">사업자번호</th>
				<th style="width: 28%; background-color: #5A8FA0;">기업명</th>
				<th style="width: 10%; background-color: #5A8FA0;">권한 레벨</th>
				<th style="width: 10%; background-color: #5A8FA0;">가입일</th>
				<th style="width: 10%; background-color: #5A8FA0;">최종수정일</th>
				<th style="width: 3%; background-color: #5A8FA0;">삭제</th>
			</tr>
			<c:forEach var="companyMemberDto" items="${companyMemList}">
				<tr>
					<td style="text-align: center;">${companyMemberDto.comNo}</td>
					<td style="text-align: center;">${companyMemberDto.comInChargeName}</td>
					<td style="text-align: center;">${companyMemberDto.comCode}</td>
					<td style="text-align: center;">${companyMemberDto.comName}</td>
					<td style="text-align: right;">
						<c:choose>
							<c:when test="${companyMemberDto.comPermission == 0}">
								탈퇴 회원 
									</c:when>
							<c:when test="${companyMemberDto.comPermission == 5
										|| companyMemberDto.comPermission == 6}">
								기업 회원
								${companyMemberDto.comPermission} &nbsp;
									</c:when>
						</c:choose>
					</td>
					<td style="text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" 
							value="${companyMemberDto.comCreDate}" />
					</td>
					<td style="text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" 
							value="${companyMemberDto.comModDate}" />
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
								onclick="companyPermissionUpdateFnc(${companyMemberDto.comNo});">
						</div>
					</td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>
	
</body>
</html>