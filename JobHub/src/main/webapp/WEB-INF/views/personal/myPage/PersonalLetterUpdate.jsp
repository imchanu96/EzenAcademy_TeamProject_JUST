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
	margin: 10px;
    float: left;
    width: 980px;
    font-size: 30px;
    background-color: #f8fafc;
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
    border-radius: 10px;
    border: none;
    padding: 20px 30px;
    margin-left: 110px;
    margin-bottom: 30px;
    width: 690px;
    height: 300px;
    font-size: 16px;
    resize: none;
    font-family: inherit;
	line-height: 30px;	
    box-shadow: 0px 1px 4px 0px #ddd;
}
.letterItemTitle {
    margin: 0px 0px 15px 110px;
    font-size: 23px;
    font-weight: bold;	
}
#letter {
	padding: 30px 0px;	
}
#submitButton {
	width: 90px;
    height: 40px;
    margin-left: 640px;
    background-color: #4876ef;
    border: none;
    border-radius: 12px;
    box-shadow: 0px 1px 4px 0px #ddd;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}
#goBackBtn {
	width: 90px;
   	height: 40px;
   	border: none;
   	border-radius: 12px;
   	box-shadow: 0px 1px 4px 0px #ddd;
   	font-size: 16px;
	font-weight: bold;
	background-color: #ff837e;
	color: #fff;
}
</style>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="container">
		
		<jsp:include page="./PersonalMyPageNav.jsp"/>

		<div id="letterContain">
			<div id="letter">
				<form action="./letterUpdateCtr.do" method="post">
					<input type="submit" id="submitButton" value="수정 완료">
					<button type="button" id="goBackBtn" 
						onclick="location.href='./showLetter.do?perNo=${personalMemberDto.perNo}';">돌아가기</button>
					<div>
						<div class="letterItemTitle">성장 배경</div>
						<textarea class="letterValue" name="history">${letterDto.history}
						</textarea>
					</div>
					<div>
						<div class="letterItemTitle">지원 동기</div>
						<textarea class="letterValue" name="motivation">${letterDto.motivation}
						</textarea>
					</div>
					<div>
						<div class="letterItemTitle">성격의 장단점</div>
						<textarea class="letterValue" name="character">${letterDto.character}
						</textarea>
					</div>
					<div>
						<div class="letterItemTitle">목표</div>
						<textarea class="letterValue" name="goal">${letterDto.goal}
						</textarea>
					</div>
					<input type="hidden" name="resumeNo" value="${resumeDto.resumeNo}">
					<input type="hidden" name="perNo" value="${sessionScope.personalMemberDto.perNo}">
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>