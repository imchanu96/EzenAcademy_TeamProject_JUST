<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 인재 검색</title>
<script type="text/javascript" src="/JobHub/resources/js/SearchPerson.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/SearchPerson.css" type="text/css">

<script type="text/javascript"
	src="/JobHub/resources/js/jquery-3.7.1.js"></script>

</head>
<body id="body">

	<jsp:include page="/WEB-INF/views/Header.jsp" />

	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="#">인재 검색</a>
				</div>
<!-- 				<div class="smallMenuItem"> -->
<!-- 					<a href="">리뷰 작성</a> -->
<!-- 				</div> -->
<!-- 				<div class="smallMenuItem"> -->
<!-- 					<a href="">기업 정보</a> -->
<!-- 				</div> -->
			</div>
		</div>
		<div id="content">
			<form action="./personalInfoList.do" method="post">
			<input type="hidden" name="comNo" value="${sessionScope.companyMemberDto.comNo}">
				<div id="searchBox">
					<div id="titleBox">
						<p>인재 검색</p>
					</div>
					<div id="conditionBox">
						<div class="condition">
							<div class="conditionTitleBox">
								<input type="checkbox" value="체크!" onclick="activeRadioFnc(this, 'talentScore');" checked="checked"> 매칭률
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
								<input type="checkbox" onclick="activeRadioFnc(this, 'licenseScore');" checked="checked"> 자격증 갯수
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
							<option value="PER.RECOMMEND_TOTAL_RATE">매칭률</option>
<!-- 							<option value="경력">경력</option> -->
							<option value="RESUME.RESUME_EDUCATION_NAME">학교명</option>
							<option value="RESUME.RESUME_LICENSE_NAME">자격증</option>
						</select>
						<input type="text" name="searchText" id="textInput">
						<input type="submit" value="검색" class="button">
					</div>
					<button type="button" class="helpButton">
						<div id="helpText">
							- 매칭률(특정 퍼센트 검색)<br>- 최종 학력(특정 교육기관 검색)
							<br>- 자격증(특정 자격증 검색)<br>
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
					<tr id="educationTr">
						
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
						<td>직무</td>
						<td>소재지</td>
						<td>담당업무</td>
					</tr>
					<tr id="careerTr">
					
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
					<tr id="licenseTr">
						
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
			<c:if test='${companyMemberDto == null}'>
				<c:if test='${personalInfoList.comPrefer == null}'>
					<div id="noLetterResumeAlert">
						마이페이지에서 우리 기업이 선호하는 키워드를 설정해주세요.
					</div>
				</c:if>
				
			</c:if>
			<c:if test='${personalInfoList == "[]"}'>
						<div id="noLetterResumeAlert">
							검색 결과가 없습니다.
						</div>
			</c:if>
			<c:if test='${personalInfoList != null}'>
				<c:forEach var="personalInfo" items="${personalInfoList}">
					<c:set var="eduArr" value="${fn:split(personalInfo.perHighestEdu, ',')}"/>
					<c:set var="eduArrLength" value="${fn:length(eduArr)}"/> 
<%-- 					${personalInfo} --%>
						<div id="resultBox">
							<div id="resultContent">
								<div style="width: 150px; height: 140px; float: left;">
									<div id="imgBox">
										<img alt=""
											src="/JobHub/resources/img/user.jpg">
									</div>
									<div id="pNameBox">${personalInfo.perName}</div>
								</div>
								<div id="infoBox">
									<div id="companyBox">${personalInfo.currentCompany} 재직 중</div>
									<div id="highTestEduBox">최종 학력 :
										<span id="HighestEdu">${eduArr[0]}</span></div>
									<div id="licenseCountBox">자격증 :
										${personalInfo.perLicenseCount}개</div>
								</div>
								
								<div id="scoreBox">
									<div id="scoreTitle">적합도</div>
									<div id="scoreNumber">${personalInfo.recommendTotalRate}</div>
									<div id="percentage">&nbsp;%</div>
								</div>

								
								<div id="buttonBox" style="float: left;">
									<input type="button" value="이력서 보기" class="button" id="resumeBtn"
										onclick="openResumeFnc('${personalInfo.perNo}', '${personalInfo.perName}');">
									<input type="button" value="자소서 보기" class="button" id="letterBtn"
										onclick="openLetterFnc('${personalInfo.perNo}', '${personalInfo.perName}');">
								</div>
		
							</div>
						</div>
				</c:forEach>
			</c:if>
			<c:if test="${personalInfoList != null and personalInfoList != '[]'}">
					<jsp:include page="/WEB-INF/views/company/search/SearchPersonPaging.jsp">
						<jsp:param value="${pagingMap}" name="pagingMap"/>
					</jsp:include>
				
					<form action="./personalInfoList.do" id="pagingForm" method="post">
						<input type="hidden" id="curPage" name="curPage"
							value="${pagingMap.searchPaging.curPage}">
					</form>
			</c:if>
		</div>

		<!-- end of content -->
	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />

</body>

</html>

