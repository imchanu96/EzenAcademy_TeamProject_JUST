<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample</title>
	<style type="text/css">
/* 공통 */
	a {
	  text-decoration: none;
	  color: #292e41;
	}
    a:hover { color: #2d65f2;}
			
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
		background-color: #eff5ff;
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
	#content > form > div, #content > div {
		background-color: #fff;
		border-radius: 10px;
		box-shadow: 0px 1px 4px 0px #ddd;
	}
	#titleBox > p {
		font-size: 24px;
		margin: 0px 0px 20px 0px;
	}
	#searchBox {
		width: 880px;
	    height: 300px;
	    margin: 14px auto 0px auto;
	    padding-top: 20px;
	    padding-left: 40px;
	    font-size: 20px;
	}
	#conditionBox {
		width: 850px;
		height: 160px;
		padding-top: 10px;
		background-color: #f7fafe;
		border-radius: 10px;
	}
	.condition {
		width: 800px;
	    height: 30px;
	    line-height: 30px;
	    margin-bottom: 10px;
	    margin-left: 20px;
	}
	.conditionTitleBox {
		float: left;
		width: 150px;
		margin-bottom: 10px;
	}
	
	.radioBox {
		float: left;
		width: 650px;
		margin-bottom: 10px;
		font-size: 14px;
	}
	label {
		display: inline-block;
		width: 150px;
	}
	#inputBox {
		width: 588px;
	    height: 40px;
	    line-height: 40px;
	    margin-top: 10px;
	    margin-left: 110px;
	    text-align: center;
	    float: left;
	}
	#inputBox > select {
		height: 35px;
	}
	#textInput {
		width: 400px;
		height: 30px;
	}
	
	.button {
		width: 60px;
		height: 35px;
		background-color: #bcd1fc;
	    border: none;
	    border-radius: 6px;
	    box-shadow: 0px 1px 4px 0px #ddd;
	    font-size: 16px;
	    font-weight: bold;
	    color: #475067;
	}
	
	.helpButton {
		width: 30px;
		height: 30px;
		margin-top: 8px;
		padding: 0px 0px 0px 0px;
		border: none;
		background-color: inherit;
		position: relative;
	}
	
	#helpText {
		border-radius: 5px;
		background-color: #bcd1fc;
		display: none;
		position: absolute;
        left: 100%;
        top: 0;
        margin-left: 10px;
        width: 200px;
	}
	
	#helpText:after {
		content: "";
		border-top: 10px solid #bcd1fc;
		border-left: 10px solid transparent;
		border-right: 10px solid transparent;
		border-bottom: 0px solid transparent;
		position: absolute;
        top: 10px;
        left: -10px;
	}
	#resultBox {
		width: 890px;
	    height: 200px;
	    margin: 30px auto;
	    padding-left: 30px;
	    padding-top: 30px;
	    color: #5c667b;
	}
	#resultContent {
		width: 850px;
	    height: 180px;
	}
	#imgBox {
		float: left;
		width: 150px;
		height: 150px;
	}
 	img {
 		/* 실제 이미지 크기에 따라 조정 필요 */
		width: 80%;
		height: 80%;
	}
	#pNameBox {
	 	width: 150px;
		height: 20px;
		font-size: 25px;
	}
	#companyBox {
		width: 450px;
		height: 150px;
		margin-left: 80px;
		float: left;
		font-size: 25px;
		line-height: 150px;
	}
	#buttonBox {
		width: 150px;
		height: 100px;
		float: right;
		margin-top: 25px;
		text-align: right;
	}
	#resumeBtn, #letterBtn {
		width: 110px;
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

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
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
		
		<div id="content">
			<form action="./personalInfoList.do" method="post">
				<div id="searchBox">
					<div id="titleBox">
						<p>인재찾기</p>
					</div>
					<div id="conditionBox">
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox"> 인재점수
							</div>
							<div class="radioBox">
								<input type="radio" name="score" id="score1"> 
									<label for="score1">60점 이상</label>
								<input type="radio" name="score" id="score2"> 
									<label for="score2">80점 이상</label>
								<input type="radio" name="score" id="score3"> 
									<label for="score3">90점 이상</label>
							</div>
						</div>
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox"> 경력
							</div>
							<div class="radioBox">
								<input type="radio" name="career" id="career1"> 
									<label for="career1">3년차 이하</label>
								<input type="radio" name="career" id="career2"> 
									<label for="career2">3~5년차</label>
								<input type="radio" name="career" id="career3"> 
									<label for="career3">5년차 이상</label>
							</div>
						</div>
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox"> 최종 학력
							</div>
							<div class="radioBox">
								<input type="radio" name="education" id="score1"> 
									<label for="score1">고졸</label>
								<input type="radio" name="education" id="education2"> 
									<label for="education2">초대졸</label>
								<input type="radio" name="education" id="education3"> 
									<label for="education3">대졸</label>
							</div>	
						</div>
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox"> 자격증
							</div>
							<div class="radioBox">
								<input type="radio" name="license" id="license1"> 
									<label for="license1">1개 미만</label>
								<input type="radio" name="license" id="license2"> 
									<label for="license2">1개~3개</label>
								<input type="radio" name="license" id="license3"> 
									<label for="license3">3개 이상</label>
							</div>
						</div>
					</div>
					<div id="inputBox">
						<select id="search">
							<option value="인재 점수">인재 점수</option>
							<option value="경력">경력</option>
							<option value="최종 학력">최종 학력</option>
							<option value="자격증">자격증</option>
						</select>
						<input type="text" id="textInput">
						<input type="submit" value="검색" class="button">
						</div>
						<button class="helpButton">
							<div id="helpText">
								- 상세 검색 경력(년차 검색) <br>
								- 최종 학력(특정 교육기관 검색) <br>
								- 자격증(특정 자격증 검색) <br>
							</div>
							<img class="helpButton" alt="도움말"
								onmouseover="helpFnc(this);"
								src="https://cdn.icon-icons.com/icons2/602/PNG/512/Help_icon-icons.com_55891.png">
						</button>
					
				</div>
			</form>
			
			<!-- foreach -->
			<div id="resultBox">
				<div id="resultContent">
					<div id="imgBox">
						<img alt="" src="https://i.namu.wiki/i/H5J9o4ake1BvDxxS3D6Ok2K4vDVQXqdsrIpAR4dZao15EotgmyvbKDFBYogTau9a4qUahEj9u07UvC8O6QXNkC135sJWbi-eSaZuYj3hulq1lau889wAiXapGBgKbDU0-lCY9DTkxbjrJSv_xiF1lw.webp">
					</div>
					
					<div id="companyBox">
						현재 personalInfo.pCompany 재직중
					</div>
					<div id="buttonBox">
						<input type="button" value="이력서 보기" class="button" id="resumeBtn">
						<input type="button" value="자소서 보기" class="button" id="letterBtn">
					</div>
					<div id="pNameBox">
						personalInfo.pName
					</div>
				</div>
			</div>
			<!-- foreach -->
			<div>
				$ {personalInfo.pCampany} 오타 잡아야 함. foreach 추가해야 함
			</div>
			
 		</div> <!-- end of content -->
	</div>

	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>