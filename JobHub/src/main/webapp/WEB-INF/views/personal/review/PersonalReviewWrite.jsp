<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
	<style type="text/css">
	
			/* 	모든 선택자의  는 작업용입니다. */
			
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
		#content > form > div {
			background-color: #fff;
			padding: 20px;
			border-radius: 10px;
		}
		.inputDesc {
			float: left;
			font-size: 20px;
		}
		#titleInputBox {
			width: 910px;
			height: 30px;
			margin: 14px auto 0px auto;
		}
		#titleInput {
			float: left;
			margin-left: 50px;
			width: 750px;
			height: 25px;
		}
		#starInputBox {
			width: 910px;
			height: 30px;
			margin: 14px auto 0px auto;
			line-height: 30px;
		}
		#starInput {
			margin-left: 85px;
			width: 800px;
			height: 25px;
		}
		.starInputItem {
			float: left;
			width: 193px;
			height: 30px; 
			text-align: left;
		}
		.starInputItem > span {
			width: 92px;
			font-size: 16px;
			text-align: right;
		}
		span, select {
			float: left;
			margin-left: 20px;
		}
		select {
			margin: 5px 0px 5px 10px;
			height: 20px;
		}
		#contentInputBox {
			width: 910px;
			height: 600px;
			margin: 14px auto 0px auto;
		}
		#contentInput {
			margin-left: 50px;
			width: 750px;
			height: 595px;
		}
		#buttonBox {
			margin: 0px 420px;
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

	<div id="headerBox">
		<div id="headerContent">
		
			<a href="http://www.naver.com">
				<img id="logo" src="./img/JobHub_logo.png">
			</a>
			
			<div id="mainMenuBox">
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						기업 추천
					</a>
				</div>
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						기업 리뷰
					</a>
				</div>
				<div class="mainMenuItem">
					<a href="http://www.naver.com">
						게시판
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
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="">리뷰 작성</a>
				</div>
				<div class="smallMenuItem">
					<a href="">기업 정보</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<form action="">
				<div id="titleInputBox">
					<span class="inputDesc">제목</span>
					<input name="review" id="titleInput" type="text">
				</div>
				
				<div id="starInputBox">
					<span class="inputDesc">별점</span>
					<div id="starInput">
						<div class="starInputItem">
							<span>급여 및 복지</span>
							<select name="salary">
								<option>★★★★★</option>
								<option>★★★★</option>
								<option>★★★</option>
								<option>★★</option>
								<option>★</option>
							</select>
						</div>
						<div class="starInputItem">
							<span>근무 환경</span>
							<select name="environment">
								<option>★★★★★</option>
								<option>★★★★</option>
								<option>★★★</option>
								<option>★★</option>
								<option>★</option>
							</select>
						</div>
						<div class="starInputItem">
							<span>경영진</span>
							<select name="boss">
								<option>★★★★★</option>
								<option>★★★★</option>
								<option>★★★</option>
								<option>★★</option>
								<option>★</option>
							</select>
						</div>
						<div class="starInputItem">
							<span>워라밸</span>
							<select name="balance">
								<option>★★★★★</option>
								<option>★★★★</option>
								<option>★★★</option>
								<option>★★</option>
								<option>★</option>
							</select>
						</div>
					</div>
				</div>
				
				<div id="contentInputBox">
					<span class="inputDesc">내용</span>
					<textarea id="contentInput"></textarea>
				</div>
			</form>
			<div id="buttonBox">
				<button type="submit">제출하기</button>
				<button type="button">취소</button>
			</div>
		</div>
		
	</div>	
	
	<div id="tailBox">
		<div id="tailContent">
			<div id="teamName">
				TEAM JUST
			</div>
		</div>
	</div>
	
</body>
</html>