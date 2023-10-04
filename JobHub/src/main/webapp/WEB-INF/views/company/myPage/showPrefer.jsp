<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선호도 설정</title>
<link rel="stylesheet" href="/JobHub/resources/css/ShowPrefer.css" type="text/css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/Header.jsp"/>

	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="">내가 쓴 글</a>
				</div>
				<div class="smallMenuItem">
					<a href="">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./setPrefer.do">선호도 설정</a>
				</div>
			</div>
		</div>
		<div id="content">
			<c:set var="preferList" value="${fn:split(companyPrefer.comPrefer, ',')}"/>
			
			<div class="infoTitle">
				내 선호도
			</div>
			
			<div id="preferItemsBox">
			
				<div class="preferItems">
					<div class="preferName">키워드</div>
					<div class="weightingSelected">
						"${preferList[0]} " &nbsp;
					</div>
					<div class="weightingPercentage">
						가중치: ${preferList[1]}%
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">자격증</div>
					<div class="weightingSelected">
						${preferList[2]} 개
					</div>
					<div class="weightingPercentage">
						가중치: ${preferList[3]}%
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">학력</div>
					<div class="weightingSelected">
						${preferList[4]}
					</div>
					<div class="weightingPercentage">
						가중치: ${preferList[5]}%
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">경력</div>
					<div class="weightingSelected">
						${preferList[6]}
					</div>
					<div class="weightingPercentage">
						가중치: ${preferList[7]}%
					</div>
				</div>
				
			</div>
			
			<input type="button" value="수정하기"
				onclick="location.href='./preferUpdate.do?pNo=${companyMemberDto.comNo}'">
		</div>
	</div>
		
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>