<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

a:hover {
	color: #2d65f2;
}

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
	font-size: 30px;
	background-color: #f8fafc;
}

#content>form>div, #content>div {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 1px 4px 0px #ddd;
}

#titleBox>p {
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
	height: 180px;
/* 	padding-top: 10px; */
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

#inputBox>select {
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
	border-top: 10px solid transparent;
	border-left: 10px solid transparent;
	border-right: 10px solid #bcd1fc;
	border-bottom: 10px solid transparent;
	position: absolute;
	top: 14px;
	left: -20px;
}

#resultBox {
	width: 890px;
	height: 140px;
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
	width: 100px;
	height: 100px;
}

#infoBox {
	width: 400px;
	height: 140px;
	float: left;
}

img {
	/* 실제 이미지 크기에 따라 조정 필요 */
	width: 100%;
	height: 100%;
}

#pNameBox {
	width: 150px;
	height: 20px;
	font-size: 25px;
	clear: both;
}

#companyBox {
	width: 350px;
	height: 50px;
	font-size: 20px;
}

#buttonBox {
	width: 150px;
	height: 140px;
}

#highTestEduBox {
	width: 350px;
	height: 40px;
	font-size: 20px;
}

#licenseCountBox {
	width: 200px;
	height: 40px;
	font-size: 20px;
}

#resumeBtn, #letterBtn {
	width: 150px;
	height: 50px;
	margin-bottom: 10px;
}

#resumeModal, #letterModal {
	position: fixed;
	left: 600px;
	top: 50px;
	border: 1px solid black;
	width: 850px;
	border-radius: 5px;
	padding: 30px;
	display: none;
	overflow-y: auto;
	height: 80vh;
	
}

.closeBtn {
	float: right;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
}

#resumeModal table {
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
.letterValue{
	border: 1px solid black;
	border-radius: 5px;
	font-size: 20px;
}

</style>
<script type="text/javascript"
	src="/JobHub/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	
	function activeRadioFnc(obj, name) {
		var radioBtnList = document.getElementsByName(name);
		
		if (obj.checked == true) {
			for (var i = 0; i < radioBtnList.length; i++) {
				radioBtnList[i].style.display = "inline";
			}
		}else if (obj.checked == false) {
			for (var i = 0; i < radioBtnList.length; i++) {
				radioBtnList[i].style.display = "none";
				radioBtnList[i].checked = false;
			}
		}

	}
	
	function helpFnc(obj) {
		var helpTextObj = document.getElementById("helpText");
		helpTextObj.style.display = "block";
		
		obj.addEventListener("mouseleave", function(e) {
			helpTextObj.style.display = "none";
		});
	}
	
	function openResumeFnc(no, name) {
		var modal = document.getElementById("resumeModal");
		
		var resumeValue = document.getElementsByClassName("resumeValue");
		
		var jsonData = { "perNo": no}; 
		
		$.ajax({
			url: "./showPersonalResume.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
	        // Ajax 요청이 성공하면 이 함수가 실행됩니다.
	        // 서버로부터 받은 데이터(data)를 처리합니다.
	        
	        // 예제: 결과를 resultContainer에 표시
// 	        	alert('성공');
	        	
	        		
	        
	        	modal.children[1].textContent = name + "의 이력서";
	        	modal.children[1].style.textAlign = "center";
	        	//이름
	        	resumeValue[0].textContent = data.resumeName;
	        	//생일
	        	resumeValue[1].textContent = data.resumeBirthday;
	        	//이메일
	        	resumeValue[2].textContent = data.resumeEmail;
	        	// 전화번호
	        	resumeValue[3].textContent = data.resumePhoneNum;
	        	// 주소
	        	resumeValue[4].textContent = data.resumeAdd;
	        	// 결혼 여부
	        	resumeValue[5].textContent = data.resumeMarry;
	        	// 성별
	        	resumeValue[6].textContent = data.resumeGender;
	        	// 병역 여부
	        	resumeValue[7].textContent = data.resumeMilitary;
	        	//입학년도
		        	resumeValue[8].textContent = data.resumeEduBeginDate;
	        	//졸업년도
	        	resumeValue[9].textContent = data.resumeEduEndDate;
	        	// 학교명
	        	resumeValue[10].textContent = data.resumeEduName;
	        	//전공
	        	resumeValue[11].textContent = data.resumeEduMajor;
	        	//소재지
	        	resumeValue[12].textContent = data.resumeEduLoc;
	        	//학점
	        	resumeValue[13].textContent = data.resumeEduGrade;
	        	//졸업 구분
	        	resumeValue[14].textContent = data.resumeEduGraduate;
	        	//입사년도
	        	resumeValue[15].textContent = data.resumeCareerBeginDate;
	        	//퇴사년도
	        	resumeValue[16].textContent = data.resumeCareerEndDate;
	        	//회사명
	        	resumeValue[17].textContent = data.resumeCareerName;
	        	//직위
	        	resumeValue[18].textContent = data.resumeCareerPos;
	        	//소재지
	        	resumeValue[19].textContent = data.resumeCareerLoc;
	        	//담당업무
	        	resumeValue[20].textContent = data.resumeCareerJob;
	        	//자격증 취득일
	        	resumeValue[21].textContent = data.resumeLicenseDate;
	        	//자격증명
	        	resumeValue[22].textContent = data.resumeLicenseName;
	        	//발급기관
	        	resumeValue[23].textContent = data.resumeLicenseInst;
	        	//점수/등급
	        	resumeValue[24].textContent = data.resumeLicenseGrade;
	        
	        	modal.style.display = "block";
	        	
	        	var bodyObj = document.getElementById("body");
	        	
	        	bodyObj.addEventListener("click", function(e) {
	        		resumeModal.style.display = "none";
	        	});
			
			},
			error: function() {
				alert('불러오기 실패');
			}
		});
	} // resume modal 끝

	function openLetterFnc(no, name) {
		var modal = document.getElementById("letterModal");
		
		var letterValue = document.getElementsByClassName("letterValue");
		var jsonData = { "perNo": no}; 
		
		$.ajax({
			url: "./showPersonalLetter.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
	        // Ajax 요청이 성공하면 이 함수가 실행됩니다.
	        // 서버로부터 받은 데이터(data)를 처리합니다.
	        
	        // 예제: 결과를 resultContainer에 표시
	        	alert('성공');
	        	modal.children[1].textContent = name + "의 자기 소개서";
	        	modal.children[1].style.textAlign = "center";
	        	
 	        	//성장 배경
	        	letterValue[0].textContent = data.history;
	        	//지원 동기
	        	letterValue[1].textContent = data.motivation;
	        	//장단점
	        	letterValue[2].textContent = data.character;
	        	//목표
	        	letterValue[3].textContent = data.goal;
	        	//
	        	modal.style.display = "block";

	        	var bodyObj = document.getElementById("body");
	        	
	        	bodyObj.addEventListener("click", function(e) {
	        		letterModal.style.display = "none";
	        	});
			},
			error: function() {
				alert('불러오기 실패');
			}
		});
	}
	function closeModal(obj) {
		var modal = obj.parentNode;
		
		modal.style.display = "none";
	}
	
