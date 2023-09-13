<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
		background-color: #eff5ff;
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
		font-size: 30px;
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
		width:320px; 
		height: 35px;
	} 
	
	.Password_Box {
		height: 20px; 
		margin-bottom: 50px; 
		text-align: center;
	}
	
	.Password_Box > input {
		 font-size: 15px; 
		 width:320px; 
		 height: 35px;
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
		font-size: 15px; 
		width: 260px; 
		height: 30px;
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
</style>
<script type="text/javascript">
	function goCompanyLoginFnc() {
		
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
							<a href="./PersonalLoginForm.jsp">개인회원</a>
							<a href="./CompanyLoginForm.jsp">기업회원</a>
						</div>
					</div> <!-- selectButton -->
				
				<div id="IDandPwd_Box">
					<div class="ID_Box">
						<input type="text" placeholder="아이디">
					</div>
					
					<div class="Password_Box">
						<input type="password" placeholder="비밀번호">
					</div>
				</div> <!-- IDandPwd_Box -->
				
				<form action="loginCtr.do" method="post">
					<div id="Login_Button">
						<div class="Login_Button">
								<input type="submit" value="로그인">
						</div> 
					</div> <!-- login_Button -->
				</form>	
				
				<div id="TagNames">
					<div> <!-- 아이디/비번/회원가입 -->
						<a href="">아이디</a>
						|
						<a href="">비밀번호 찾기</a>
						|
						<a href="./Joinpersonal.jsp">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>