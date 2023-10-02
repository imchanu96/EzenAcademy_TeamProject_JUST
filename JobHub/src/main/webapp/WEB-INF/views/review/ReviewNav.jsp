<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/JobHub/resources/js/ReviewNav.js"></script>
</head>
<body>

	<div id="navigation">
		<div id="smallMenuBox">
			<div class="smallMenuItem">
				<a href="http://localhost:9080/JobHub/review/companyMemberList.do">리뷰 조회</a>
			</div>
			<div class="smallMenuItem">
				<a href="#" onclick="reviewWriteFnc(${sessionScope.personalMemberDto.perNo});">리뷰 작성</a>
			</div>
		</div>
	</div>
	
</body>
</html>