<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	
	#backColor {
		width: auto; 
		height: auto;
	}
	
	#loginColor {
		background-color: #eff5ff;
		width: 1080px; 
		height: 915px; 
		margin: auto;
	}
	
	#logo {
		
	}
	.logoImage {
		width: 300px; 
		height: 200px; 
		margin: auto;
	}
	.logoImage > img {
		width: 140px; 
		height: 225px;
		margin-top: 10px;
		margin-left: 85px;
	}
	
	.selectButton{
		margin-top: 40px;
		height: 20px; 
		text-align: center;
	}
	
	.selectButton > a {
		font-size: 30px;
	}
	
	#idandPwdBox {
		margin-top: 70px;
	}
	.idBox {
		height: 20px; 
		margin-bottom: 50px; 
		text-align: center;
	}
	.idBox > input {
		font-size: 15px; 
		width:320px; 
		height: 35px;
	}
	
	.passwordBox {
		height: 20px; 
		margin-bottom: 50px; 
		text-align: center;
	}
	.passwordBox > input {
		font-size: 15px; 
		width:320px; 
		height: 35px;
	}
	
	#loginButton {
		margin-top: 100px;
	}
	.loginButton {
	 	text-align: center;
	}
	.loginButton > input {
	 	background-color: #94b5fc; 
	 	color: white; 
		font-size: 15px; 
		width: 260px; 
		height: 30px;
	}
	
	#tagNames {
		margin-top: 50px;
	}
	#tagNames > div {
		height: 30px; 
		margin: auto; 
		text-align: center;
	}
	#tagNames > div > a {
		color: black;
	}
	
	
</style>
</head>
<body>
	
	<div id="backColor">
		
			<div id="loginColor">
				
				<div id="logo">
					<div class="logoImage">
						<img alt="Logo" src="https://github.com/noohij/Ezen_TeamProject_JUST
								/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf">
					</div>
				</div> <!-- logo -->
					
					<div id="selectButton">
					<div class="selectButton">
						<a href="" style="color: black;">개인회원</a>
						<a href="" style="color: gray;">기업회원</a>
					</div>
				</div> <!-- selectButton -->
				
				<div id="idandPwdBox">
					<div class="idBox">
						<input type="text" value="아이디">
					</div>
					
					<div class="passwordBox">
						<input type="password" value="비밀번호">
					</div>
				</div> <!-- IDandPwd_Box -->
				
				<div id="loginButton">
					<div class="loginButton">
						<input type="button" value="로그인" onclick="">
					</div> 
				</div> <!-- login_Button -->
				
				<div id="tagNames">
					<div> <!-- 아이디/비번/회원가입 -->
						<a href="">아이디</a>
						|
						<a href="">비밀번호 찾기</a>
						|
						<a href="">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>