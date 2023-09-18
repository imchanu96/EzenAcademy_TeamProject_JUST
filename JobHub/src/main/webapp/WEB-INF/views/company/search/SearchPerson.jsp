<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재찾기</title>
<style type="text/css">
#backGround {
	width: 100%;
	height: 780px;
}

#Box {
	border: 1px solid black;
	width: 800px;
	/* 	height: 600px; */
	margin: auto;
}

.Box {
	border: 1px solid black;
	width: 750px;
	margin-top: 30px;
	margin-left: 25px;
}

#sideBar {
	border: 1px solid #eff5ff;
	width: 250px;
	height: 750px;
	margin-left: 250px;
	float: left;
}

.category {
	margin-top: 50px;
}

.menu1 {
	font-size: 40px;
	text-align: center;
	width: 200px;
	margin: auto;
}

.menu2 {
	font-size: 25px;
	text-align: left;
	width: 150px;
	margin: auto;
}

.menu3 {
	font-size: 25px;
	text-align: left;
	width: 150px;
	margin: auto;
}

.searchBox {
	width: 650px;
	height: 40px;
	margin: auto;
}

.searchTag {
	margin-top: 30px;
	font-size: 25px;
}

.searchCheckBox {
	margin-top: 20px;
}

#topBox {
	border: 1px solid #eff5ff;
	background-color: #f7fafe;
	width: 650px;
	height: 130px;
	margin: auto;
}

.topBox {
	font-size: 20px;
	margin-left: 20px;
	margin-top: 5px;
}

.check1 {
	height: 31px;
}

.check1>div {
	width: 150px;
	float: left;
}

.check2 {
	height: 31px;
}

.check2>div {
	width: 150px;
	float: left;
}

.check3 {
	height: 31px;
}

.check3>div {
	width: 150px;
	float: left;
}

.check4 {
	height: 31px;
}

.check4>div {
	width: 150px;
	float: left;
}

#bottomBox {
	width: 650px;
	height: 70px;
	margin: auto;
}

.bottomBox>p {
	width: 650px;
	margin-top: auto;
	text-align: center;
}

.bottomBox>div {
	width: 620px;
	margin: auto;
}

.bottomBox input {
	height: 30px;
	margin: auto;
}

.bottomBox select, button {
	height: 35px;
	margin: auto;
}

.helpButton {
	width: 30px;
	height: 30px;
	padding: 0px 0px 0px 0px;
	border: none;
	background-color: inherit;
}

#helpText {
	border-radius: 5px;
	background-color: #bcd1fc;
	display: none;
	position: absolute;
	left: 1150px;
	top: 350px;
}

#helpText:after {
	content: "";
	border-top: 10px solid #bcd1fc;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	border-bottom: 0px solid transparent;
	position: absolute;
	top: 53px;
	left: 75px;
}

#searchResultDiv {
	border: 1px solid black;
	border-radius: 3px;
	margin: auto;
	width: 750px;
}

#searchResultDiv img {
	width: 60px;
	height: 60px;
	margin-top: 3px;
	margin-left: 5px;
	margin-right: 20px;
}
</style>
<script type="text/javascript">
	function helpFnc(obj) {
		var helpTextObj = document.getElementById("helpText");
		helpTextObj.style.display = "block";

		obj.addEventListener("mouseleave", function(e) {
			helpTextObj.style.display = "none";
		});
	}
</script>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="backGround">
		<div class="backGround">

			<div id="sideBar">
				<div class="sideBar">
					<div class="category">
						<div class="menu1">
							<a>인재 조회</a>
						</div>
						<br>
						<div class="menu2">
							<a>인재 찾기</a>
						</div>
						<br>
						<div class="menu3">
							<a>메세지 목록</a>
						</div>
					</div>
				</div>
			</div>
			<form action="./personalInfoList.do" method="post">
				<div id="Box">
					<div class="Box">
						<div class="searchBox">
							<div class="searchTag">
								<p>인재찾기</p>
							</div>
						</div>

						<div id="searchCheckBox">
							<div class="searchCheckBox">
								<div id="topBox">
									<div class="topBox">
										<div class="check1">
											<div>
												<input type="checkbox"> 인재점수
											</div>
											<input type="radio" name="score"> 60점 이상 <input
												type="radio" name="score"> 80점 이상 <input
												type="radio" name="score"> 90점 이상
										</div>

										<div class="check2">
											<div>
												<input type="checkbox"> 경력
											</div>
											<input type="radio" name="career"> 3년차 이하 <input
												type="radio" name="career"> 3~5년차 <input
												type="radio" name="career"> 5년차 이상
										</div>

										<div class="check3">
											<div>
												<input type="checkbox"> 최종 학력
											</div>
											<input type="radio" name="education"> 고졸 <input
												type="radio" name="education"> 초대졸 <input
												type="radio" name="education"> 대졸
										</div>

										<div class="check4">
											<div>
												<input type="checkbox"> 자격증
											</div>
											<input type="radio" name="license"> 1개 미만 <input
												type="radio" name="license"> 1개~3개 <input
												type="radio" name="license"> 3개 이상
										</div>
									</div>
								</div>
								<br>

								<div id="bottomBox">
									<div class="bottomBox">
										<div>
											<select id="search">
												<option value="인재 점수">인재 점수</option>
												<option value="경력">경력</option>
												<option value="최종 학력">최종 학력</option>
												<option value="자격증">자격증</option>
											</select> <input type="text" style="width: 420px;"> <input
												type="submit" value="검색">
											<button class="helpButton" style="margin-bottom: -10px;">
												<div id="helpText">
													- 상세 검색 경력(년차 검색) <br> - 최종 학력(특정 교육기관 검색) <br> -
													자격증(특정 자격증 검색) <br>
												</div>
												<img class="helpButton" alt="도움말"
													onmouseover="helpFnc(this);"
													src="https://cdn.icon-icons.com/icons2/602/PNG/512/Help_icon-icons.com_55891.png">
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--검색조건 끝 -->
			</form>
			<c:forEach var="personalInfo" items="${personalInfoList}">
				<div id="searchResultDiv">
					<div style="width: 70px;">
						<img alt=""
							src="https://i.namu.wiki/i/H5J9o4ake1BvDxxS3D6Ok2K4vDVQXqdsrIpAR4dZao15EotgmyvbKDFBYogTau9a4qUahEj9u07UvC8O6QXNkC135sJWbi-eSaZuYj3hulq1lau889wAiXapGBgKbDU0-lCY9DTkxbjrJSv_xiF1lw.webp">
						<div style="width: 200px;">
							${personalInfo.pName}
							<div style="border: 1px solid black; text-align: center;">
								현재 ${personalInfo.pCampany} 재직중</div>
						</div>
					</div>

					<div style="width: 200px; float: right">
						<input type="button" value="이력서 보기"> <input type="button"
							value="자소서 보기">
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	<!-- backGround -->

</body>
</html>