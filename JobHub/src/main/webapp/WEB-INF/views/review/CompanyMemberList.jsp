<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CompanyMemberList.jsp</title>
<script type="text/javascript" src="/JobHub/resources/js/CompanyMemberList.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/CompanyMemberList.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		
	<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>
		
		<div id="content">
		
			<c:if test="${not empty personalMemberDto}">
				<c:forEach var="companyMemberList" items="${companyMemberList}">
					<div id="companyInfoBox">
<%-- 					${personalMemberDto.perNo} --%>
<%-- 					${companyMemberList.comNo} --%>
						<div id="companyLogo">
							<img src="${companyMemberList.comLogo}">
						</div>
						<div id="companySummary">
							<div id="companyNameBox">
								<a id="companyName" href="/JobHub/review/list.do?comNo=${companyMemberList.comNo}">
									${companyMemberList.comName} 
								</a>
							</div>
							<div id="companyTypeBox">
								<span id="companyType">
									${companyMemberList.comType}
								</span>
							</div>
							<div id="companyHomepageBox">
								<a id="companyHomepage" href="http://${companyMemberList.comHomepage}" target="_blank">
									${companyMemberList.comHomepage}
								</a>
							</div>
						</div>
						
					</div>	<!-- end of companyInfoBox -->
				</c:forEach>
				
			<!-- 페이징 -->
				<jsp:include page="/WEB-INF/views/review/CompanyMemberPaging.jsp">
					<jsp:param value="${pagingMap}" name="pagingMap"/>
				</jsp:include>
				
				<form action="./companyMemberList.do" id="pagingForm" method="post">
					<input type="hidden" id="curPage" name="curPage"
						value="${pagingMap.companyMemberPaging.curPage}">
				</form>
				
			</c:if>
				
				
			<c:if test="${empty personalMemberDto}">
				<div id="loginSign"><a href="../personal/login.do">로그인</a> 후 이용해주세요.</div>
				<div class="blur">
					<c:forEach var="companyMemberList" items="${companyMemberList}">
					
						<div id="companyInfoBox">
							<div id="companyLogo">
							
							</div>
							<div id="companySummary">
								<div id="companyNameBox">
									<a id="companyName" href="/JobHub/review/list.do?comNo=${companyMemberList.comNo}">
										${companyMemberList.comName} 
									</a>
								</div>
								<div id="companyTypeBox">
									<span id="companyType">
										${companyMemberList.comType}
									</span>
								</div>
								<div id="companyHomepageBox">
									<a id="companyHomepage" href="http://${companyMemberList.comHomepage}" target="_blank">
										${companyMemberList.comHomepage}
									</a>
								</div>
							</div>
						</div>	<!-- end of companyInfoBox -->
						
					</c:forEach>
				</div>	<!-- end of blur -->
			</c:if>
			
 		</div> <!--end of content -->
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>