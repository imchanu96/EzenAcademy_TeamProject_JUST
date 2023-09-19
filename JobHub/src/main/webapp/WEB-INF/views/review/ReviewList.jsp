<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review list</title>
<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
/* container */
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
	#content > div, .reviewItem {
		background-color: #fff;
		padding: 20px;
		box-shadow: 0px 1px 4px 0px #ddd;
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
		height: 200px;
		margin: 30px auto;
		color: #5c667b;
	}
	#reviewAverageRate {
		width: 300px;
		height: 40px;
		font-size: 25px;
		line-height: 40px;
	}
	#averageBox {
		float: left;			
		margin-left: 6px;
		font-size: 20px;
		font-weight: 600;
	}
	.starRateBox {
		float: left;
		margin-top: 5px;
		width: 250px;
		height: 150px;
	}
	.starRateBox > div {
		margin-top: 5px;
	}
	.starRateBox > div > span {
		width: 90px;
		text-align: center;
	}
	.starNameBox {
		float: left;
		width: 100px;
		text-align: center;
	}
	.fas.fa-star {
    	font-size: 13px;
	}
	.totalRate {
		float: right;
		width: 300px;
		height: 120px;
		line-height: 120px;
		font-size: 30px;
	}
	.reviewTitleBox {
		float: left;
		margin-bottom: 20px;
		width: 600px;
		height: 30px;
		font-size: 25px;
		color: #292e41
	}
	.reviewContentBox {
		float: left;
		width: 600px;
		height: 110px;
		color: #292e41;
	}
	.reviewItem {
		width: 910px;
		height: 160px;
		margin: 30px auto;
		color: #5c667b;
		box-shadow: 0px 1px 4px 0px #ddd;
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
<script src="https://kit.fontawesome.com/7021bbabcd.js" crossorigin="anonymous"></script>
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
						<span>평균 별점</span>
					</div>
					<span>
						&nbsp;★ ${totalAvg}
					</span>
				</div>
				
				<div class="starRateBox">
					<div>
						<div class="starNameBox">
								<span>급여</span>
							</div>
						<span>★ ${salTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>복지</span>
							</div>
						<span>★ ${welTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>근무 환경</span>
							</div>
						<span>★ ${envTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>경영진</span>
							</div>
						<span>★ ${bossTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>워라밸</span>
							</div>
						<span>★ ${balTotalAvg}</span>
					</div>
				</div>
<!-- 				<div class="totalRate"> -->
<!-- 					매칭률 100 -->
<!-- 				</div> -->
			</div>
			
			<c:forEach var="reviewDto" items="${reviewList}">
				<div class="reviewItem">
					<div class="starRateBox">
						<div>
							<div class="starNameBox">
								<span>급여</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								    	style="color: ${i <= reviewDto.rSal ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
						<div>
							<div class="starNameBox">
								<span>복지</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								    	style="color: ${i <= reviewDto.rWel ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
						<div>
							<div class="starNameBox">
								<span>근무 환경</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								  	  style="color: ${i <= reviewDto.rEnv ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
						<div>
							<div class="starNameBox">
								<span>경영진</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								    	style="color: ${i <= reviewDto.rBoss ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
						<div>
							<div class="starNameBox">
								<span>워라밸</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								    	style="color: ${i <= reviewDto.rBal ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
					</div>
					<div class="reviewTitleBox">
						<div>
							<span>${reviewDto.rTitle}</span>
						</div>
					</div>
					<div class="reviewContentBox">
						<span>${reviewDto.rContent}</span>
					</div>
				</div>
			</c:forEach>
			
			<jsp:include page="/WEB-INF/views/review/Paging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap"/>
			</jsp:include>
			
			<form action="./list.do" id="pagingForm" method="post">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.reviewPaging.curPage}">
			</form>
			
			
		</div>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>