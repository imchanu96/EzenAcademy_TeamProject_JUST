<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 로그인</title>
<style type="text/css">
	a{
		color:black;
	}
	a:hover {
		color:blue;
	}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	
	<div id="backColor" style=" background-color: gray; 
		width: auto; height: auto;">
		
			<div id="loginColor" style="background-color: #f3f3f3; 
				width: 1080px; height: 915px; margin: auto;">
				<div style="height: 100px;">
				</div>
					<div id="logo" style=" width:160px; margin: auto;">
					<img alt="" src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf"
						style="width: 150px; height: 200px;">
					</div> <!-- logo -->
				
					
					<div id="selectButton">
					<div class="selectButton" style="margin-top: 40px;
						height: 20px; text-align: center;">
						<a href="./PersonalLoginForm.jsp" style="text-decoration:none; font-size: 30px;">개인회원</a>
						<a href="./CompanyLoginForm.jsp" style="text-decoration:none; font-size: 30px;">기업회원</a>
					</div>
				</div> <!-- selectButton -->
				
				<div id="IDandPwd_Box" style="margin-top: 70px;">
					<div class="ID_Box" style="height: 20px; margin-bottom: 50px; text-align: center;">
						<input type="text" placeholder="사업자등록번호" 
							style="font-size: 15px; width:320px; height: 35px;">
					</div>
					
					<div class="Password_Box" style="height: 20px; margin-bottom: 50px; text-align: center;">
						<input type="password" placeholder="비밀번호" 
							style="font-size: 15px; width:320px; height: 35px;">
					</div>
				</div> <!-- IDandPwd_Box -->
				
				<div id="Login_Button" style="margin-top: 50px;">
					<div class="Login_Button" style="text-align: center;">
						<input type="button" value="로그인" 
							style="background-color: #b382f2; color: white; 
							font-size: 15px; width: 260px; height: 30px;">
					</div> 
				</div> <!-- login_Button -->
				
				<div id="TagNames" style="margin-top: 50px;">
					<div style="height: 30px; margin: auto; text-align: center;"> <!-- 아이디/비번/회원가입 -->
						<a href="" style="color: black;">아이디</a>
						|
						<a href="" style="color: black;">비밀번호 찾기</a>
						|
						<a href="./JoinCompany.jsp" style="color: black;">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>