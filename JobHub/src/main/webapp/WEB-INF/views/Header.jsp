<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style type="text/css">

/* 공통 */
a {
	text-decoration: none;
	color: #292e41;
}

a:hover {
	color: #2d65f2;
}

/* head form */
#headerBox {
	height: 130px;
	border-bottom: 1px solid #b4c0d3;
}

#headerContent {
	margin: 0px auto;
	width: 1280px;
	height: 120px;
}
/* logo */
#logo {
	float: left;
	margin: 0px 90px;
	width: 74px;
	height: 111px;
}
/* main menu */
#mainMenuBox {
	float: left;
	width: 750px;
	height: 100px;
	margin-left: 30px;
}

.mainMenuItem {
	float: left;
	margin: 20px;
	width: 200px;
	height: 60px;
	text-align: center;
	line-height: 60px;
	font-size: 30px;
	font-weight: 600;
}
/* message */
#myMessageBox {
	float: left;
	width: 100px;
	height: 100px;
	text-align: center;
}
/* my menu */
#myMenuBox {
	float: right;
	width: 130px;
	height: 70px;
	margin-top: 10px;
	margin-right: 15px;
	padding: 15px 0px;
	text-align: center;
	border: 1px solid #fff;
	border-radius: 15px; 
	background-color: #EAEAEA;
}
.memberType {
	width: 130px;
	height: 34px;
	line-height: 19px;
	border-bottom: 3px solid #fff;
	color: #5D5D5D;
}
.memberInfo {
	width: 130px;
	height: 35px;
	line-height: 45px;
	font-weight: bold;
}
/* end of header */
#logoutModal {
	position: fixed;
	left: 40%;
	top: 20%;
}

#logoutForm {
	background-color: white;
	width: 400px;
	height: 500px;
	margin: auto;
}

#logoutHeaderForm {
	border: 1px solid #deebff;
	background-color: #94b5fc;
}

.logoutHeaderForm {
	color: black;
	font-size: 30px;
	width: 370px;
	margin: auto;
}

#centerForm {
	border: 1px solid #deebff;
	height: 250px;
}

.centerForm {
	color: #000;
	font-size: 25px;
	width: 350px;
	height: 250px;
	margin: auto;
}

#buttonForm {
	background-color: white;
}

.buttonForm {
	width: 300px;
	height: 100px;
	margin: auto;
}

.yesButton>input {
	background-color: #94b5fc;
	font-size: 20px;
	width: 100px;
	height: 60px;
	float: left;
}

.noButton>input {
	background-color: #94b5fc;
	font-size: 20px;
	width: 100px;
	height: 60px;
	float: right;
}
#myMenu{
	display: none;
}
</style>
<script type="text/javascript">

	function myMenuFnc() {
		var myMenu = document.getElementById("myMenu");
		myMenu.style.display = "block";
		
		myMenu.addEventListener("mouseleave", function(e) {
			myMenu.style.display = "none";
		});
	}
	function clickLogoutFnc() {
		var logoutModal = document.getElementById("logoutModal");
		logoutModal.style.display = "block";
	}
	function logoutFnc(permission) {
		if (permission == 1 || permission == 2) {
			location.href = "<%=request.getContextPath()%>/personal/logout.do";
		}else if (permission == 5) {
			location.href = "<%=request.getContextPath()%>/company/logout.do";
		}
		
	}
	function backButton() {
		var logoutModal = document.getElementById("logoutModal");
		logoutModal.style.display = "none";
	}
</script>
</head>
<body>
	<div id="logoutModal" style="display: none;">
		<div id="logoutForm">

			<div id="logoutHeaderForm">
				<div class="logoutHeaderForm">
					<p>로그아웃폼</p>
				</div>
			</div>

			<div id="centerForm">
				<div class="centerForm">
					<p>회원님</p>
					<p>정말 로그아웃 하시겠습니까?</p>
				</div>
			</div>
			<br>

			<form action="logout.do" method="get">
				<div id="buttonForm">
					<div class="buttonForm">
						<div class="yesButton">
							<input type="button" value="네" onclick="logoutFnc(${permission});">
						</div>

						<div class="noButton">
							<input type="button" value="아니오" onclick="cancelFnc();">
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- logoutForm -->

	</div>
	<c:if
		test="${sessionScope.permission <= 2 
		or sessionScope.permission == 10}">
		<div id="headerBox">
			<div id="headerContent">

				<a href="http://localhost:9080/JobHub/personal/home.do"> <img
					id="logo"
					src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf">
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

				<c:if test="${sessionScope.personalMemberDto.pId ne null}">
					<div id="myMenuBox">
						<div class="memberType">
							<span>개인회원</span>
						</div>
						<div class="memberInfo">
							<a href="#" onmouseover="myMenuFnc();">
								${personalMemberDto.pId}님
							</a>
							<div id="myMenu">
								<a href="#">마이 페이지</a>
								<p onclick="clickLogoutFnc();">로그 아웃</p>
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

				<a href="http://localhost:9080/JobHub/personal/home.do"> <img
					id="logo"
					src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf">
				</a>

				<div id="mainMenuBox">
					<div class="mainMenuItem">
						<a href="../company/searchPerson.do"> 인재 조회 </a>
					</div>
					<div class="mainMenuItem">
						<a href="../review/list.do?cNo=${companyMemberDto.cNo}"> 기업 리뷰
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

				<c:if test="${sessionScope.companyMemberDto.cCode ne null}">
					<div id="myMenuBox">
						<div>
							<a href="#"  onmouseover="myMenuFnc();">
								기업 : ${companyMemberDto.cName}님 </a>
								<div id="myMenu">
									<a href="#">마이 페이지</a>
									<p onclick="clickLogoutFnc();">로그 아웃</p>
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