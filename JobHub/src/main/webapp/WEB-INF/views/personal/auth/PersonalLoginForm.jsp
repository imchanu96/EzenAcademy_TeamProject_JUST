<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 로그인</title>

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
<link rel="stylesheet" href="/JobHub/resources/css/PersonalLoginForm.css" type="text/css">
</head>
<body>
	
	<div id="backColor">
		
			<div id="loginColor">
				
					<div id="logo">
						<a href="http://localhost:9080/JobHub/home.do">
							<img src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/4c2b0015-b325-434b-a879-9004486cd127">
						</a>
					</div>
					
					<div id="memberType">
						개인회원 로그인
					</div>
					
				<form action="loginCtr.do" method="post">
				
					<div id="IDandPwd_Box">
						<div class="ID_Box">
							<input type="text" id="idInput" name="perId" placeholder="아이디"
									onfocus="idInputFocusFnc();" onblur="idInputBlurFnc();">
						</div>
						
						<div class="Password_Box">
							<input type="password" id="pwInput" name="perPwd" placeholder="비밀번호"
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
						<a href="../personal/findId.do">아이디</a>
						|
						<a href="../personal/findPwd.do">비밀번호 찾기</a>
						|
						<a href="../personal/add.do">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>