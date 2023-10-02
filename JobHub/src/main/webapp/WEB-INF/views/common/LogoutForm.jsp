<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<script type="text/javascript" src="/JobHub/resources/js/LogoutForm.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/LogoutForm.css" type="text/css">
</head>
<body>
	<div id="backGround">
	
		<div id="logoutForm">
		
			<div id="logoutHeaderForm">
				<div class="logoutHeaderForm">
					<p>로그아웃폼</p>
				</div>
			</div>
			
			<div id="centerForm">
				<div class="centerForm">
					<p>회원님</p>
					<p>정말 로그아웃 하시겠습니까?</p>
				</div>
			</div>
			<br>
			
			<form action="logout.do" method="get">
				<div id="buttonForm">
					<div class="buttonForm">
						<div class="yesButton">
							<input type="button" value="네" onclick="logout();">
						</div>
						
						<div class="noButton">
							<input type="button" value="아니오" onclick="backButton();">
						</div>
					</div>
				</div>
			</form>
		</div><!-- logoutForm -->
		
	</div><!-- backGround -->
</body>
</html>