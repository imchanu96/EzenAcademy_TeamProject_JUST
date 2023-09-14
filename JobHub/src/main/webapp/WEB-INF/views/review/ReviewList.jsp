<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review list</title>
	<style type="text/css">
	
			/* 	모든 선택자의  는 작업용입니다. */
			
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
			background-color: #eff5ff;
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
		#content > div {
			background-color: #fff;
			padding: 20px;
		}
		#companyInfoBox, #reviewAverage, .reviewItem {
			border-radius: 10px;
		}
		#companyInfoBox {
			width: 910px;
			height: 160px;
			margin: 14px auto 0px auto;
		}
/* 		#companyPhoto { */
/* 				 */
/* 			width: 945px; */
/* 			height: 195px; */
/* 			margin: auto; */
/* 		} */
		#companyLogo {
			float: left;
			width: 140px;
			height: 140px;
			margin: 10px;
		}
		#companySummary {
			float: left;
			width: 650px;
			height: 80px;
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
		#reviewAverage, .reviewItem {
			font-size: 18px;
		}
		#reviewAverage {
			width: 910px;
			height: 160px;
			margin: 30px auto;
			color: #5c667b;
		}
		#reviewAverageRate {
			width: 300px;
			height: 50px;
			font-size: 25px;
		}
		#averageBox {
			float: left;			
			margin-left: 20px;
		}
		.starRateBox {
			float: left;
			margin-left: 20px;
			width: 300px;
			height: 120px;
		}
		.totalRate {
			float: right;
			width: 300px;
			height: 120px;
			line-height: 120px;
			font-size: 30px;
		}
		.reviewTitleBox {
			width: 600px;
			height: 30px;
			margin-bottom: 20px;
			font-size: 25px;
			color: #292e41
		}
		.reviewContentBox {
			width: 600px;
			height: 120px;
			color: #292e41
		}
		.reviewItem {
			width: 910px;
			height: 160px;
			margin: 30px auto;
			color: #5c667b;
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

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">리뷰 조회</a>
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
		
			<div id="companyInfoBox">
				<div id="companyLogo"></div>
				<div id="companySummary">
					<span id="companyName">(회사명)</span>
					<span id="companyType">(업종)</span>
					<span id="companyHomepage">(홈페이지)</span>
					<span id="totalRate">(별점)</span>
				</div>
			</div>
			
			<div id="reviewAverage">
				<div id="reviewAverageRate">
					<div id="averageBox">
						<span>전체 리뷰 평균</span>
					</div>
					<span>★ 5.0</span>
				</div>
				
				<div class="starRateBox">
					<div>
						<span>급여</span>
						<span>★ 5.0</span>
					</div>
					<div>
						<span>복지</span>
						<span>★ 5.0</span>
					</div>
					<div>
						<span>근무환경</span>
						<span>★ 5.0</span>
					</div>
					<div>
						<span>경영진</span>
						<span>★ 5.0</span>
					</div>
					<div>
						<span>워라밸</span>
						<span>★ 5.0</span>
					</div>
				</div>
				<div class="totalRate">
					매칭률 100
				</div>
			</div>
			
			<div class="reviewItem">
				<div class="starRateBox">
					<div>
						<span>급여</span>
						<span>★ 5</span>
					</div>
					<div>
						<span>복지</span>
						<span>★ 5</span>
					</div>
					<div>
						<span>근무환경</span>
						<span>★ 5</span>
					</div>
					<div>
						<span>경영진</span>
						<span>★ 5</span>
					</div>
					<div>
						<span>워라밸</span>
						<span>★ 5</span>
					</div>
				</div>
				<div class="reviewTitleBox">
					<span>"일반 리뷰 제목"</span>
				</div>
				<div class="reviewContentBox">
					<span>"일반 리뷰 내용"</span>
				</div>
			</div>
			
		</div>
	</div>	
	
	<div id="tailBox">
		<div id="tailContent">
			<div id="teamName">
				TEAM JUST
			</div>
		</div>
	</div>
	
</body>
</html>