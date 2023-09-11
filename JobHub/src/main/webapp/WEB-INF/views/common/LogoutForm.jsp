<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<p>OOO님</p>
					<p>정말 로그아웃 하시겠습니까?</p>
				</div>
			</div>
			<br>
			
			<div id="buttonForm">
				<div class="buttonForm">
					<div class="yesButton">
						<input type="button" value="네" onclick="">
					</div>
					
					<div class="noButton">
						<input type="button" value="아니오" onclick="">
					</div>
				</div>
			</div>
		</div><!-- logoutForm -->
		
	</div><!-- backGround -->
</body>
</html>