<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="5;url=./login.do">
<title>로그인 실패</title>

<script type="text/javascript">
	function goBackFnc() {
		window.history.back();
	}
</script>
<link rel="stylesheet" href="/JobHub/resources/css/LoginFail.css" type="text/css">
</head>
<body>

	<div id="infoBox">
		<div id="header">
			로그인 실패
		</div>
		<div id="infoMain">
			아이디 또는 비밀번호를 확인하세요.
		</div>
		<div id="infoSub">
			잠시 후 로그인 페이지로 돌아갑니다.
		</div>
		<div id="goBack" onclick="goBackFnc();">
			뒤로 가기
		</div>
	</div>

</body>
</html>