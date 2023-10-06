<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 이력서 보기</title>
<link rel="stylesheet" href="/JobHub/resources/css/PersonalShowResume.css" type="text/css">
<script type="text/javascript">
	function updateResumeFnc(perNo) {
		location.href = "./resumeUpdate.do?perNo=" + perNo;
	}
</script>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="container">

		<jsp:include page="./PersonalMyPageNav.jsp" />
<%-- 		${map} --%>
		<c:if test="${map.get('resumeDto') == null}">
			<div id="resumeContain">
				<input type="button" id="button" value="작성"
					onclick="updateResumeFnc(${personalMemberDto.perNo});">
				<table>
					<thead>
						<th>개인 정보</th>
					</thead>
					<tr>
						<td>이름</td>
						<td class="resumeValue">&emsp;&emsp;&emsp;</td>
						<td>생년월일</td>
						<td class="resumeValue">&emsp;&emsp;&emsp;</td>
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
							<td class="resumeValue">&emsp;&emsp;&emsp;</td>
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
						<td class="resumeValue">&emsp;&emsp;&emsp;</td>
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
							<td class="resumeValue">&emsp;&emsp;&emsp;</td>
							<td class="resumeValue"></td>
							<td class="resumeValue"></td>
							<td class="resumeValue"></td>
						</tr>
				</table>
			</div>
	</div>
	</c:if>
		<c:if test="${map.get('resumeDto') != null}">
		<c:set var="resumeDto" value='${map.get("resumeDto")}' />
		<c:set var="careerDtoList" value='${map.get("careerDtoList")}' />
		<c:set var="educationDtoList" value='${map.get("educationDtoList")}' />

		<div id="resumeContain">
			<input type="button" id="button" value="수정"
				onclick="updateResumeFnc(${personalMemberDto.perNo});">

			<table>
				<thead>
					<th>개인 정보</th>
				</thead>
				<tr>
					<td>이름</td>
					<td class="resumeValue">${resumeDto.resumeName}</td>
					<td>생년월일</td>
					<td class="resumeValue"><fmt:formatDate pattern="yyyy-MM-dd"
							value="${resumeDto.resumeBirthday}" /></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td class="resumeValue">${resumeDto.resumeEmail}</td>
					<td>연락처</td>
					<td class="resumeValue">${resumeDto.resumePhoneNum}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td class="resumeValue">${resumeDto.resumeAdd}</td>
					<td>결혼 여부</td>
					<td class="resumeValue">${resumeDto.resumeMarry}</td>
				</tr>
				<tr>
					<td>성별</td>
					<td class="resumeValue">${resumeDto.resumeGender}</td>
					<td>병역 여부</td>
					<td class="resumeValue">${resumeDto.resumeMilitary}</td>
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
					value="${fn:split(resumeDto.resumeLicenseDate, ',')}" />
				<c:set var="resumeDtoLicenseNameList"
					value="${fn:split(resumeDto.resumeLicenseName, ',')}" />
				<c:set var="resumeDtoLicenseInstList"
					value="${fn:split(resumeDto.resumeLicenseInst, ',')}" />
				<c:set var="resumeDtoLicenseGradeList"
					value="${fn:split(resumeDto.resumeLicenseGrade, ',')}" />
				<%-- 					${resumeDto.resumeLicenseDate} --%>
				<c:forEach var="i" begin="0"
					end="${fn:length(resumeDtoLicenseDateList)}">
					<tr>
						<td class="resumeValue">${resumeDtoLicenseDateList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseNameList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseInstList[i]}</td>
						<td class="resumeValue">${resumeDtoLicenseGradeList[i]}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>