<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My page</title>

<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">	
</head>
<body>
	<jsp:include page="../../Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="">내가 쓴 글</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showResume.do?perNo=${personalMemberDto.perNo}">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showLetter.do?perNo=${personalMemberDto.perNo}">자소서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">고객센터</a>
				</div>
			</div>
		</div>
		
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
						${sessionScope.personalMemberDto.perKeyword}
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
						이젠 아카데미
					</div>
				</div>
				<div class="companyInfoItem">
					<div class="companyInfoItemTitle">
						회사 주소
					</div>
					<div class="companyInfoItemContent">
						서울특별시 서초구 강남대로 123 2층
					</div>
				</div>
			</div>
		</div>
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>