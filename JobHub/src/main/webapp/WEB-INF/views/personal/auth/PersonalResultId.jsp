<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		height: 345px;
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
</head>
<body>

	<div id="container">
		<form id="findIdBox" method="post">
			<div id="contentBox">
				<c:choose>
					<c:when test="${empty personalMemberDto}">
						<div id="titleBox">
							<p>아이디 찾기</p>
						</div>
						<div id="informIdBox" class="inputBox">
							<p>조회결과가 없습니다.</p>
						</div>
						<div id="buttonBox">
							<button type="button" onclick="location.href='./findId.do';">다시 찾기</button>
							<button type="button" onclick="location.href='./add.do';">회원가입</button>
						</div>	
					</c:when>
					<c:otherwise>
						<div id="titleBox">
							<p>${personalMemberDto.pName}님의 아이디</p>
						</div>
						<div id="informIdBox" class="inputBox">
							<p>ID는 ${personalMemberDto.pId} 입니다</p>
						</div>
						<div id="buttonBox">
							<button type="button" onclick="location.href='./login.do';">로그인</button>
							<button type="button" onclick="location.href='./findPwd.do';">비밀번호 찾기</button>
						</div>			
					</c:otherwise>
				</c:choose>
			</div>
		</form>
	</div>

</body>
</html>