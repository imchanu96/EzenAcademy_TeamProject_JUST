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
		<form action="delete.do" method="get">
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
			<c:forEach var="companyMemberDto" items="${companyList}">
				<tr>
					<td>${companyMemberDto.cNo}</td>
					<td>${companyMemberDto.cInChargeName}</td>
					<td>${companyMemberDto.cCode}</td>
					<td>${companyMemberDto.cName}</td>
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
						value="${companyMemberDto.cCreDate}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${companyMemberDto.cModDate}" /></td>
						<td><div><input type="submit" value="삭제" name="cNo"></div></td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>
	
</body>
</html>