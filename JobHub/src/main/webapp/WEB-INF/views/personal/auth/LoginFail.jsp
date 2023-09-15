<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="3;url=./login.do">
<title>로그인 실패</title>
<style type="text/css">

	#loginFailBack {
		width: 1880px;
		height: 500px;
	}
	.loginFailBack {
		margin-top: 150px;
	}
	
	#loginFailBox {
		border: 1px solid #eff5ff;
		width: 600px;
		height: 100%;
		margin: auto;	
	}
	.loginFailBox {
	}
	
	#header {
		border: 1px solid #eff5ff;
		background-color: #eff5ff;
		width: 600px;
		height: 100px;
		font-size: 40px;
		text-align: center;	
	}
	#loginFailBoxHeader {
		
		width: 400px;
		height: 80px;
		margin: auto;
	}
	.loginFailBoxHeader {
		margin-top: 20px;
	}
	
	#text {
		width: 600px;
		height: 300px;
		font-size: 30px;
		text-align: center;
	}
	#loginFailBoxText{
		width: 400px;
		height: 200px;
		margin: auto;
	}
	.loginFailBoxText {
		margin-top: 50px;
		
	}
	
	#button {
		width: 600px;
		height: 100px;
	}
	#loginFailButton {
		width: 400px;
		height: 70px;
		margin: auto;
	}
	.loginFailButton > input {
		background-color: #eff5ff;
		width: 300px;
		height: 70px;
		margin-bottom: 50px;
	}
	
</style>
<script type="text/javascript">
	function backButton() {
		window.history.back();
		//location href = "personal/auth/login.do";
	}
</script>
</head>
<body>

	<div id="loginFailBack">
		<div class="loginFailBack">
		
			<div id="loginFailBox">
				<div class="loginFailBox">
				
					<div id="header">
						<div id="loginFailBoxHeader">
							<div class="loginFailBoxHeader">
								로그인 실패
							</div>
						</div>
					</div>
					
					<div id="text">
						<div id="loginFailBoxText">
							<div class="loginFailBoxText">
								<p>아이디나 비밀번호를 제대로 입력해주세요.</p>
								<p>잠시 후 로그인 화면으로 돌아갑니다.</p>
							</div>
						</div>
						
						<div id="button">
							<div id="loginFailButton">
								<div class="loginFailButton">
<!-- 									<input type="button" value="돌아가기"  -->
<!-- 										onclick="backButton();"> -->
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div> <!-- loginFailBox -->
			
		</div>
	</div> <!-- loginFailBack -->

</body>
</html>