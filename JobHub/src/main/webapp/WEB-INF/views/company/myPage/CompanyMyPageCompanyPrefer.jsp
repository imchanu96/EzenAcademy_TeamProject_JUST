<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선호도 설정</title>
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
		    height: 550px;
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

	</style>
</head>
<body>
	<jsp:include page="./Header.jsp"/>
	
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
				선호도 설정
			</div>
			<div id="personalInfoBox">
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						이름
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companymemberDto.cInChargeName}ㅇㅇ
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						이메일
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.cInChargeEmail}메일
					</div>
				</div>
				<div class="personalInfoItem">
					<div class="personalInfoItemTitle">
						연락처
					</div>
					<div class="personalInfoItemContent">
						${sessionScope.companyMemberDto.cInChargePhoneNum}연락
					</div>
				</div>
			</div>
			
				
			</div>
		</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>