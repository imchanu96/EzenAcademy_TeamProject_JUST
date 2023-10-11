<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 로그인</title>

<link rel="stylesheet" href="/JobHub/resources/css/CompanyLoginForm.css" type="text/css">
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
						<a class="logo" href="../JobHub/home.do">
							<img src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/4c2b0015-b325-434b-a879-9004486cd127">
						</a>
					</div>
					
					<div id="memberType">
						기업회원 로그인
					</div>
					
				<form action="loginCtr.do" method="post">
				
					<div id="IDandPwd_Box">
						<div class="ID_Box">
							<input type="text" id="idInput" name="comCode" placeholder="사업자등록번호 ( '-' 포함)"
								onfocus="idInputFocusFnc();" onblur="idInputBlurFnc();">
						</div>
					
						<div class="Password_Box" style="margin: auto; ">
							<input type="password" id="pwInput" name="comPwd" placeholder="비밀번호"
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
						<a href="../company/findId.do">아이디</a>
						|
						<a href="../company/findPwd.do">비밀번호 찾기</a>
						|
						<a href="../company/add.do">회원가입</a>
					</div>
				</div> <!-- TagNames -->
				
			</div> <!-- loginColor div -->
	</div> <!-- backColor div -->
	
</body>
</html>