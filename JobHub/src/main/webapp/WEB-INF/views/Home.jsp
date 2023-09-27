<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub: Main</title>
<script type="text/javascript">

	function goPersonalLoginFnc() {
		location.href = "http://localhost:9080/JobHub/personal/login.do";
	}
	
	function goCompanyLoginFnc() {
		location.href = "http://localhost:9080/JobHub/company/login.do";
	}

</script>
<link rel="stylesheet" href="/JobHub/resources/css/Home.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
	<div id="introImgBox">
		<img src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/fcc71787-e35c-43fb-a18a-ffc7f4637ab7">
	</div>
	
	<div class="seviceDetail">
		서비스 캡쳐 화면 1
	</div>
	<div class="seviceDetail">
		서비스 캡쳐 화면 2
	</div>
	<div class="seviceDetail">
		서비스 캡쳐 화면 3
	</div>
	
	
	<div id="mentBox">
		<div id="comment">원하는 기업과 인재를 찾는 가장 효율적인 방법</div>
		<div id="jobhub">JOBHUB</div>
	</div>
	
	<div id="goLoginBox">
		<div id="loginMent">로그인 하러 가기</div>
		<div id="buttonBox">
			<input type="button" value="개인 회원" onclick="goPersonalLoginFnc();">
			<input type="button" value="기업 회원" onclick="goCompanyLoginFnc();">
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>