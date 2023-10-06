<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 비밀번호 수정</title>
<script type="text/javascript" src="/JobHub/resources/js/PersonalMyPage.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">
</head>
<body>

	<jsp:include page="../../Header.jsp"/>
	
	
	<div id="container">
		
		<jsp:include page="./PersonalMyPageNav.jsp"/>
		
		<div id="content">
			<div class="infoTitle">
				비밀번호 수정
			</div>
			<div id="personalInfoBoxUpdate">
				<div class="personalInfoItem">
					<form action="passwordUpdateCtr.do" method="post">
						<div class="personalInfoItemTitleUpdate">
							비밀번호
						</div>
						
						<div class="personalInfoItemUpdate">
							<input id="input" type="password" name="perPwd"
								value="${personalMemberDto.perPwd}">
						</div>
					
						<div id="buttonBox">
							<button type="submit">수정완료</button>
						</div>
						
						<div id="backButtonBox">
							<button id="backBtn">
								<a href="./personalMyPageList.do?perNo=${sessionScope.personalMemberDto.perNo}">
									돌아가기
								</a>
							</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>