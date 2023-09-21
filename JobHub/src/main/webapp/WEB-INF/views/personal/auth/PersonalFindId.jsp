<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 - 아이디 찾기</title>
<style type="text/css">
	#container {
		margin: 0px auto;
		padding: 70px 270px;
		width: 540px;
		background-color: #eff5ff;
	}
	#findIdBox {
		margin: 0px auto;
		width: 540px;
		height: 745px;
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
	
	.dummyBox{
		display: none;
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
	
	function findIdFnc() {
		var idSearch = document.getElementById("findIdBox");
		
		if(idSearch.pName.value.length < 1) {
			alert("이름을 입력해주세요");
			return;
		}
		
		if (idSearch.pEmail.value.length < 3) {
			alert("이메일을 입력해주세요");
			return;
		}
	}
	
</script>
</head>
<body>

	<div id="container">
		<form id="findIdBox" method="post">
			<div id="contentBox">
				<div id="titleBox">
					<p>아이디 찾기</p>
				</div>
				<div>
					<div id="nameBox" class="inputBox">
						<p>이름</p>
						<input name="pName" type="text">
					</div>
					<div id="emailBox" class="inputBox">
						<p>이메일 주소</p>
						<input name="pEmail" type="text">
						<button type="button" onclick="findIdFnc();">인증번호 받기</button>
					</div>
				</div>
				<div id="validationBox" class="inputBox">
					<p>인증번호</p>
					<input type="text" placeholder="인증번호 6자리 숫자 입력">
					<button type="button">인증번호 확인</button>
				</div>
				<div id="informIdBox" class="inputBox">
					<p>아이디</p>
					<input type="text" placeholder="이메일 인증 후 아이디가 표시됩니다." readonly>
				</div>
				<div class="inputBox">
					<p class="dummyBox" />
					<input class="dummyBox">
				</div>
				<div id="buttonBox">
					<button type="button" onclick="history.back()">돌아가기</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>