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
	
</script>
<link rel="stylesheet" href="/JobHub/resources/css/CompanyMemberList.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
	<div id="container">
		
	<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>
		
		<div id="content">
			<c:forEach var="companyMemberList" items="${companyMemberList}">
				<div id="companyInfoBox">
					<div id="companyLogo"></div>
					<div id="companySummary">
						<div id="companyNameBox">
							<a id="companyName" href="/JobHub/review/list.do?cNo=${companyMemberList.cNo}">
								${companyMemberList.cName} 
							</a>
						</div>
						<div id="companyTypeBox">
							<span id="companyType">
								${companyMemberList.cType}
							</span>
						</div>
						<div id="companyHomepageBox">
							<a id="companyHomepage" href="http://${companyMemberList.cHomepage}" target="_blank">
								${companyMemberList.cHomepage}
							</a>
						</div>
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