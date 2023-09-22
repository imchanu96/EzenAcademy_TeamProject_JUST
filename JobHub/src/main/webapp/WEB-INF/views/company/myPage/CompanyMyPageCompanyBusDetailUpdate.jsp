<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 소개 변경</title>
	<style type="text/css">
			
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2; }
			
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
		    height: 150px;
		    margin: 15px;
		    margin-left:75px;
		    color: #5c667b;
		}
		.infoTitle {
			margin: 0px 0px 20px 0px;
			font-size: 25px;
		}
		.personalInfoItemTitle, .companyInfoItemTitle {
			line-height: 50px;
			float: left;
			width: 250px;
			height: 50px;
			margin-top: 5px;
			margin-left: 25px;
			font-size: 20px;
		}
		.personalInfoItemContent, .companyInfoItemContent {
			line-height: 50px;
			float: left;
			width: 350px;
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
		.button {
			float: left;
			height: 50px;
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
			
			
			<div id="companyInfoBox">
				<div class="companyInfoItem">
					<div class="infoTitle">
						회사 정보
					</div>
					<form action="cIntroduceUpdateCtr.do" method="post">
						<div class="companyInfoItemTitle">
							회사 회사소개
						</div>
						<div class="companyInfoItemContent">
							<input type="text" name="cIntroduce"
								value="${sessionScope.companymemberDto.cIntroduce}">
						</div>
						<div class="button">
							<input type="submit" value="변경하기">
						</div>
					</form>
				</div>
					
			</div>
		</div>	
				
				
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>