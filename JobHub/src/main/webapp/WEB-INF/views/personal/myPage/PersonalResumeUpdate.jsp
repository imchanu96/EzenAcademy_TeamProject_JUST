<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

#resumeContain {
			margin: 10px;
			float: left;
			width: 980px;
			height: 950px;
			font-size: 30px;
			background-color: #f8fafc;
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

#resumeContain {
	border: 1px solid black;
	width: 850px;
	border-radius: 5px;
	/* 	padding: 30px; */
}

#resumeContain table {
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

input {
	width: 95%;
	height: 100%;
	border: none;
}
</style>
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
					<a href="./showResume.do?perNo=${personalMemberDto.perNo}">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showLetter.do?perNo=${personalMemberDto.perNo}">자소서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">고객센터</a>
				</div>
			</div>
		</div>
		<c:set var="resumeDto" value='${map.get("resumeDto")}'/>
		<c:set var="careerDtoList" value='${map.get("careerDtoList")}'/>
		<c:set var="educationDtoList" value='${map.get("educationDtoList")}'/>
		<div id="resumeContain">
			<p>${resumeDto.resumeName}의이력서</p>
			<form action="./resumeUpdateCtr.do" method="post">
				<table>
					<thead>
						<th>개인 정보</th>
					</thead>
					<tr>
						<td>이름</td>
						<td class="resumeValue"><input type="text" name="rName"
							value="${resumeDto.resumeName}"></td>
						<td>생년월일</td>
						
						<td class="resumeValue"><input type="date" name="rBirthday"
							value="<fmt:formatDate pattern="yyyy-MM-dd" 
						value="${resumeDto.resumeBirthday}" />"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td class="resumeValue"><input type="text" name="rEmail"
							value="${resumeDto.resumeEmail}"></td>
						<td>연락처</td>
						<td class="resumeValue"><input type="text" name="rPhoneNum"
							value="${resumeDto.resumePhoneNum}"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td class="resumeValue"><input type="text" name="rAdd"
							value="${resumeDto.resumeAdd}"></td>
						<td>결혼 여부</td>
						<td class="resumeValue"><input type="text" name="rMarry"
							value="${resumeDto.resumeMarry}"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td class="resumeValue"><input type="text" name="rGender"
							value="${resumeDto.resumeGender}"></td>
						<td>병역 여부</td>
						<td class="resumeValue"><input type="text" name="rMilitary"
							value="${resumeDto.resumeMilitary}"></td>
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
<%-- 				${educationDtoList} --%>
				<c:forEach var="educationDto" items="${educationDtoList}">
					<tr>
						<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${educationDto.eduBeginDate}" /></td>
						<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${educationDto.eduEndDate}" /></td>
						<td class="resumeValue">${educationDto.eduName}</td>
						<td class="resumeValue">${educationDto.eduMajor}</td>
						<td class="resumeValue">${educationDto.eduLocation}</td>
						<td class="resumeValue">${educationDto.eduGrade}</td>
						<td class="resumeValue">${educationDto.eduGreaduate}</td>
					</tr>
				
				</c:forEach>
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
<%-- 				${careerDtoList} --%>
					<c:forEach var="careerDto" items="${careerDtoList}">
				
					<tr>
						<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd" 
						value="${careerDto.carBeginDate}" /></td>
						<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd" 
 						value="${careerDto.carEndDate}" /></td>
						<td class="resumeValue">${careerDto.carName}</td>
						<td class="resumeValue">${careerDto.carPosition}</td>
						<td class="resumeValue">${careerDto.carLocation}</td>
						<td class="resumeValue">${careerDto.carJob}</td>
					</tr>
					</c:forEach>
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
				<c:set var="resumeDtoLicenseDateList"
					value="${fn:split(resumeDto.resumeLicenseDate, ',')}"/>
				<c:set var="resumeDtoLicenseNameList" 
					value="${fn:split(resumeDto.resumeLicenseName, ',')}"/>
				<c:set var="resumeDtoLicenseInstList" 
					value="${fn:split(resumeDto.resumeLicenseInst, ',')}"/>
				<c:set var="resumeDtoLicenseGradeList" 
					value="${fn:split(resumeDto.resumeLicenseGrade, ',')}"/>
<%-- 					${resumeDto.resumeLicenseDate} --%>
				<c:forEach var="i" begin="0" end="${fn:length(resumeDtoLicenseDateList)}">
					<tr>
						<td class="resumeValue">${resumeDtoLicenseDateList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseNameList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseInstList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseGradeList[i]}</td>
					</tr>
				</c:forEach>
			</table>
				<input type="hidden" name="resumeNo" value="${resumeDto.resumeNo}">
				<input type="hidden" name="perNo" value="${sessionScope.personalMemberDto.perNo}">
				<input type="submit">
			</form>
		</div>
	</div>
</body>
</html>