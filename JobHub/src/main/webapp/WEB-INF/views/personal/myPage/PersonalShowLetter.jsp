<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자소서 보기</title>


<script type="text/javascript">
	function updateLetterFnc() {
		location.href = "./letterUpdate.do"
	}
</script>
<link rel="stylesheet" href="/JobHub/resources/css/PersonalShowLetter.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		
		<jsp:include page="./PersonalMyPageNav.jsp"/>

		<div id="letterContain">
			<div id="letter">
				<input type="button" value="수정" id="button"
						onclick="updateLetterFnc();">
				<div>
					<div class="letterItemTitle">성장 배경</div>
					<textarea class="letterValue" name="history"
					 	readonly="readonly">${letterDto.history}
					</textarea>
				</div>
				<div>
					<div class="letterItemTitle">지원 동기</div>
					<textarea class="letterValue" name="motivation"
						readonly="readonly">${letterDto.motivation}
					</textarea>
				</div>
				<div>
					<div class="letterItemTitle">성격의 장단점</div>
					<textarea class="letterValue" name="character" 
						readonly="readonly">${letterDto.character}
					</textarea>
				</div>
				<div>
					<div class="letterItemTitle">목표</div>
					<textarea class="letterValue" name="goal" 
					readonly="readonly">${letterDto.goal}
					</textarea>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
	
</body>
</html>