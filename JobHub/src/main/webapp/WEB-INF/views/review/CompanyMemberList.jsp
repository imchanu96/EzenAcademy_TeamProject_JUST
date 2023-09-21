<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Member list</title>
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
	
	function goReviewListFnc(cNo) {
		alert(cNo);
		
		var cNoObj = document.getElementById("cNo");
		cNoObj.submit();
	}
	
</script>
<link rel="stylesheet" href="/JobHub/resources/css/CompanyMemberList.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
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
			<c:forEach var="companyDto" items="${companyMemberList}">
				<div id="companyInfoBox">
					<div id="companyLogo"></div>
					<div id="companySummary">
						<span id="companyNumber">${companyDto.cNo}</span>
						<form action="/review/list.do" id="cNo" method="get">
							<a id="companyName" href="#" onclick="goReviewListFnc(${companyDto.cNo});">
								${companyDto.cName}
							</a>
						</form>
						<span id="companyType">
							${companyDto.cType}
						</span>
						<span id="companyHomepage">
							${companyDto.cHomepage}
						</span>
					</div>
				</div>
			</c:forEach>
			
		<!-- 페이징 -->
			<jsp:include page="/WEB-INF/views/review/CompanyMemberPaging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap"/>
			</jsp:include>
			
			<form action="./companyMemberList.do" id="pagingForm" method="post">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.companyMemberPaging.curPage}">
			</form>
			
			
		</div>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>