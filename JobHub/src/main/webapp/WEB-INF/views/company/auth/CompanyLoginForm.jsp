<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 로그인</title>
<style type="text/css">
	a {
		color:black;
	}
	a:hover {
		color:blue;
	}
	
	#backColor {
		width: auto; 
		height: auto;
		
	}
	
	#loginColor {
		background-color: #eaedf4;
		width: 1080px; 
		height: 915px; 
		margin: auto;
	}
	
	#logo {
		
	}
	
	.logo {
		width: 300px; 
		height: 200px; 
		margin: auto;
	}
	
	.logo > img {
		width: 140px; 
		height: 225px;
		margin-top: 60px;
		margin-left: 85px;
	}
	
	.selectButton {
		margin-top: 140px;
		height: 20px; 
		text-align: center;
	}
	
	.selectButton > a {
		text-decoration:none; 
		font-size: 27px;
	}
	
	#IDandPwd_Box {
		margin-top: 70px;
	}
	
	.ID_Box {
		height: 20px; 
		margin-bottom: 50px; 
		text-align: center;
		
	}
	
	.ID_Box > input {
		font-size: 15px; 
		width: 300px; 
		height: 45px;
	} 
	
	.Password_Box {
		height: 20px; 
		margin-bottom: 50px; 
		text-align: center;
	}
	
	.Password_Box > input {
		font-size: 15px; 
		width: 300px; 
		height: 45px;
	}
	/* 	ID, PW 자동완성시 배경색이 user agent에 의해 자동 변경되는 것을 막아준다 */
	input:-webkit-autofill {
		-webkit-box-shadow: 0px 1px 4px 0px gray; -webkit-text-fill-color: #000;
	}
	input:-webkit-autofill, input:-webkit-autofill:hover,
	input:-webkit-autofill:focus, input:-webkit-autofill:active { 
		transition: background-color 5000s ease-in-out 0s;
	}
	#Login_Button {
		margin-top: 100px;
	}
	
	.Login_Button {
		text-align: center;
	}
	
	.Login_Button  > input {
		background-color: #94b5fc;
		color: white; 
		font-size: 17px; 
		width: 300px; 
		height: 45px;
	}
	
	#TagNames {
		margin-top: 50px;
	}
	
	#TagNames > div {
		height: 30px; 
		margin: auto; 
		text-align: center;
	}
	
	#TagNames > div > a {
		color: black;
	}
	
	input{
		border: 0px solid;
		border-radius: 6px;
		box-shadow: 0px 1px 4px 0px gray;
	}
	.changeMember{
		color: #8491a7;
		margin-right: 10px;
	}
	#loginBtn {
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	function goCompanyLoginFnc() {
		
	}
	
	function idInputFocusFnc() {
		idInputObj = document.getElementById("idInput");
		idInputObj.setAttribute("style", "outline: 2px solid #94b5fc");
	}
	
	function idInputBlurFnc() {
		idInputObj = document.getElementById("idInput");
		idInputObj.setAttribute("style", "outline: none");
	}
	
	function pwInputFocusFnc() {
		pwInputObj = document.getElementById("pwInput");
		pwInputObj.setAttribute("style", "outline: 2px solid #94b5fc");
	}
	
	function pwInputBlurFnc() {
		pwInputObj = document.getElementById("pwInput");
		pwInputObj.setAttribute("style", "outline: none");
	}
</script>
</head>
<body>
	
	<div id="backColor">
		
			<div id="loginColor">
				
					<div id="logo">
						<div class="logo">
							<img alt="" src="https://github.com/noohij/
								Ezen_TeamProject_JUST/assets/54897384/
								ee8218f0-b067-48da-8bf7-d31bef40f1cf">
						</div> <!-- logo -->
					</div>
					
					<div id="selectButton">
						<div class="selectButton">
							<a class="changeMember"  style="color:black;">기업회원</a>
						</div>
					</div> <!-- selectButton -->
					
				<form action="loginCtr.do" method="post">
				<div id="IDandPwd_Box">
					<div class="ID_Box">
						<input type="text" id="idInput" name="cCode" placeholder="사업자등록번호"
							onfocus="idInputFocusFnc();" onblur="idInputBlurFnc();">
					</div>
					
					<div class="Password_Box" style="margin: auto; ">
						<input type="password" id="pwInput" name="cPwd" placeholder="비밀번호"
							onfocus="pwInputFocusFnc();" onblur="pwInputBlurFnc();">
					</div>
				</div> <!-- IDandPwd_Box -->
				
				
					<div id="Login_Button">
						<div class="Login_Button">
								<input id="loginBtn" type="submit" value="로그인">
						</div> 
					</div> <!-- login_Button -->
				</form>	
				
				<div id="TagNames">
					<div> <!-- 아이디/비번/회원가입 -->
						<a href="">아이디</a>
						|
						<a href="">비밀번호 찾기</a>
						|
						<a href="../company/add.do">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>