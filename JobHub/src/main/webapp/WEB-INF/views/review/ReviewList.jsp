<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review list</title>
<script type="text/javascript">

	window.addEventListener('DOMContentLoaded', function () {
	    const navigation = document.getElementById('navigation');
	    const content = document.getElementById('content');
	
	    function syncNavigationHeight() {
	        navigation.style.height = content.clientHeight + 'px';
	    }
	
	    syncNavigationHeight();
	    window.addEventListener('resize', syncNavigationHeight);
	});
	
</script>

<script src="https://kit.fontawesome.com/7021bbabcd.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/JobHub/resources/css/ReviewList.css" type="text/css">

</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/list.do">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/add.do">리뷰 작성</a>
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
			
			<form action="./list.do?cNo=${pagingMap.cNo}" id="pagingForm" method="post">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.reviewPaging.curPage}">
			</form>
			
			
		</div>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>