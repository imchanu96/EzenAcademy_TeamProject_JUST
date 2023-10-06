<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 마이페이지</title>

<link rel="stylesheet" href="/JobHub/resources/css/CompanyMyPage.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="./showCompanyInfo.do?comNo=${sessionScope.companyMemberDto.comNo}">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="./setPrefer.do?comNo=${sessionScope.companyMemberDto.comNo}">선호도 설정</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div class="infoTitle">
				담당자 정보
			</div>
			<div id="personalInfoBox">
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 이름
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.comInChargeName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comInChargeName=${companyMemberDto.comInChargeName}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 이메일
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.comInChargeEmail}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comInChargeEmail=${companyMemberDto.comInChargeEmail}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 연락처
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.comInChargePhoneNum}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comInChargePhoneNum=${companyMemberDto.comInChargePhoneNum}">></a>
					</div>
				</div>
			</div>
			<div class="infoTitle">
				회사 정보
			</div>
			<div id="companyInfoBox">
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						회사명
					</div>
					
					<div class="companyInfoItemContent">
						${sessionScope.companyMemberDto.comName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comName=${companyMemberDto.comName}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						회사 주소
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companyMemberDto.comAdd}
					</div>
					<div class="arrowBox">
						<a href="../company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comAdd=${companyMemberDto.comAdd}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						업종
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companyMemberDto.comType}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comType=${companyMemberDto.comType}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						설립
					</div>

					<div class="companyInfoItemContent">
						<fmt:formatDate value="${sessionScope.companyMemberDto.comEstDate}"
							pattern="YYYY-MM-dd"/>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comEstDate=<fmt:formatDate value="${sessionScope.companyMemberDto.comEstDate}"
							pattern="YYYY-MM-dd"/>">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						홈페이지
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companyMemberDto.comHomepage}
					</div>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comHomepage=${companyMemberDto.comHomepage}">></a>
					</div>
					
					<div class="companyInfoItem">
						<div class="companyInfoItemTitle">
							회사 소개
						</div>
						<div class="companyInfoContentBox">
							<div class="companyInfoContent">
								 ${sessionScope.companyMemberDto.comIntroduce}
							</div>
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/company/companyInfoUpdate.do?comNo=
								${companyMemberDto.comNo}&comIntroduce=${companyMemberDto.comIntroduce}">></a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>