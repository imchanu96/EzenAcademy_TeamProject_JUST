<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 변경</title>
	<style type="text/css">
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
	    a:hover { color: #2d65f2; }
			
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

/* content */
		#container {
			width: 1280px;
			height: 1000px;
			margin: 0px auto;
		}
/* navigation */
		#navigation {
			margin: 10px;
			float: left;
			width: 250px;
			height: 950px;
			font-size: 25px;
			text-align: center;
			background-color: #eff5ff;
		}
		#smallMenuBox {
			margin: 30px auto;
			width: 200px;
			height: 500px;
		}
		.smallMenuItem {
			margin-bottom: 20px;
		}
		.smallMenuItem a {
			color: #475067;
		}
/* content */
		#content {
			margin: 10px;
			float: left;
			width: 980px;
			height: 950px;
			font-size: 30px;
			background-color: #f8fafc;
		}
		#personalInfoBox, #companyInfoBox {
			border: 1px solid #deebff;		
			background-color: #fff;
			padding: 20px;
			border-radius: 10px;
			width: 620px;
		    height: 260px;
		    margin: 15px;
		    color: #5c667b;
		}
		.infoTitle {
			margin: 15px 0px 0px 35px;
			font-size: 25px;
		}
		.personalInfoItemTitle {
			float: left;
			width: 150px;
			height: 50px;
			margin-left: 15px;
			font-size: 20px;
			line-height: 50px;
		}
		.personalInfoItemUpdate {
			float: left;
			width: 320px;
			height: 50px;
			font-size: 18px;
		}
		.personalInfoItemUpdate > input {
			width: 250px;
			margin-top: 15px;
		}
		#buttonBox {
			float: left;
			width: 100px;
			height: 50px;
			margin-top: -2px;
		}
		#buttonBox > button {
			width: 100px;
		}
		
/* tail form */
		#tailBox {
			height: 150px;
			background-color: #b4c0d3;
			text-align: center;
		}
		#tailContent {
			width: 1280px;
			height: 130px;
			margin: auto;
		}
		#teamName {
			font-size: 50px;
			font-weight: 800;
			color: #999999;
		}
	</style>
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	
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
					<a href="">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">자소서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">고객센터</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div class="infoTitle">
				닉네임 수정
				
			</div>
			<div id="personalInfoBox">
				<div class="personalInfoItem">
					<form action="nickNameUpdateCtr.do" method="post">
						<div class="personalInfoItemTitle">
							닉네임
						</div>
						
						<div>
							<input name="pNo" style="display: none;" 
								value="${personalMemberDto.pNo}">
						</div>
						<div class="personalInfoItemUpdate">
							<input type="text" name="pNickname">
						</div>
					
						<div id="buttonBox">
							<button type="submit">변경하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>