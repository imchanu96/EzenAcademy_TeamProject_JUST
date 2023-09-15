<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<style type="text/css">
	#backGround {
		width: 1910px;
		height: 900px;
	}
	
	#logoutForm {
		
		background-color: white; 
		width: 400px;
		height: 500px;
		margin: auto;
	}
	#logoutHeaderForm{
		border: 1px solid #deebff;
		background-color: #94b5fc;
	}
	.logoutHeaderForm {
		color: black;
		font-size: 30px;
		width: 370px;
		margin: auto;
	}
	
	#centerForm{
		border: 1px solid #deebff;
		height: 250px;
	}
	.centerForm{
		color: #000;
		font-size: 25px;
		width: 350px;
		height: 250px;
		margin: auto;
	}
	
	#buttonForm{
		background-color: white;
	}
	.buttonForm{
		width: 300px;
		height: 100px;
		margin: auto;
	}
	
	.yesButton > input {
		background-color : #94b5fc;
		font-size: 20px;
		width: 100px;
		height:60px;
		float: left;
	}
	.noButton > input {
		background-color : #94b5fc;
		font-size: 20px;
		width: 100px;
		height:60px;
		float: right;
	}
</style>
<script type="text/javascript">
	function logOut() {
		location.href = "auth/PersonalLoginForm.jsp";
	}
	
	function backButton() {
		window.history.back();
	}

</script>
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
					<c:if test="${empty not sessionScope.personalmemberDto.pId}">
					<p>${personalMemberDto.pId}님</p>
					</c:if>
					<p>정말 로그아웃 하시겠습니까?</p>
				</div>
			</div>
			<br>
			
			<form action="logOut.do" method="get">
				<div id="buttonForm">
					<div class="buttonForm">
						<div class="yesButton">
							<input type="button" value="네" onclick="logOut();">
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