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
						<span id="companyName">${companyDto.cName}</span>
						<span id="companyType">${companyDto.cType}</span>
						<span id="companyHomepage">${companyDto.cHomepage}</span>
					</div>
				</div>
			</c:forEach>
			
			<jsp:include page="/WEB-INF/views/review/Paging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap"/>
			</jsp:include>
			
			<form action="./list.do" id="pagingForm" method="post">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.companyMemberPaging.curPage}">
			</form>
			
			
		</div>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>