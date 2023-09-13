<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
						<a style="text-decoration:none; font-size: 30px;">개발자 로그인</a>
					</div>
				</div> <!-- selectButton -->
				<form action="loginCtr.do" method="post">
					<div id="IDandPwd_Box" style="margin-top: 70px;">
						<div class="ID_Box" style="height: 20px; margin-bottom: 50px; text-align: center;">
							<input type="text" id="id" name="id" placeholder="관리자 전용 아이디" 
								style="font-size: 15px; width:320px; height: 35px;">
						</div>
						
						<div class="Password_Box" style="height: 20px; margin-bottom: 50px; text-align: center;">
							<input type="password" id="pwd" name="pwd" placeholder="관리자 전용 비밀번호" 
								style="font-size: 15px; width:320px; height: 35px;">
						</div>
					</div> <!-- IDandPwd_Box -->
					
					<div id="Login_Button" style="margin-top: 50px;">
						<div class="Login_Button" style="text-align: center;">
							<input type="submit" value="로그인" 
								style="background-color: #b382f2; color: white; 
								font-size: 15px; width: 260px; height: 30px;">
						</div>
					</div> <!-- login_Button -->
				</form>
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>