<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 이력서 수정</title>
<script type="text/javascript" src="/JobHub/resources/js/PersonalResumeUpdate.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/PersonalResumeUpdate.css" type="text/css">
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="container">
	
		<jsp:include page="./PersonalMyPageNav.jsp"/>
		
		<c:set var="resumeDto" value='${map.get("resumeDto")}'/>
		<c:set var="careerDtoList" value='${map.get("careerDtoList")}'/>
		<c:set var="educationDtoList" value='${map.get("educationDtoList")}'/>
		<div id="resumeContain">
			
			<form id ="resumeUpdateForm" action="./resumeUpdateCtr.do" method="post">
			<input type="button" id="submitButton" onclick="submitFnc();" value="수정 완료">
				<table>
					<thead>
						<th>개인 정보</th>
					</thead>
					<tr>
						<td>이름</td>
						<td class="resumeValue">
							<input type="text" name="resumeName" value="${resumeDto.resumeName}">
						</td>
						<td>생년월일</td>
						<td class="resumeValue">
							<input type="date" name="resumeBirthday"
									value="<fmt:formatDate pattern="yyyy-MM-dd"
															value="${resumeDto.resumeBirthday}"/>">
						</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td class="resumeValue">
							<input type="text" name="resumeEmail" value="${resumeDto.resumeEmail}">
						</td>
						<td>연락처</td>
						<td class="resumeValue">
							<input type="text" name="resumePhoneNum" value="${resumeDto.resumePhoneNum}">
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td class="resumeValue">
							<input type="text" name="resumeAdd" value="${resumeDto.resumeAdd}">
						</td>
						<td>결혼 여부</td>
						<td class="resumeValue">
							<input type="text" name="resumeMarry" value="${resumeDto.resumeMarry}">
						</td>
					</tr>
					<tr>
						<td>성별</td>
						<td class="resumeValue">
							<input type="text" name="resumeGender" value="${resumeDto.resumeGender}">
						</td>
						<td>병역 여부</td>
						<td class="resumeValue">
							<input type="text" name="resumeMilitary" value="${resumeDto.resumeMilitary}">
						</td>
					</tr>
				</table>

				<table id="educationTable">
					<thead>
						<tr>
							<th>학력 사항</th>
							<td colspan="6">
								<input class="deleteTr resumeButton" type="button"
									value="항목 삭제" onclick="deleteTrFnc('educationTr');">
								<input class="addTr resumeButton" type="button"
									value="항목 추가" onclick="addTrFnc('educationTable', 7);">
							</td>
						</tr>
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
					<c:if test="${educationDtoList != ''}">
						<tr class="educationTr">
							<td class="resumeValue">
								<input type="date" name="resumeEduBeginDateValue" value="">
							</td>
							<td class="resumeValue">
								<input type="date" name="resumeEduEndDateValue" value="">
							</td>
							<td class="resumeValue"><input type="text" name="resumeEduNameValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeEduMajorValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeEduLocValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeEduGradeValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeEduGraduateValue" value=""></td>
						</tr>
					</c:if>
					
					<c:forEach var="educationDto" items="${educationDtoList}">
						<tr class="educationTr">
							<td class="resumeValue">
								<input type="date" name="resumeEduBeginDateValue" value="<fmt:formatDate pattern="yyyy-MM-dd"
									value="${educationDto.eduBeginDate}"/>">
							</td>
							<td class="resumeValue">
								<input type="date" name="resumeEduEndDateValue" value="<fmt:formatDate pattern="yyyy-MM-dd"
									value="${educationDto.eduEndDate}"/>">
							</td>
							<td class="resumeValue"><input type="text" name="resumeEduNameValue" value="${educationDto.eduName}"></td>
							<td class="resumeValue"><input type="text" name="resumeEduMajorValue" value="${educationDto.eduMajor}"></td>
							<td class="resumeValue"><input type="text" name="resumeEduLocValue" value="${educationDto.eduLocation}"></td>
							<td class="resumeValue"><input type="text" name="resumeEduGradeValue" value="${educationDto.eduGrade}"></td>
							<td class="resumeValue"><input type="text" name="resumeEduGraduateValue" value="${educationDto.eduGreaduate}"></td>
						</tr>
						
					</c:forEach>
				</table>
	
				<table id="careerTable">
					<thead>
						<tr>
							<th>경력 사항</th>
							<td colspan="5">
								<input class="deleteTr resumeButton" type="button"
									value="항목 삭제" onclick="deleteTrFnc('careerTr');">
								<input class="addTr resumeButton" type="button" 
									value="항목 추가" onclick="addTrFnc('careerTable', 6);">
							</td>
						</tr>
					</thead>
					<tr>
						<td>입사년도</td>
						<td>퇴사년도</td>
						<td>회사명</td>
						<td>직위</td>
						<td>소재지</td>
						<td>담당업무</td>
					</tr>
	<%-- 				${careerDtoList} --%>
					<c:if test="${careerDtoList != ''}">
						
						<tr class="careerTr">
							<td class="resumeValue">
								<input type="date" name="resumeCareerBeginDateValue" value="">
							</td>
							<td class="resumeValue">
								<input type="date" name="resumeCareerEndDateValue" value="">
							</td>
							<td class="resumeValue"><input type="text" name="resumeCareerNameValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeCareerPosValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeCareerLocValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeCareerJobValue" value=""></td>
						</tr>                      
					</c:if>
					<c:forEach var="careerDto" items="${careerDtoList}">
				
						<tr class="careerTr">
							<td class="resumeValue">
								<input type="date" name="resumeCareerBeginDateValue" value="<fmt:formatDate pattern="yyyy-MM-dd"
									value="${careerDto.carBeginDate}"/>">
							</td>
							<td class="resumeValue">
								<input type="date" name="resumeCareerEndDateValue" value="<fmt:formatDate pattern="yyyy-MM-dd"
									value="${careerDto.carEndDate}"/>">
							</td>
							<td class="resumeValue"><input type="text" name="resumeCareerNameValue" value="${careerDto.carName}"></td>
							<td class="resumeValue"><input type="text" name="resumeCareerPosValue" value="${careerDto.carPosition}"></td>
							<td class="resumeValue"><input type="text" name="resumeCareerLocValue" value="${careerDto.carLocation}"></td>
							<td class="resumeValue"><input type="text" name="resumeCareerJobValue" value="${careerDto.carJob}"></td>
						</tr>                      
					</c:forEach>

				</table>
	
				<table id="licenseTable">
					<thead>
						<tr>
							<th>자격증</th>
							<td colspan="3">
								<input class="deleteTr resumeButton" type="button"
									value="항목 삭제" onclick="deleteTrFnc('licenseTr');">
								<input class="addTr resumeButton" type="button" 
									value="항목 추가" onclick="addTrFnc('licenseTable', 4);">
							</td>
						</tr>
					</thead>
					<tr>
						<td>자격증 취득일</td>
						<td>자격증명</td>
						<td>발급 기관</td>
						<td>점수/등급</td>
					</tr>
					<c:set var="resumeDtoLicenseDateList"
						value="${fn:split(resumeDto.resumeLicenseDate, ',')}"/>
					<c:set var="resumeDtoLicenseNameList" 
						value="${fn:split(resumeDto.resumeLicenseName, ',')}"/>
					<c:set var="resumeDtoLicenseInstList" 
						value="${fn:split(resumeDto.resumeLicenseInst, ',')}"/>
					<c:set var="resumeDtoLicenseGradeList" 
						value="${fn:split(resumeDto.resumeLicenseGrade, ',')}"/>
	<%-- 					${resumeDto.resumeLicenseDate} --%>
					<c:if test="${resumeDtoLicenseDateList == null}">
						<tr class="licenseTr">
							<td class="resumeValue"><input type="date" name="resumeLicenseDateValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseNameValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseInstValue" value=""></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseGradeValue" value=""></td>
						</tr>
					</c:if>
					<c:forEach var="i" begin="0" end="${fn:length(resumeDtoLicenseNameList)-1}">
					
						<tr class="licenseTr">
							<td class="resumeValue"><input type="date" name="resumeLicenseDateValue" value="${resumeDtoLicenseDateList[i]}"></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseNameValue" value="${resumeDtoLicenseNameList[i]}"></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseInstValue" value="${resumeDtoLicenseInstList[i]}"></td>
							<td class="resumeValue"><input type="text" name="resumeLicenseGradeValue" value="${resumeDtoLicenseGradeList[i]}"></td>
						</tr>
					</c:forEach>
				</table>
				<input type="hidden" id="resumeEduBeginDate" name="resumeEduBeginDate" value="">
				<input type="hidden" id="resumeEduEndDate" name="resumeEduEndDate" value="">
				<input type="hidden" id="resumeEduName" name="resumeEduName" value="">
				<input type="hidden" id="resumeEduMajor" name="resumeEduMajor" value="">
				<input type="hidden" id="resumeEduLoc" name="resumeEduLoc" value="">
				<input type="hidden" id="resumeEduGrade" 	name="resumeEduGrade" value="">
				<input type="hidden" id="resumeEduGraduate" name="resumeEduGraduate" value="">
				<input type="hidden" id="resumeCareerBeginDate" name="resumeCareerBeginDate" value="">
				<input type="hidden" id="resumeCareerEndDate" name="resumeCareerEndDate" value="">
				<input type="hidden" id="resumeCareerName" name="resumeCareerName" value="">
				<input type="hidden" id="resumeCareerPos"	name="resumeCareerPos" value="">
				<input type="hidden" id="resumeCareerLoc"	name="resumeCareerLoc" value="">
				<input type="hidden" id="resumeCareerJob" name="resumeCareerJob" value="">
				<input type="hidden" id="resumeLicenseDate" name="resumeLicenseDate" value="">
				<input type="hidden" id="resumeLicenseName" name="resumeLicenseName" value="">
				<input type="hidden" id="resumeLicenseInst" name="resumeLicenseInst" value="">
				<input type="hidden" id="resumeLicenseGrade" name="resumeLicenseGrade" value="">
				<input type="hidden" name="resumeNo" value="${resumeDto.resumeNo}">
				<input type="hidden" name="perNo" value="${sessionScope.personalMemberDto.perNo}">
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>