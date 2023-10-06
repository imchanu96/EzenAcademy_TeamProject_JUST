<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/JobHub/resources/js/ReviewNav.js"></script>
</head>
<body>

	<div id="navigation">
		<c:if test="${sessionScope.permission != 6}">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/companyMemberList.do">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="#" onclick="reviewWriteFnc(${sessionScope.personalMemberDto.perNo});">리뷰 작성</a>
				</div>
			</div>
		</c:if>
		<c:if test="${sessionScope.permission == 6}">
			<div id="smallMenuBox">
<!-- 				<div id="navComName"> -->
<%-- 					${companyMemberDto.comName} --%>
<!-- 				</div> -->
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/list.do?comNo=${companyMemberDto.comNo}">
						리뷰 조회
					</a>
				</div>
			</div>
		</c:if>
	</div>
	
</body>
</html>