<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 리뷰 조회</title>
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
				<c:if test="${companyMemberList == '[]'}">
					<div id="companyInfoBox">
<%-- 					${personalMemberDto.perNo} --%>
<%-- 					${companyMemberList.comNo} --%>
						<div id="companyLogo">
<%-- 							<img src="${companyMemberList.COMPANY_LOGO}"> --%>
						</div>
						<div id="companySummary">
							<div id="noLetterResumeAlert">
								이력서와 자소서를 입력 후 조회해주세요.
							</div>
<!-- 							<div id="companyTypeBox"> -->
<!-- 								<span id="companyType"> -->
<%-- 									${companyMemberList.COMPANY_TYPE} --%>
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div id="companyHomepageBox"> -->
<%-- 								<a id="companyHomepage" href="http://${companyMemberList.COMPANY_HOMEPAGE}" target="_blank"> --%>
<%-- 									${companyMemberList.COMPANY_HOMEPAGE} --%>
<!-- 								</a> -->
<!-- 							</div> -->
						</div>
						<div id="recommendTotalRateBox">
<!-- 							<div id="recommendTotalRateTitle">매칭률&nbsp;&nbsp;</div> -->
<%-- 							<div id="recommendTotalRate">${companyMemberList.RECOMMEND_TOTAL_RATE}</div> --%>
<!-- 							<div id="recommendTotalRatePercentage">&nbsp;&nbsp;%</div> -->
						</div>
						
					</div>
				</c:if>
				<c:forEach var="companyMemberList" items="${companyMemberList}">
					<div id="companyInfoBox">
<%-- 					${personalMemberDto.perNo} --%>
<%-- 					${companyMemberList.comNo} --%>
						<div id="companyLogo">
							<img src="${companyMemberList.COMPANY_LOGO}">
						</div>
						<div id="companySummary">
							<div id="companyNameBox">
								<a id="companyName" href="/JobHub/review/list.do?comNo=${companyMemberList.COMPANY_NUMBER}">
									${companyMemberList.COMPANY_NAME} 
								</a>
							</div>
							<div id="companyTypeBox">
								<span id="companyType">
									${companyMemberList.COMPANY_TYPE}
								</span>
							</div>
							<div id="companyHomepageBox">
								<a id="companyHomepage" href="http://${companyMemberList.COMPANY_HOMEPAGE}" target="_blank">
									${companyMemberList.COMPANY_HOMEPAGE}
								</a>
							</div>
						</div>
						<div id="recommendTotalRateBox">
							<div id="recommendTotalRateTitle">매칭률&nbsp;&nbsp;</div>
							<div id="recommendTotalRate">${companyMemberList.RECOMMEND_TOTAL_RATE}</div>
							<div id="recommendTotalRatePercentage">&nbsp;&nbsp;%</div>
						</div>
						
					</div>	<!-- end of companyInfoBox -->
					
				</c:forEach>
				
				<!-- 페이징 -->
				<c:if test="${companyMemberList != '[]'}">
					<jsp:include page="/WEB-INF/views/review/CompanyMemberPaging.jsp">
						<jsp:param value="${pagingMap}" name="pagingMap"/>
					</jsp:include>
				
					<form action="./companyMemberList.do" id="pagingForm" method="post">
						<input type="hidden" id="curPage" name="curPage"
							value="${pagingMap.companyMemberPaging.curPage}">
					</form>
					
				</c:if>
			</c:if>
				
				
			<c:if test="${empty personalMemberDto}">
				<div id="loginSign"><a href="../personal/login.do">로그인</a> 후 이용해주세요.</div>
				<div class="blur">
					<c:forEach var="companyMemberList" items="${companyMemberList}">
					
						<div id="companyInfoBox">
							<div id="companyLogo">
							
							</div>
							${companyMemberList.RECOMMEND_TOTAL_RATE}
							<div id="companySummary">
								<div id="companyNameBox">
									<a id="companyName" href="/JobHub/review/list.do?comNo=${companyMemberList.COMPANY_NUMBER}">
										${companyMemberList.COMPANY_NAME} 
									</a>
								</div>
								<div id="companyTypeBox">
									<span id="companyType">
										${companyMemberList.COMPANY_TYPE}
									</span>
								</div>
								<div id="companyHomepageBox">
									<a id="companyHomepage" href="http://${companyMemberList.COMPANY_HOMEPAGE}" target="_blank">
										${companyMemberList.COMPANY_HOMEPAGE}
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