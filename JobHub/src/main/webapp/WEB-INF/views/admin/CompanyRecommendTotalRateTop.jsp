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
		
		<form action="./companyRecommendTotalRateAverageTop.do" method="get">
			<select id="listNumOption" name="listNumOption">
				<option value="5">top5</option>
				<option value="10">top10</option>
				<option >전체보기</option>
			</select>
			<input type="submit" value="확인">
		</form>
		<table>
			<tr>
				<th style="background-color: #5A8FA0;">기업 번호</th>
				<th style="background-color: #5A8FA0;">기업명</th>
				<th style="background-color: #5A8FA0;">기업 키워드 선호도</th>
				<th style="background-color: #5A8FA0;">기업 자격증 선호도</th>
				<th style="background-color: #5A8FA0;">기업 학력 선호도</th>
				<th style="background-color: #5A8FA0;">기업 경력 선호도</th>
				<th style="background-color: #5A8FA0;">평균 적합도</th>
			</tr>
			<c:forEach var="companyRecommendDto" items="${companyRecommendRateList}" end="${listNum}">
				<c:set var="companyPrefer"
					value="${fn:split(companyRecommendDto.COMPANY_PREFER, ',')}"/>
				<tr style="height: 35px;">
					<td style="text-align: center;">
						<span style="font-size: 15px;">${companyRecommendDto.COMPANY_NUMBER}</span>
					</td>
					<td>
						<span style="font-size: 15px;">${companyRecommendDto.COMPANY_NAME}</span>
					</td>
					<td style="text-align: right;">
						<span style="font-size: 15px;">${companyPrefer[0]}</span> &nbsp; 
						<span style="font-weight: bold;">${companyPrefer[1]}%</span>
					</td>
					<td style="text-align: right;">
						<span style="font-size: 15px;">${companyPrefer[2]}</span> &nbsp;
						<span style="font-weight: bold;">${companyPrefer[3]}%</span>
					</td>
					<td style="text-align: right;">
						<span style="font-size: 15px;">${companyPrefer[4]}</span> &nbsp;
						<span style="font-weight: bold;">${companyPrefer[5]}%</span>
					</td>
					<td style="text-align: right;">
						<span style="font-size: 15px;">${companyPrefer[6]}</span> &nbsp;
						<span style="font-weight: bold;">${companyPrefer[7]}%</span>
					</td>
					<td style="text-align: right;">
						<span style="font-weight: bold;">${companyRecommendDto.totalRateAvg}%</span>
					</td>
				</tr>
			</c:forEach>	
		</table>
				
		
	</div>
	
</body>
</html>