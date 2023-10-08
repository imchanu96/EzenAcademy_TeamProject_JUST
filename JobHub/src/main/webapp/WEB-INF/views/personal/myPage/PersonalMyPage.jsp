<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 마이 페이지</title>

<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">
</head>
<body>

	<jsp:include page="../../Header.jsp"/>
	
	<div id="container">
	
		<form action="./personalMyPageList.do" method="get">
		
			<jsp:include page="./PersonalMyPageNav.jsp"/>
		
			<div id="content">
				<div class="infoTitle">
					개인 정보
				</div>
				<div id="personalInfoBox">
					<div class="personalInfoItem">
						<div class="personalInfoItemTitle">
							닉네임
						</div>
						<div class="personalInfoItemContent">
							${sessionScope.personalMemberDto.perNickname}
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/personal/nickNameUpdate.do?no=${personalMemberDto.perNo}">></a>
						</div>
					</div>
					<div class="personalInfoItem">
						<div class="personalInfoItemTitle">
							비밀번호
						</div>
						<div class="personalInfoItemContent">
							********
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/personal/passwordUpdate.do?no=${personalMemberDto.perNo}">></a>
						</div>
					</div>
					<div class="personalInfoItem">
						<div class="personalInfoItemTitle">
							전화번호
						</div>
						<div class="personalInfoItemContent">
							${sessionScope.personalMemberDto.perPhoneNum}
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/personal/phoneNumUpdate.do?no=${personalMemberDto.perNo}">></a>
						</div>
					</div>
					<div class="personalInfoItem">
						<div class="personalInfoItemTitle">
							이메일
						</div>
						<div class="personalInfoItemContent">
							${sessionScope.personalMemberDto.perEmail}
						</div><!-- request > session -->
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/personal/emailUpdate.do?no=${personalMemberDto.perNo}">></a>
						</div>
					</div>
					<div class="personalInfoItem">
						<div class="personalInfoItemTitle">
							키워드
						</div>
						<div class="personalInfoItemContent">
							<c:if test="${sessionScope.personalMemberDto.perKeyword != null}">
								<c:set var="perKeywordList" 
									value="${fn:split(sessionScope.personalMemberDto.perKeyword, ',')}" />
								<c:forEach var="i" begin="0" end="${fn:length(perKeywordList)}">
									${perKeywordList[i]}
									<c:if test="${i < fn:length(perKeywordList)-1}">
										,
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${sessionScope.personalMemberDto.perKeyword == null}">
								선택된 키워드가 없습니다.
							</c:if>
						</div>
						<div class="arrowBox">
							<a href="<%=request.getContextPath()%>
								/personal/keywordUpdate.do?no=${personalMemberDto.perNo}">></a>
						</div>
					</div>
				</div>
				<div class="infoTitle">
					회사 정보
				</div>
				<div id="companyInfoBox">
					<div class="companyInfoItem">
						<div class="companyInfoItemTitle">
							회사 이름
						</div>
						<div class="companyInfoItemContent">
							${personalMemberDto.perCom}
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>