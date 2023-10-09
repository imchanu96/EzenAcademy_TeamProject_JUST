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
		<form action="./personalRecommendTotalRateAverageTop.do" method="get">
			<select id="listNumOption" name="listNumOption">
				<option value="5">top5</option>
				<option value="10">top10</option>
				<option>전체보기</option>
			</select>
			<input type="submit" value="확인">
		</form>
		<table>
			<tr>
				<th style="background-color: #537DC9;">회원 번호</th>
				<th style="background-color: #537DC9;">회원 이름</th>
				<th style="background-color: #537DC9;">재직중인 회사</th>
				<th style="background-color: #537DC9;">평균 적합도</th>
			</tr>
			<c:forEach var="personalRecommendDto" items="${personalRecommendRateList}" end="${listNum}">
			<tr style="height: 35px;">
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