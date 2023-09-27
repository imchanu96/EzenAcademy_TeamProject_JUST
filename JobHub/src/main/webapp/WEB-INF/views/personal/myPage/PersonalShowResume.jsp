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

#resumeContain {
	width: 1280px;
	height: 1000px;
	margin: 0px auto;
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

.resumeValue {
	border: 1px solid black;
	border-radius: 5px;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	function updateResumeFnc() {
		location.href = "./resumeUpdate.do"
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
		<div id="resumeContain">
			<input type="button" style="text-align: right;" value="수정하기"
				onclick="updateResumeFnc();">
			<p>${resumeDto.rName}의이력서</p>
			<c:set var="careerDtoList" value="${map.get("careerDtoList")}"/>
			${careerDtoList}
			${map.get("educationDtoList")}
			<table>
				<thead>
					<th>개인 정보</th>
				</thead>
				<tr>
					<td>이름</td>
					<td class="resumeValue">${map.get("resumeDto").rName}</td>
					<td>생년월일</td>
					<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd"
							value="${resumeDto.rBirthday}" /></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td class="resumeValue">${resumeDto.rEmail}</td>
					<td>연락처</td>
					<td class="resumeValue">${resumeDto.rPhoneNum}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td class="resumeValue">${resumeDto.rAdd}</td>
					<td>결혼 여부</td>
					<td class="resumeValue">${resumeDto.rMarry}</td>
				</tr>
				<tr>
					<td>성별</td>
					<td class="resumeValue">${resumeDto.rGender}</td>
					<td>병역 여부</td>
					<td class="resumeValue">${resumeDto.rMilitary}</td>
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
					<td class="resumeValue">${resumeDto.rEduBeginDate}</td>
					<td class="resumeValue">${resumeDto.rEduEndDate}</td>
					<td class="resumeValue">${resumeDto.rEduName}</td>
					<td class="resumeValue">${resumeDto.rEduMajor}</td>
					<td class="resumeValue">${resumeDto.rEduLoc}</td>
					<td class="resumeValue">${resumeDto.rEduGrade}</td>
					<td class="resumeValue">${resumeDto.rEduGraduate}</td>
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
					<td class="resumeValue">${resumeDto.rCareerBeginDate}</td>
					<td class="resumeValue">${resumeDto.rCareerEndDate}</td>
					<td class="resumeValue">${resumeDto.rCareerName}</td>
					<td class="resumeValue">${resumeDto.rCareerPos}</td>
					<td class="resumeValue">${resumeDto.rCareerLoc}</td>
					<td class="resumeValue">${resumeDto.rCareerJob}</td>
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
					<td class="resumeValue">${resumeDto.rLicenseDate}</td>
					<td class="resumeValue">${resumeDto.rLicenseName}</td>
					<td class="resumeValue">${resumeDto.rLicenseInst}</td>
					<td class="resumeValue">${resumeDto.rLicenseGrade}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>