</script>

</head>
<body id="body">

	<jsp:include page="/WEB-INF/views/Header.jsp" />

	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://www.naver.com">기업 목록</a>
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
			<input type="hidden" name="comNo" value="${sessionScope.companyMemberDto.comNo}">
				<div id="searchBox">
					<div id="titleBox">
						<p>인재찾기</p>
					</div>
					<div id="conditionBox">
						<input type="text" value="검색 여부" 
							style="background-color: transparent; border: none;" readonly="readonly">
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox" value="체크!" onclick="activeRadioFnc(this, 'talentScore');" checked="checked"> 인재점수
							</div>
							<div class="radioBox">
								<input type="radio" name="talentScore" class="radioBtn" value="60">
								<label for="talentScore">60점 이상</label>
								<input type="radio" name="talentScore" class="radioBtn" value="80"> 
								<label for="talentScore">80점 이상</label> 
								<input type="radio" name="talentScore" class="radioBtn" value="90">
								<label for="talentScore">90점 이상</label>
							</div>
						</div>
<!-- 						<div class="condition"> -->
<!-- 							<div class="conditionTitleBox"> -->
<!-- 								<input type="checkbox" onclick="activeRadioFnc(this, 'careerScore');" checked="checked"> 경력 -->
<!-- 							</div> -->
<!-- 							<div class="radioBox"> -->
<!-- 								<input type="radio" name="careerScore" class="radioBtn" value="1"> -->
<!-- 								<label for="careerScore">3년차 이하</label> -->
<!-- 								<input type="radio" name="careerScore" class="radioBtn" value="2"> -->
<!-- 								<label for="careerScore">3~5년차</label>  -->
<!-- 								<input type="radio" name="careerScore" class="radioBtn" value="3">  -->
<!-- 								<label for="careerScore">5년차 이상</label> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox" onclick="activeRadioFnc(this, 'educationScore');" checked="checked"> 최종 학력
							</div>
							<div class="radioBox">
								<input type="radio" name="educationScore" class="radioBtn" value="1"> 
								<label for="educationScore">고졸</label> 
								<input type="radio" name="educationScore" class="radioBtn" value="2"> 
								<label for="educationScore">초대졸</label> 
								<input type="radio" name="educationScore" class="radioBtn" value="3"> 
								<label for="educationScore">대졸</label>
							</div>
						</div>
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox" onclick="activeRadioFnc(this, 'licenseScore');" checked="checked"> 자격증
							</div>
							<div class="radioBox">
								<input type="radio" name="licenseScore" class="radioBtn" value="1"> 
								<label for="licenseScore">1개 이하</label> 
								<input type="radio" name="licenseScore" class="radioBtn" value="2"> 
								<label for="licenseScore">1개~3개</label> 
								<input type="radio" name="licenseScore" class="radioBtn" value="3"> 
								<label for="licenseScore">3개 이상</label>
							</div>
						</div>
					</div>
					<div id="inputBox">
						<select id="search" name="search">
							<option value="인재 점수">인재 점수</option>
							<option value="경력">경력</option>
							<option value="R.RESUME_EDUCATION_NAME">학교명</option>
							<option value="R.RESUME_LICENSE_NAME">자격증</option>
						</select>
						<input type="text" name="searchText" id="textInput">
						<input type="submit" value="검색" class="button">
					</div>
					<button class="helpButton">
						<div id="helpText">
							- 상세 검색 경력(년차 검색) <br> - 최종 학력(특정 교육기관 검색) <br> -
							자격증(특정 자격증 검색) <br>
						</div>
						<img class="helpButton" alt="도움말" onmouseover="helpFnc(this);"
							src="https://cdn.icon-icons.com/icons2/602/PNG/512/Help_icon-icons.com_55891.png">
					</button>

				</div>
			</form>
			<div id="resumeModal">
				<span class="closeBtn" onclick="closeModal(this);">&times;</span>
				<p>
					OO의 이력서
				</p>
				<table>
					<thead>
						<th>개인 정보</th>
					</thead>
					<tr>
						<td>이름</td>
						<td class="resumeValue"></td>
						<td>생년월일</td>
						<td class="resumeValue"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td class="resumeValue"></td>
						<td>연락처</td>
						<td class="resumeValue"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td class="resumeValue"></td>
						<td>결혼 여부</td>
						<td class="resumeValue"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td class="resumeValue"></td>
						<td>병역 여부</td>
						<td class="resumeValue"></td>
					</tr>
				</table>



				<table>
					<thead>
						<th>학력 사항</th>
					</thead>
					<tr>
						<td>입학년도</td>
						<td>졸업년도</td>
						<td>학교명</td>
						<td>전공</td>
						<td>소재지</td>
						<td>학점(등급)/ 만점</td>
						<td>졸업 구분</td>
					</tr>
					<tr>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
					</tr>
				</table>

				<table>
					<thead>
						<th>경력 사항</th>
					</thead>
					<tr>
						<td>입사년도</td>
						<td>퇴사년도</td>
						<td>회사명</td>
						<td>직위</td>
						<td>소재지</td>
						<td>담당업무</td>
					</tr>
					<tr>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
					</tr>
				</table>

				<table>
					<thead>
						<th>자격증</th>
					</thead>
					<tr>
						<td>자격증 취득일</td>
						<td>자격증명</td>
						<td>발급 기관</td>
						<td>점수/등급</td>
					</tr>
					<tr>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
						<td class="resumeValue"></td>
					</tr>
				</table>
			</div>
			<div id="letterModal">
				<span class="closeBtn" onclick="closeModal(this);">&times;</span>
				<p>
					OO의 자기소개서
				</p>
				<div>
					성장 배경
					<div class="letterValue">
						
					</div>
				</div>
				<div>
					지원 동기
					<div class="letterValue">
						
					</div>
				</div>
				<div>
					성격의 장단점
					<div class="letterValue">
						
					</div>
				</div>
				<div>
					목표
					<div class="letterValue">
						
					</div>
				</div>

			</div>
			<c:forEach var="personalInfo" items="${personalInfoList}">
			<c:set var="eduArr" value="${fn:split(personalInfo.perHighestEdu, ',')}"/>
			<c:set var="eduArrLength" value="${fn:length(eduArr)}"/> 
					<div id="resultBox">
						<div id="resultContent">
							<div style="width: 150px; height: 140px; float: left;">
								<div id="imgBox">
									<img alt=""
										src="https://www.fnnews.com/resource/media/image/2023/08/29/202308291128014614_l.jpg">
								</div>
								<div id="pNameBox">${personalInfo.perName}</div>
							</div>
							<div id="infoBox">
								<div id="companyBox">현재 "${personalInfo.currentCompany}" 재직중</div>
								<div id="highTestEduBox">최종 학력 :
									<span id="HighestEdu">${eduArr[eduArrLength-1]}</span></div>
								<div id="licenseCountBox">자격증 :
									${personalInfo.perLicenseCount}개</div>
							</div>
							<div id="" style="width: 100px; float: left; margin-right: 50px;">
								적합도 ${personalInfo.recommendTotalRate}%</div>
							<div id="buttonBox" style="float: left;">
								<input type="button" value="이력서 보기" class="button" id="resumeBtn"
									onclick="openResumeFnc('${personalInfo.perNo}', '${personalInfo.perName}');">
								<input type="button" value="자소서 보기" class="button" id="letterBtn"
									onclick="openLetterFnc('${personalInfo.perNo}', '${personalInfo.perName}');">
							</div>
	
						</div>
					</div>
			</c:forEach>
		</div>
		<!-- end of content -->
	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />

</body>

</html>

