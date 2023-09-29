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
	line-height: 120px;
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
.myMenuBox {
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
</style>
<script type="text/javascript">
	window.onload = function() {
		var permission = document.getElementById("permissionStr").value;
		
	}
</script>
</head>
<body>

	<c:if test="${sessionScope.permission <= 2 
		or sessionScope.permission == 10}">
		<div id="headerBox">
			<div id="headerContent">

				<a href="http://www.naver.com"> <img id="logo"
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

				<c:if test="${sessionScope.personalMemberDto.perId ne null}">
					<div class="myMenuBox">
						<div class="memberType">
							<span>개인회원</span>
						</div>
						<div class="memberInfo">
							<a href="<%=request.getContextPath()%>/personal/logout.do">
								${personalMemberDto.perId}
							</a>
							님
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

				<a href="http://www.naver.com"> <img id="logo"
					src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf">
				</a>
				
				<div id="mainMenuBox">
					<div class="mainMenuItem">
						<a href="../company/searchPerson.do"> 인재 조회 </a>
					</div>
					<div class="mainMenuItem">
						<a href="../review/list.do?comNo=${companyMemberDto.comNo}"> 기업 리뷰 </a>
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
					<div class="myMenuBox">
						<div class="memberType">
							<span>기업회원</span>
						</div>
						<div class="memberInfo">
							<a href="<%=request.getContextPath()%>/personal/logout.do">
								${companyMemberDto.comName}
							</a>
							님
						</div>
					</div>
				</c:if>

			</div>
		</div>
		<!-- Header Ends -->
	</c:if>

</body>
</html>