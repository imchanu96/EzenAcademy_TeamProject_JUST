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
	float: left;
	width: 140px;
	height: 100px;
	text-align: center;
}
/* end of header */
</style>
</head>
<body>
	
	<c:if test="${sessionScope.personalMemberDto.pPermission <= 2 
		or sessionScope.personalMemberDto.pPermission == 10}">
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

				<div id="myMessageBox">
					<div>
						<a href="http://www.naver.com"> <img id="chatImage" alt=""
							src="https://github.com/noohij/Ezen_TeamProject_JUST/assets
								/136562510/4387a6fc-84c2-4def-8411-f2572b6a12e7">
						</a>
					</div>
				</div>

				<c:if test="${sessionScope.personalMemberDto.pId ne null}">
					<div id="myMenuBox">
						<div>
							<a href="<%=request.getContextPath()%>/personal/logout.do">
								${personalMemberDto.pId} </a>
						</div>
					</div>
				</c:if>

			</div>
		</div>
		<!-- Header Ends -->
	</c:if>
	<c:if test="${sessionScope.companyMemberDto.permission == 5}">
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
						<a href="../board/list.do"> 기업 리뷰 </a>
					</div>
				</div>

				<div id="myMessageBox">
					<div>
						<a href="http://www.naver.com"> <img id="chatImage" alt=""
							src="https://github.com/noohij/Ezen_TeamProject_JUST/assets
								/136562510/4387a6fc-84c2-4def-8411-f2572b6a12e7">
						</a>
					</div>
				</div>

				<c:if test="${sessionScope.companyMemberDto.cCode ne null}">
					<div id="myMenuBox">
						<div>
							<a href="<%=request.getContextPath()%>/personal/logout.do">
								${companyMemberDto.cName} </a>
						</div>
					</div>
				</c:if>

			</div>
		</div>
		<!-- Header Ends -->
	</c:if>

</body>
</html>