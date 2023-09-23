<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

	</style>
</head>
<body>

	<div id="headerBox">
		<div id="headerContent">
		
			<a href="http://localhost:9080/JobHub/home.do">
				<img id="logo" src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/54897384/ee8218f0-b067-48da-8bf7-d31bef40f1cf">
			</a>
			
			<div id="mainMenuBox">
				<div class="mainMenuItem">
					<a href="http://localhost:9080/JobHub/personal/login.do">
						개인 회원
					</a>
				</div>
				<div class="mainMenuItem">
					<a href="http://localhost:9080/JobHub/company/login.do">
						기업 회원
					</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>