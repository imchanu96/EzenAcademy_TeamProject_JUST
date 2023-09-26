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
	
	function comDetailViewFnc(cNo) {
		var url = 'http://localhost:9080/JobHub/review/companyDetail.do?cNo=' + cNo;
		
		location.href = url;
	}
	
	function openShowMoreFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		showMoreBoxObj.style.display = "block";
	}
	
	function closeShowMoreFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		showMoreBoxObj.style.display = "none";
	}
	
	function goReviewUpdateFnc(rNo) {
		
		location.href = 'http://localhost:9080/JobHub/review/update.do?rNo=' + rNo;
	}
	
	function goReviewDeleteFnc(rNo) {
		
		location.href = 'http://localhost:9080/JobHub/review/delete.do?rNo=' + rNo;
	}
	
</script>

<script src="https://kit.fontawesome.com/7021bbabcd.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/JobHub/resources/css/ReviewList.css" type="text/css">

</head>
<body>

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/companyMemberList.do">기업 목록</a>
				</div>
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/add.do?pNo=${sessionScope.personalMemberDto.pNo}">리뷰 작성</a>
				</div>
<!-- 				<div class="smallMenuItem"> -->
<!-- 					<a href="">기업 정보</a> -->
<!-- 				</div> -->
			</div>
		</div>
		
		<div id="content">
		
			<div id="companyInfoBox">
				<div id="companyLogo"></div>
				<div id="companySummary">
					<div id="companyNameBox">
						<span id="companyName">${companyMemberDto.cName}</span>
					</div>
					<div id="companyTypeBox">
						<span id="companyType">${companyMemberDto.cIntroduce}</span>
					</div>
					<div id="companyHomepageBox">
						<a id="companyHomepage" href="http://${companyMemberDto.cHomepage}" target="_blank">${companyMemberDto.cHomepage}</a>
					</div>
				</div>
				<div id="companyDetail">
					<button type="button" onclick="comDetailViewFnc(${pagingMap.cNo});">자세히 보기</button>
					<form action="./companyDetail.do" method="get">
						<input type="text" value="${companyMemberDto.cNo}" style="display: none;">
					</form>
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
								<span>&nbsp;&nbsp;급&nbsp;&nbsp;&nbsp;여</span>
							</div>
						<span>★ ${salTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>&nbsp;&nbsp;복&nbsp;&nbsp;&nbsp;지</span>
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
								<span>&nbsp;경&nbsp;영&nbsp;진</span>
							</div>
						<span>★ ${bossTotalAvg}</span>
					</div>
					<div>
						<div class="starNameBox">
								<span>&nbsp;워&nbsp;라&nbsp;밸</span>
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
								<span>&nbsp;&nbsp;급&nbsp;&nbsp;&nbsp;여</span>
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
								<span>&nbsp;&nbsp;복&nbsp;&nbsp;&nbsp;지</span>
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
								<span>&nbsp;경&nbsp;영&nbsp;진</span>
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
								<span>&nbsp;워&nbsp;라&nbsp;밸</span>
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
					reviewDto.rNo = ${reviewDto.rNo}
					<div>
					</div>
					<c:if test="${sessionScope.personalMemberDto.pNo == reviewDto.rPNo}">
						<input type="button" class="reviewShowMoreBox" value="..." onclick="openShowMoreFnc();">
						<div id="showMoreOptionBox">
							<div class="showMoreOptionItems" onclick="closeShowMoreFnc();">
								X
							</div>
							<div class="showMoreOptionItems" onclick="goReviewUpdateFnc(${reviewDto.rNo});">
								수정하기
							</div>
							<div class="showMoreOptionItems" onclick="goReviewDeleteFnc(${reviewDto.rNo});">
								삭제하기
							</div>
						</div>
					</c:if>
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