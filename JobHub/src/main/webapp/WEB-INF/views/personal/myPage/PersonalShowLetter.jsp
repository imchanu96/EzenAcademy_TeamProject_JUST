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
	width: 850px;
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
	font-size: 20px;
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
	<div id="navigation">
		<div id="smallMenuBox">
			<div class="smallMenuItem">
				<a href="http://www.naver.com">리뷰 조회</a>
			</div>
			<div class="smallMenuItem">
				<a href="">리뷰 작성</a>
			</div>
			<div class="smallMenuItem">
				<a href="">기업 정보</a>
			</div>
		</div>
	</div>
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
			<p>${resumeDto.rName}의이력서</p>
			<div id="letter">
				<span class="closeBtn" onclick="closeModal(this);">&times;</span>
				<p>OO의 자기소개서</p>
				<div>
					성장 배경
					<textarea class="letterValue" name="history">
						${letterDto.history}
					</textarea>
				</div>
				<div>
					지원 동기
					<textarea class="letterValue" name="motivation">
						${letterDto.motivation}
					</textarea>
				</div>
				<div>
					성격의 장단점
					<textarea class="letterValue" name="character">
						${letterDto.character}
					</textarea>
				</div>
				<div>
					목표
					<textarea class="letterValue" name="goal">
						${letterDto.goal}
					</textarea>
				</div>

			</div>
		</div>
	</div>
</body>
</html>