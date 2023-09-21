<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Info</title>
	<style type="text/css">
			
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2; }

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
			border-radius: 10px;
		}
		#companyInfoBox {
			width: 910px;
		    height: 500px;
		    margin: 15px;
		    color: #5c667b;
		}
		.companyInfoRow {
			margin-left: 30px;
			width: 880px;
		    height: 50px;
		}
		.titleBox {
			float: left;
			width: 200px;
			font-size: 22px;
		}
		.contentBox {
			float: right;
			width: 650px;
			font-size: 16px;
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

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
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
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>www.jobhub.com</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>업종</span>
					</div>
					<div class="contentBox">
						<span>제조</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>www.jobhub.com</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>www.jobhub.com</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>www.jobhub.com</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>소개</span>
					</div>
					<div class="contentBox">
						<span>우리 회사는 이런 회사입니다.</span>
					</div>
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