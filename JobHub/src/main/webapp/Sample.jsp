<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample</title>
	<style type="text/css">
	
			/* 	모든 선택자의 border: 1px solid red; 는 작업용입니다. */
			
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2;}
			
/* content */
		#container {
			width: 1280px;
			height: 1000px;
			border: 1px solid red;
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
			background-color: #eff5ff;
		}
		#smallMenuBox {
				border: 1px solid red;
			margin: 30px auto;
			width: 200px;
			height: 500px;
		}
		.smallMenuItem {
				border: 1px solid red;
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
		#content > div {
			background-color: #fff;
		}
		#companyInfoBox, #reviewFixed, #reviewItem {
			border-radius: 10px;
		}
		#companyInfoBox {
				border: 1px solid red;
			width: 950px;
			height: 200px;
			margin: 14px auto 0px auto;
		}
/* 		#companyPhoto { */
/* 				border: 1px solid red; */
/* 			width: 945px; */
/* 			height: 195px; */
/* 			margin: auto; */
/* 		} */
		#companyLogo {
				border: 1px solid red;
			float: left;
			width: 180px;
			height: 180px;
			margin: 10px;
		}
		#companySummary {
				border: 1px solid red;
			float: left;
			width: 700px;
			height: 100px;
			margin: 20px;
			color: #5c667b;
		}
		#companyName {
		
		}
		#companyType {
		
		}
		#companyHomepage {
		
		}
		#totalRate {
			float: right;
		}
		#reviewFixed {
				border: 1px solid red;
			width: 950px;
			height: 200px;
			margin: 30px auto;
			color: #5c667b;
		}
		#reviewItem {
				border: 1px solid red;
			width: 950px;
			height: 200px;
			margin: 30px auto;
			color: #5c667b;
		}
		
	</style>
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://www.naver.com">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="">리뷰 작성</a>
				</div>
				<div class="smallMenuItem">
					<a href="">기업 정보</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>