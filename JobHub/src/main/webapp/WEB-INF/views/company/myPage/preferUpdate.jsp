<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선호도 설정</title>
<style type="text/css">
/* head form */
#headerBox {
	height: 130px;
	border-bottom: 1px solid #b4c0d3;
}

#headerContent {
	margin: 0px auto;
	width: 1280px;
	height: 120px;
}
/* logo */
#logo {
	float: left;
	margin: 0px 90px;
	width: 74px;
	height: 111px;
}
/* main menu */
#mainMenuBox {
	float: left;
	width: 750px;
	height: 100px;
	margin-left: 30px;
}

.mainMenuItem {
	float: left;
	margin: 20px;
	width: 200px;
	height: 60px;
	text-align: center;
	line-height: 60px;
	font-size: 30px;
	font-weight: 600;
}
/* message */
#myMessageBox {
	float: left;
	width: 100px;
	height: 100px;
	text-align: center;
}

#chatImage {
	width: 70px;
	height: 70px;
	margin-top: 20px;
	margin-right: 50px;
}
/* my menu */
#myMenuBox {
	float: left;
	width: 140px;
	height: 100px;
	text-align: center;
}
/* end of header */

/* content */
#container {
	width: 1280px;
	height: 1000px;
	margin: 0px auto;
}
/* navigation */
#navigation {
	margin: 10px;
	float: left;
	width: 250px;
	height: 950px;
	font-size: 25px;
	text-align: center;
	background-color: #d7dce5;
}

#smallMenuBox {
	margin: 30px auto;
	width: 200px;
	height: 500px;
}

.smallMenuItem {
	margin-bottom: 20px;
}

.smallMenuItem a {
	color: #475067;
}
/* content */
#content {
	margin: 10px;
	float: left;
	width: 980px;
	height: 950px;
	font-size: 30px;
	background-color: #f8fafc;
}

.preferInfoContent {
	margin-top: 7px;
	width: 470px;
	height: 240px;
	line-height: 35px;
	font-size: 18px;
}

/* tail form */
#tailBox {
	height: 150px;
	background-color: #b4c0d3;
	text-align: center;
}

#tailContent {
	width: 1280px;
	height: 130px;
	margin: auto;
}

#teamName {
	font-size: 50px;
	font-weight: 800;
	color: #999999;
}

input {
	border: none;
}
</style>
<script type="text/javascript">
	function submitFnc() {
		var formObj = document.getElementById("formObj");
		var perferList = document.getElementsByClassName("perferList");
		var prefer = document.getElementById("prefer");
		
		for (var i = 0; i < perferList.length; i++) {
// 			alert(perferList[i].value);
			prefer.value += perferList[i].value;
			
			if (i != perferList.length - 1) {
				prefer.value += ",";
			}
		}
		formObj.submit();

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
					<a href="">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./setPrefer.do">선호도 설정</a>
				</div>
			</div>
		</div>
		${companyPrefer.comPrefer}
		<div id="content">
			<c:set var="preferList"
				value="${fn:split(companyPrefer.comPrefer, ',')}" />
			<div>
				<span>내 선호도</span>
			</div>
			<form action="./preferUpdateCtr.do" method="post" id="formObj">
				<div>
					<span style="float: left;">선호 키워드</span>
					<div style="float: left; border: 1px solid black;">
						가중치
						<div>
							<input type="text" class="perferList" value="${preferList[0]}">
						</div>
					</div>
					<div style="float: left;">
						<input type="text" class="perferList" value="${preferList[1]}">
					</div>
				</div>
				<div>
					<span style="clear: both; float: left;">선호 자격증 보유 수</span>
					<div style="float: left; border: 1px solid black;">
						가중치
						<div>
							<input type="text" class="perferList" value="${preferList[2]}">
						</div>
					</div>
					<div style="float: left;">
						<input type="text" class="perferList" value="${preferList[3]}">
					</div>
				</div>
				<div>
					<span style="clear: both; float: left;">선호 학력</span>
					<div style="float: left; border: 1px solid black;">
						가중치
						<div>
							<input type="text" class="perferList" value="${preferList[4]}">
						</div>
					</div>
					<div style="float: left;">
						<input type="text" class="perferList" value="${preferList[5]}">
					</div>
				</div>
				<div>
					<span style="clear: both; float: left;">선호 경력</span>
					<div style="float: left; border: 1px solid black;">
						가중치
						<div>
							<input type="text" class="perferList" value="${preferList[6]}">
						</div>
					</div>
					<div style="float: left;">
						<input type="text" class="perferList" value="${preferList[7]}">
					</div>
				</div>
				<input type="button" style="margin-top: 400px;" value="수정 확정"
					onclick="submitFnc();">
					<input type="text" id="prefer" name="prefer">
					<input type="text" id="comNo" name="comNo" value="${companyMemberDto.comNo}">
			</form>
		</div>

	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>