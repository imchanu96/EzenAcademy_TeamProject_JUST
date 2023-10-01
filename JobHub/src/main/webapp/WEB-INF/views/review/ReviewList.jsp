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
	
	function comDetailViewFnc(comNo) {
		var url = 'http://localhost:9080/JobHub/review/companyDetail.do?comNo=' + comNo;
		
		location.href = url;
	}
	
	function openShowMoreFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		showMoreBoxObj.style.display = "block";
		var deleteConfirmObj = document.getElementById("deleteConfirmBox");
		deleteConfirmObj.style.display = "none";
	}
	
	function closeShowMoreFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		showMoreBoxObj.style.display = "none";
	}
	
	function goReviewUpdateFnc(reviewNo) {
		
		location.href = 'http://localhost:9080/JobHub/review/update.do?reviewNo=' + reviewNo;
	}
	
	function goReviewDeleteFnc(reviewNo, comNo) {
		
		location.href = 'http://localhost:9080/JobHub/review/delete.do?reviewNo=' + reviewNo + '&comNo=' + comNo;
	}
	
	function openModalFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		showMoreBoxObj.style.display = "none";
		var deleteConfirmObj = document.getElementById("deleteConfirmBox");
		deleteConfirmObj.style.display = "block";
	}
	
	function closeModalFnc() {
		var showMoreBoxObj = document.getElementById("showMoreOptionBox");
		var deleteConfirmObj = document.getElementById("deleteConfirmBox");
		showMoreBoxObj.style.display = "none";
		deleteConfirmObj.style.display = "none";
	}
	
</script>

<script src="https://kit.fontawesome.com/7021bbabcd.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/JobHub/resources/css/ReviewList.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
	
		<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>
		
		<div id="content">
		
			<div id="companyInfoBox">
				<div id="companyLogo"></div>
				<div id="companySummary">
					<div id="companyNameBox">
						<span id="companyName">${companyMemberDto.comName}</span>
					</div>
					<div id="companyTypeBox">
						<span id="companyType">${companyMemberDto.comIntroduce}</span>
					</div>
					<div id="companyHomepageBox">
						<a id="companyHomepage" href="http://${companyMemberDto.comHomepage}" target="_blank">${companyMemberDto.comHomepage}</a>
					</div>
				</div>
				<div id="companyDetail">
					<button type="button" onclick="comDetailViewFnc(${pagingMap.comNo});">자세히 보기</button>
					<form action="./companyDetail.do" method="get">
						<input type="text" value="${companyMemberDto.comNo}" style="display: none;">
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
				<div id="extraDiv">
					<div class="starRateBox">
						<div>
							<div class="starNameBox">
								<span>&nbsp;&nbsp;급&nbsp;&nbsp;&nbsp;여</span>
							</div>
							<span>
								<c:forEach var="i" begin="1" end="5">
								    <i class="fas fa-star"
								    	style="color: ${i <= reviewDto.reviewSal ? '#2d65f2' : '#ddd'};"></i>
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
								    	style="color: ${i <= reviewDto.reviewWel ? '#2d65f2' : '#ddd'};"></i>
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
								  	  style="color: ${i <= reviewDto.reviewEnv ? '#2d65f2' : '#ddd'};"></i>
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
								    	style="color: ${i <= reviewDto.reviewBoss ? '#2d65f2' : '#ddd'};"></i>
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
								    	style="color: ${i <= reviewDto.reviewBal ? '#2d65f2' : '#ddd'};"></i>
								</c:forEach>
							</span>
						</div>
					</div>
					<div class="reviewTitleBox">
						<div>
							<span>${reviewDto.reviewTitle}</span>
						</div>
					</div>
					<div class="reviewContentBox">
						<span>${reviewDto.reviewContent}</span>
					</div>
					
				
					<c:if test="${sessionScope.personalMemberDto.perNo == reviewDto.perNo}">
						<input type="button" class="reviewShowMoreBox" value="···"
								onclick="openShowMoreFnc();">
						<div id="showMoreOptionBox">
							<div id="showMoreCloseBox" onclick="closeShowMoreFnc();">
								X&nbsp;&nbsp;
							</div>
							<div class="showMoreOptionItems"
								onclick="goReviewUpdateFnc(${reviewDto.reviewNo});">
								수정하기
							</div>
							<div id="showMoreOptionDelete" class="showMoreOptionItems"
								onclick="openModalFnc();">
								삭제하기
							</div>
						</div>
						<div id="deleteConfirmBox">
							정말 삭제할까요?
							<div id="deleteAnswerBox">
								<div class="deleteAnswerItems" id="deleteYes"
									onclick="goReviewDeleteFnc(${reviewDto.reviewNo}, ${pagingMap.comNo});">
									예
								</div>
								<div class="deleteAnswerItems"
									onclick="closeModalFnc();">
									아니오
								</div>
							</div>
						</div>
					</c:if>
				</div>
				</div>
			</c:forEach>
			
			<jsp:include page="/WEB-INF/views/review/Paging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap"/>
			</jsp:include>
			
			<form action="./list.do?comNo=${pagingMap.comNo}" id="pagingForm" method="post">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.reviewPaging.curPage}">
			</form>
			
			
		</div>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>