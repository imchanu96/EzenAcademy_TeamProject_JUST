<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
	<style type="text/css">
	
			/* 	모든 선택자의 border: 1px solid red; 는 작업용입니다. */
			
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
				border: 1px solid red;
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
				border: 1px solid red;
			float: left;
			width: 750px;
			height: 100px;
			margin-left: 30px;
		}
		.mainMenuItem {
				border: 1px solid red;
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
				border: 1px solid red;
			float: left;
			width: 100px;
			height: 100px;
			text-align: center;
		}
/* my menu */
		#myMenuBox {
				border: 1px solid red;
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
		
			<a href="http://www.naver.com">
				<img id="logo" src="./img/JobHub_logo.png">
			</a>
			
			<div id="mainMenuBox">
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						메뉴 1
					</a>
				</div>
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						메뉴 2
					</a>
				</div>
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						메뉴 3
					</a>
				</div>
			</div>
			
			<div id="myMessageBox">
				<div>
					<a href="http://www.naver.com">
						채팅
					</a>
				</div>
			</div>
			
			<div id="myMenuBox">
				<div>
					<a href="http://www.naver.com">
						로그인 / 회원가입
					</a>
				</div>
			</div>
			
		</div>
	</div> <!-- Header Ends -->
	
</body>
</html>