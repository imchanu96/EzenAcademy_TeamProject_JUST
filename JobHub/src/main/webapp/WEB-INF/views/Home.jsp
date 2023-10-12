<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub: Home</title>
<script type="text/javascript" src="/JobHub/resources/js/Home.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/Home.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
	
	<div id="introImgBox">
		<img src="/JobHub/resources/img/main_img1.png">
	</div>
	
	<div class="seviceDetail">
<!-- 		서비스 캡쳐 화면 1 -->
		<img class="seviceDetailImg" src="/JobHub/resources/img/main_img2.png">
	</div>
	<div class="seviceDetail">
<!-- 		서비스 캡쳐 화면 2 -->
		<img class="seviceDetailImg" src="/JobHub/resources/img/main_img3.png">
	</div>
	<div class="seviceDetail" id="seviceDetail3">
<!-- 		서비스 캡쳐 화면 3 -->
		<img class="seviceDetailImg" src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/8d7f6c7e-b1f6-463c-9763-798f7530764f">
	</div>
	
	
	<div id="mentBox">
		<div id="comment">
			원하는 기업과 인재를 찾는 가장 효율적인 방법 -
		</div>
		<div id="logoBox">
			<img id="jobHubLogo"
				src="/JobHub/resources/img/JobHub_logo_v2.png">
		</div>
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