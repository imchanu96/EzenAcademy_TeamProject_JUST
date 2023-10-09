<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 개인 회원 평균 적합도 TOP</title>

<script type="text/javascript">
	
	
</script>
<link rel="stylesheet" href="/JobHub/resources/css/AdminMemberList.css" type="text/css">
</head>
<body>	
	
<%-- 	<jsp:include page="../Header.jsp"></jsp:include> --%>
	<div style="margin-top: 100px;">
	
	</div>
	<jsp:include page="./util/SideBar.jsp"></jsp:include>
	<div id="tableDiv">
		
		<p>${myMsg}</p>
		<select>
			<option>top5</option>
			<option>top10</option>
			<option>전체보기</option>
		</select>
		<input type="button" value="확인">
		<table>
			<tr>
				<th>회원 번호</th>
				<th>회원 이름</th>
				<th>재직중인 회사</th>
				<th>평균 적합도</th>
			</tr>
			<c:forEach var="personalRecommendDto" items="${personalRecommendRateList}">
			<tr>
				<td>${personalRecommendDto.PERSONAL_NUMBER}</td>
				<td>${personalRecommendDto.PERSONAL_NAME}</td>
				<td>${personalRecommendDto.PERSONAL_COMPANY}</td>
				<td>${personalRecommendDto.totalRateAvg}%</td>
				
			</tr>
			</c:forEach>	
		</table>
			
		
	</div>
	
</body>
</html>