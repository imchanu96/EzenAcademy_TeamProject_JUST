<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 보기</title>

<style type="text/css">

/* content */
#container {
	width: 1280px;
	height: 1000px;
	margin: 0px auto;
}

/* navigation */
#navigation {
	/* 	margin: 10px; */
	float: left;
	width: 250px;
	height: 950px;
	font-size: 25px;
	text-align: center;
	background-color: #eff5ff;
}

#letterContain {
	border: 1px solid black;
	width: 1280px;
	border-radius: 5px;
	/* 	padding: 30px; */
}

#letterContain table {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	margin: auto;
	font-size: 20px;
}

table {
	width: 750px;
}

tr td {
	border: 1px solid black;
}

.letterValue {
	border: 1px solid black;
	border-radius: 5px;
	width: 750px;
	height: 300px;
	font-size: 20px;
	resize: none;
}
</style>
<script type="text/javascript">
	function updateLetterFnc() {
		location.href = "./letterUpdate.do"
	}
</script>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="">내가 쓴 글</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showResume.do?pNo=${personalMemberDto.pNo}">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showLetter.do?pNo=${personalMemberDto.pNo}">자소서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">고객센터</a>
				</div>
			</div>
		</div>
		<div id="letterContain">
			<input type="button" style="text-align: right;" value="수정하기"
				onclick="updateLetterFnc();">
			<p>${pName}의이력서</p>
			<div id="letter">
				<p>OO의 자기소개서</p>
				<div>
					<p>성장 배경</p>
					<textarea class="letterValue" name="history" readonly="readonly">
						${letterDto.history}
					</textarea>
				</div>
				<div>
					<p>지원 동기</p>
					<textarea class="letterValue" name="motivation" readonly="readonly">
						${letterDto.motivation}
					</textarea>
				</div>
				<div>
					<p>성격의 장단점</p>
					<textarea class="letterValue" name="character" readonly="readonly">
						${letterDto.character}
					</textarea>
				</div>
				<div>
					<p>목표</p>
					<textarea class="letterValue" name="goal" readonly="readonly">
						${letterDto.goal}
					</textarea>
				</div>

			</div>
		</div>
	</div>
</body>
</html>