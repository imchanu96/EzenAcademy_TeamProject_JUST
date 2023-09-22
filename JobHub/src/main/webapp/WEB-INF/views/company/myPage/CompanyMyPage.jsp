<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 마이페이지</title>
	<style type="text/css">
			
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2; }
			
/* head form */
		#headerBox {
			height: 130px;
			border-bottom: 1px solid #b4c0d3;
		}
		#headerContent {
				
			margin: 0px auto;
			width: 1280px;
			height: 120px;
		}
/* logo */
		#logo {
			float: left;
			margin: 0px 90px;
			width: 74px;
			height: 111px;
		}
/* main menu */
		#mainMenuBox {
			float: left;
			width: 750px;
			height: 100px;
			margin-left: 30px;
		}
		.mainMenuItem {
			float: left;
			margin: 20px;
			width: 200px;
			height: 60px;
			text-align: center;
			line-height: 60px;
			font-size: 30px;
			font-weight: 600;
		}
/* message */
		#myMessageBox {
			float: left;
			width: 100px;
			height: 100px;
			text-align: center;
		}
		
		#chatImage {
			width: 70px;
			height: 70px;
			margin-top: 20px;
			margin-right: 50px;
		}
/* my menu */
		#myMenuBox {
			float: left;
			width: 140px;
			height: 100px;
			text-align: center;
		}
/* end of header */

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
			background-color: #d7dce5;
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
		#personalInfoBox {
			border: 1px solid #d7dce5;
			background-color: #fff;
			padding: 20px;
			border-radius: 10px;
			width: 710px;
		    height: 150px;
		    margin: 15px;
		    margin-left:75px;
		    color: #5c667b;
		}
		
		#companyInfoBox {
			border: 1px solid #d7dce5;
			background-color: #fff;
			padding: 20px;
			border-radius: 10px;
			width: 710px;
		    height: 500px;
		    margin: 15px;
		    margin-left:75px;
		    color: #5c667b;
		}
		.infoTitle {
			margin: 15px 0px 0px 105px;
			font-size: 25px;
		}
		.personalInfoItemTitle, .companyInfoItemTitle {
			line-height: 50px;
			float: left;
			width: 150px;
			height: 50px;
			margin-left: 15px;
			font-size: 20px;
		}
		.personalInfoItemContent, .companyInfoItemContent {
			line-height: 50px;
			float: left;
			width: 500px;
			height: 50px;
			font-size: 18px;
		}
		.companyInfoContentBox {
			float: left;
			width: 500px;
			height: 300px;
		}
		.companyInfoContent {
			margin-top: 7px;
			width: 470px;
			height: 240px;
			line-height: 35px;
			font-size: 18px;
		}
		.arrowBox {
			height: 50px;
		}
/* tail form */
		#tailBox {
			height: 150px;
			background-color: #b4c0d3;
			text-align: center;
		}
		#tailContent {
				
			width: 1280px;
			height: 130px;
			margin: auto;
		}
		#teamName {
			font-size: 50px;
			font-weight: 800;
			color: #999999;
		}
	</style>
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
					<a href="">선호도 설정</a>
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
						${sessionScope.companymemberDto.cInChargeName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargeNameUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 이메일
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companymemberDto.cInChargeEmail}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargeEmailUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						담당자 연락처
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companymemberDto.cInChargePhoneNum}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cInChargePhoneNumUpdate.do?no=
								${companymemberDto.cNo}">></a>
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
						${sessionScope.companymemberDto.cName}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cNameUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						회사 주소
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companymemberDto.cAdd}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cAddUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						업종
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companymemberDto.cType}
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cTypeUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						설립
					</div>
					<div class="companyInfoItemContent">
						<fmt:formatDate value="${sessionScope.companymemberDto.cEstDate}"
							pattern="YYYY-MM-dd"/>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cEstDateUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
				</div>
				
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						홈페이지
					</div>
					<div class="companyInfoItemContent">
						${sessionScope.companymemberDto.cHomepage}
					</div>
					</div>
					<div class="arrowBox">
						<a href="<%=request.getContextPath()%>
							/company/cHomepageUpdate.do?no=
								${companymemberDto.cNo}">></a>
					</div>
					
					<div class="companyInfoItem">
						<div class="companyInfoItemTitle">
							회사 소개
						</div>
						<div class="companyInfoContentBox">
							<div class="companyInfoContent">
								 ${sessionScope.companymemberDto.cBusDetail}
							</div>
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/company/cBusDetailUpdate.do?no=
									${companymemberDto.cNo}">></a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>