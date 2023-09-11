<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 성공</title>
<style type="text/css">
	#backGround {
		width: 1910px;
		height: 900px;
	}
	
	#logoutForm {
		width: 400px;
		height: 500px;
		margin: auto;
	}
	
	#logoutHeaderForm{
		border: 1px solid #deebff;
		background-color: #94b5fc;
		color: #000;
	}
	.logoutHeaderForm {
		color: #000;
		font-size: 30px;
		width: 350px;
		margin: auto;
	}
	
	#centerForm{
		border: 1px solid #deebff;
		height: 250px;
	}
	.centerForm{
		color: #000;
		font-size: 35px;
		text-align: center;
		
		width: 350px;
		height: 450px;
		margin: auto;
		
	}
	
	.buttonForm{
		width: 100px;
		height: 100px;
		margin: auto;
	}
	
	.homeButton > input {
		color: #000;
		background-color: #94b5fc;
		font-size: 20px;
		width: 100px;
		height:60px;
		margin: auto;
	}
</style>
</head>
<body>
	<div id="backGround">
	
		<div id="logoutForm">
			<div id="logoutHeaderForm">
				<div class="logoutHeaderForm">
					<p></p>
				</div>
			</div>
			
			<div id="centerForm">
				<div class="centerForm">
					<p>로그아웃 했습니다.</p>
				</div>
			</div>
			<br>
			<div class="buttonForm">
				<div class="homeButton">
					<input type="button" value="홈으로" onclick="">
				</div>
			</div>
		</div><!-- logoutForm -->
		
	</div><!-- backGround -->
</body>
</html>