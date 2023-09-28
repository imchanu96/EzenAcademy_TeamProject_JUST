<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="3;url=./login.do">
<title>로그인 실패</title>

<script type="text/javascript">
	function backButton() {
		window.history.back();
		//location href = "personal/auth/login.do";
	}
</script>
<link rel="stylesheet" href="/JobHub/resources/css/LoginFail.css" type="text/css">
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