<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<script type="text/javascript" src="/JobHub/resources/js/Header.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/Header.css" type="text/css">
</head>
<body>

	<div id="logoutModal">
		<div id="centerForm">
			<p>정말 로그아웃 하시겠습니까?</p>
		</div>
		<form action="logout.do" method="get">
			<div id="buttonForm">
				<div class="button">
					<input type="button" value="네" onclick="logoutFnc(${permission});">
				</div>
				<div class="button">
					<input type="button" value="아니오" onclick="backButton();">
				</div>
			</div>
		</form>
	</div>
	
	<c:if
		test="${sessionScope.permission <= 2 
		or sessionScope.permission == 10}">
		<div id="headerBox">
			<div id="headerContent">

				<a href="http://localhost:9080/JobHub/home.do">
					<img id="logo"
						src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/1aa66c0e-7488-4a56-bc50-f915be889cf8">
				</a>

				<div id="mainMenuBox">
					<div class="mainMenuItem">
						<a href="../review/companyMemberList.do"> 기업 조회 </a>
					</div>
					<div class="mainMenuItem">
						<a href="#"> 기업 추천 </a>
					</div>
					<div class="mainMenuItem">
						<a href="../board/list.do"> 게시판 </a>
					</div>
				</div>

<!-- 				<div id="myMessageBox"> -->
<!-- 					<div> -->
<!-- 						<a href="http://www.naver.com"> <img id="chatImage" alt="" -->
<!-- 							src="https://github.com/noohij/Ezen_TeamProject_JUST/assets -->
<!-- 								/136562510/4387a6fc-84c2-4def-8411-f2572b6a12e7"> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<c:if test="${sessionScope.personalMemberDto.perId ne null}">
					<div id="myMenuBox">
						<div class="memberInfo">
							<span>
								${personalMemberDto.perId} 님
							</span>
						</div>
						<div class="memberType">
							<span>개인회원</span>
						</div>
						<div id="myMenu">
							<div class="myPage">
								<a href="#">마이 페이지</a>
							</div>
							<div class="logout">
								<p onclick="clickLogoutFnc();"
									onmouseover="mouseoverFnc();"
									onmouseleave="mouseleaveFnc();">
									로그 아웃
								</p>
							</div>
						</div>
					</div>
				</c:if>

			</div>
		</div>
		<!-- Header Ends -->
	</c:if>
	<c:if test="${sessionScope.permission == 5}">
		<div id="headerBox">
			<div id="headerContent">
				<a href="http://localhost:9080/JobHub/home.do">
				<img id="logo"
					 src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/1aa66c0e-7488-4a56-bc50-f915be889cf8">
				</a>

				<div id="mainMenuBox">
					<div class="mainMenuItem">
						<a href="../company/searchPerson.do"> 인재 조회 </a>
					</div>
					<div class="mainMenuItem">
						<a href="../review/list.do?comNo=${sessionScope.companyMemberDto.comNo}"> 기업 리뷰
						</a>
					</div>
				</div>

<!-- 				<div id="myMessageBox"> -->
<!-- 					<div> -->
<!-- 						<a href="http://www.naver.com"> <img id="chatImage" alt="" -->
<!-- 							src="https://github.com/noohij/Ezen_TeamProject_JUST/assets -->
<!-- 								/136562510/4387a6fc-84c2-4def-8411-f2572b6a12e7"> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<c:if test="${sessionScope.companyMemberDto.comCode ne null}">
					<div id="myMenuBox">
						<div class="memberInfo">
							<span>
								${sessionScope.companyMemberDto.comName} 님
							</span>
						</div>
						<div class="memberType">
							<span>기업회원</span>
						</div>
						<div id="myMenu">
							<div class="myPage">
								<a href="../company/showCompanyInfo.do?comNo=${sessionScope.companyMemberDto.comNo}">마이 페이지</a>
							</div>
							<div class="logout">
								<p onclick="clickLogoutFnc();"
									onmouseover="mouseoverFnc();"
									onmouseleave="mouseleaveFnc();">
									로그 아웃
								</p>
							</div>
						</div>
					</div>
				</c:if>

			</div>
		</div>
		<!-- Header Ends -->
	</c:if>

</body>
</html>