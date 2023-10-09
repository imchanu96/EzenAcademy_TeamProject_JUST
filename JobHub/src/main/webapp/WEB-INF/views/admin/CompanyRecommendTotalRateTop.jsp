<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 기업 회원 평균 적합도 TOP</title>

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
				<th >기업 번호</th>
				<th >기업명</th>
				<th >기업 키워드 선호도</th>
				<th >기업 자격증 선호도</th>
				<th >기업 학력 선호도</th>
				<th >기업 경력 선호도</th>
				<th >평균 적합도</th>
			</tr>
			<c:forEach var="companyRecommendDto" items="${companyRecommendRateList}">
			<c:set var="companyPrefer"
				value="${fn:split(companyRecommendDto.COMPANY_PREFER, ',')}"/>
			<tr>
				<td>${companyRecommendDto.COMPANY_NUMBER}</td>
				<td>${companyRecommendDto.COMPANY_NAME}</td>
				<td>${companyPrefer[0]} &nbsp; ${companyPrefer[1]}%</td>
				<td>${companyPrefer[2]} &nbsp; ${companyPrefer[3]}%</td>
				<td>${companyPrefer[4]} &nbsp; ${companyPrefer[5]}%</td>
				<td>${companyPrefer[6]} &nbsp; ${companyPrefer[7]}%</td>
				<td>${companyRecommendDto.totalRateAvg}%</td>
				
			</tr>
			</c:forEach>	
		</table>
				
		
	</div>
	
</body>
</html>