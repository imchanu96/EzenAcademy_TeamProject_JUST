<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 주소 변경</title>

<script type="text/javascript">
	function backButton() {
// 		window.history.back();
		location.href = "company/myPage/CompanyMyPage";
	}
</script>

<style type="text/css">

</style>

<link rel="stylesheet" href="/JobHub/resources/css/CompanyInfoUpdate.css" type="text/css">

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
					<a href="./setPrefer.do?comNo=${sessionScope.companyMemberDto.comNo}">선호도 설정</a>
				</div>
			</div>
		</div>

		<div id="content">
			<div id="companyInfoBox">
				<div class="companyInfoItem">
					<c:if test="${companyMemberDtoUpdate.comInChargeName != null}">
						<div class="infoTitle">회사 담당자 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">담당자 명</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comInChargeName"
									placeholder="${companyMemberDtoUpdate.comInChargeName}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comInChargeEmail != null}">
						<div class="infoTitle">회사 담당자 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">담당자 이메일</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comInChargeEmail"
									placeholder="${companyMemberDtoUpdate.comInChargeEmail}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comInChargePhoneNum != null}">
						<div class="infoTitle">회사 담당자 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">담당자 연락처</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comInChargePhoneNum"
									placeholder="${companyMemberDtoUpdate.comInChargePhoneNum}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comName != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사명</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comName"
									placeholder="${companyMemberDtoUpdate.comName}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comAdd != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사 주소</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comAdd"
									placeholder="${companyMemberDtoUpdate.comAdd}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comType != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사 업종</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comType"
									placeholder="${companyMemberDtoUpdate.comType}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comEstDate != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사 설립일</div>

							<div class="companyInfoItemContent">
								<input type="date" name="comEstDate"
									placeholder="${companyMemberDtoUpdate.comEstDate}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comHomepage != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사 홈페이지</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comHomepage"
									placeholder="${companyMemberDtoUpdate.comHomepage}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
					<c:if test="${companyMemberDtoUpdate.comIntroduce != null}">
						<div class="infoTitle">회사 정보</div>

						<form action="CompanyInfoUpdateCtr.do" method="post">
							<div class="companyInfoItemTitle">회사 소개</div>

							<div class="companyInfoItemContent">
								<input type="text" name="comIntroduce"
									placeholder="${companyMemberDtoUpdate.comIntroduce}">
							<input type="hidden" name="comNo" 
								value="${companyMemberDto.comNo}">
							</div>
							<div class="button">
								<input type="submit" value="변경하기">
							</div>
							
							<div id="backButtonBox">
							<button id="backBtn" onclick="backButton();">
									돌아가기
							</button>
							</div>
							
						</form>
					</c:if>
				</div>

			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>

</html>