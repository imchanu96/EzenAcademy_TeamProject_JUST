<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 로그인</title>
<style type="text/css">
	a{
		color:black;
	}
	a:hover {
		color:blue;
	}
	
	#memberType{
		margin: 60px auto 0px auto;
		text-decoration:none;
		font-size: 30px;
		margin:auto;
	}
	
	input{
		border: 0px solid;
		border-radius: 6px;
		box-shadow: 0px 1px 4px 0px gray;
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
		background-color: #fff;
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
	#Login_Button {
		margin-top: 100px;
	}
	
	.Login_Button {
		text-align: center;
	}
	
	.Login_Button  > input {
		background-color: #b382f2;
		color: white;
		font-size: 17px; 
		width: 300px; 
		height: 45px;
	}
	
	
	#loginBtn {
		cursor: pointer;
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
					<div id="logo" style=" width:500px; margin: auto; text-align: center;">
						<img alt="" src="/JobHub/resources/img/JobHub_logo_v2.png"
							style="width: 355px; height: 75px;">
					</div> <!-- logo -->
				
					
					<div id="selectButton" style="width: 1080px; margin: auto;">
						<div class="selectButton" style="width: 1080px; text-align: center; margin-top:40px;">
							<a id="memberType">관리자 로그인</a>
						</div>
					</div> <!-- selectButton -->
				<form action="loginCtr.do" method="post">
					<div id="IDandPwd_Box" style="margin-top: 70px;">
						<div class="ID_Box">
							<input type="text" id="id" name="id" placeholder="관리자 전용 아이디">
						</div>
						
						<div class="Password_Box">
							<input type="password" id="pwd" name="pwd" placeholder="관리자 전용 비밀번호">
						</div>
					</div> <!-- IDandPwd_Box -->
					<div style="color: red; text-align: center;">${myMsg}</div>
					<div id="Login_Button">
						<div class="Login_Button" style="text-align: center;">
							<input type="submit" value="로그인">
						</div>
					</div> <!-- login_Button -->
				</form>
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>