<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 - 비밀번호 찾기</title>
<style type="text/css">
	#container {
		margin: 0px auto;
		padding: 70px 270px;
		width: 540px;
		background-color: #eff5ff;
	}
	#findPwdBox {
		margin: 0px auto;
		width: 540px;
		height: 640px;
		background-color: #fff;
		border-radius: 10px;
		box-shadow: 0px 1px 4px 0px #ddd;
		text-align: center;
	}
	#contentBox {
		margin: 0px auto;
		padding: 20px 0px;
		width: 400px;
		height: 630px;
		text-align: left;
	}
	#titleBox > p {
		font-size: 30px;
	}
	.inputBox {
		float: left;
		width: 400px;
		height: 100px;
	}
	.inputBox > input {
		width: 250px;
		height: 35px;
		margin-right: 10px;
	    border: 1px solid #d7dce5;
	    border-radius: 6px;
	}
	#buttonBox {
		width: 400px;
		height: 100px;
		margin-top: 30px;
		float: left;
	}
	button {
	    width: 115px;
	    height: 38px;
	    background-color: #bcd1fc;
	    border: none;
	    border-radius: 6px;
	    box-shadow: 0px 1px 4px 0px #ddd;
	    font-size: 16px;
	    font-weight: bold;
	    color: #475067;
	}
	
</style>
<script type="text/javascript">
	
	var codeValue = 0;

	function findPwdFnc() {
		var pwdSearch = document.getElementById("findPwdBox");
		
		if(pwdSearch.perName.value == "") {
			alert("이름을 입력해주세요");
			return false;
		}
		
		if (pwdSearch.perId.value == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		
		if (pwdSearch.perEmail.value == "") {
			alert("이메일을 입력해주세요");
			return false;
		}
		
		var codeNum = Math.random().toString().substr(2,6);
		alert(codeNum);
		codeValue = codeNum;
	}
	
	function codeCheck() {
		var codeCheck = document.getElementById("findPwdBox");
		
		if(codeCheck.code.value != codeValue){
			alert("인증번호가 일치하지 않습니다.");
			return false;
		} else if(codeCheck.code.value == codeValue){
			return true;
		}
	}
	
</script>
</head>
<body>

	<div id="container">
		<form id="findPwdBox" action="./findPwdCtr.do" method="post" onsubmit="return codeCheck();">
			<div id="contentBox">
				<div id="titleBox">
					<p>비밀번호 찾기</p>
				</div>
				<div>
					<div id="nameBox" class="inputBox">
						<p>이름</p>
						<input name="perName" type="text">
					</div>
					<div id="idBox" class="inputBox">
						<p>아이디</p>
						<input name="perId" type="text">
					</div>
					<div id="emailBox" class="inputBox">
						<p>이메일 주소</p>
						<input name="perEmail" type="text">
						<button type="button" onclick="findPwdFnc();">인증번호 받기</button>
					</div>
				</div>
				<div id="validationBox" class="inputBox">
					<p>인증번호</p>
					<input name="code" type="text" placeholder="인증번호 6자리 숫자 입력">
					<button type="submit">인증번호 확인</button>
				</div>
				<div id="buttonBox">
					<button type="button" onclick="location.href='./login.do';">돌아가기</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>