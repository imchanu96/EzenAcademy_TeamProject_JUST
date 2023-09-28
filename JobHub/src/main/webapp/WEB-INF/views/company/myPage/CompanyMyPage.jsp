<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 마이페이지</title>

<link rel="stylesheet" href="/JobHub/resources/css/CompanyMyPage.css" type="text/css">
</head>
<body>
	<jsp:include page="../../Header.jsp"/>
	
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
					<a href="">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./setPrefer.do?cNo=${sessionScope.companyMemberDto.cNo}">선호도 설정</a>
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
						${sessionScope.companyMemberDto.cInChargeName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargeNameUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 이메일
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.cInChargeEmail}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargeEmailUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 연락처
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.cInChargePhoneNum}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargePhoneNumUpdate.do?no=
								${companyMemberDto.cNo}">></a>
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
					
					<div class="companyInfoItemContentUpdate">
						${sessionScope.companyMemberDto.cName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cNameUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						회사 주소
					</div>
					<div class="companyInfoItemContentUpdate">
						${sessionScope.companyMemberDto.cAdd}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cAddUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						업종
					</div>
					<div class="companyInfoItemContentUpdate">
						${sessionScope.companyMemberDto.cType}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cTypeUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						설립
					</div>
					<div class="companyInfoItemContentUpdate">
						<fmt:formatDate value="${sessionScope.companyMemberDto.cEstDate}"
							pattern="YYYY-MM-dd"/>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cEstDateUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						홈페이지
					</div>
					<div class="companyInfoItemContentUpdate">
						${sessionScope.companyMemberDto.cHomepage}
					</div>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cHomepageUpdate.do?no=
								${companyMemberDto.cNo}">></a>
					</div>
					
					<div class="companyInfoItem">
						<div class="companyInfoItemTitle">
							회사 소개
						</div>
						<div class="companyInfoContentBox">
							<div class="companyInfoContent">
								 ${sessionScope.companyMemberDto.cIntroduce}
							</div>
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/company/cIntroduceUpdate.do?no=
									${companyMemberDto.cNo}">></a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>