<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 선호도 변경</title>
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
		    margin: 25px;
		    margin-left: 100px;
		    color: #5c667b;
		}
		.infoTitle {
			margin-top: 3px;
			color: #000;
			font-size: 32px;
		}
		#selectKeyword {
		}
		.selectKeyword {
			margin-top: 28px;
			margin-left: 10px;
			font-size: 25px;
		}
		
		.personalInfoItemTitle {
			float: left;
			width: 550px;
			height: 50px;
			margin-top: 20px;
			margin-left: 15px;
			font-size: 20px;
			line-height: 50px;
		}
		.personalInfoItemTitle > label {
			padding-left: 20px;
		}
		
		.personalInfoItemUpdate {
			float: left;
			width: 500px;
			height: 25px;
			font-size: 18px;
		}

		#buttonBox {
			margin:auto;
			width: 100px;
			height: 50px;
		}
		
		#buttonBox > button {
			width: 100px;
			height: 50px;
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
<script type="text/javascript">

	function count_check(obj) {
		var chkBox = document.getElementsByName("keyword");
		var chkCnt = 0;
		
		for(var i = 0; i <chkBox.length; i++) {
			if(chkBox[i].checked) {
			chkCnt++;
			}
		}
		if(chkCnt > 2) {
			alert("2개까지 체크할 수 있습니다.");
			obj.checked = false;
			return false;
		}
	}
	
</script>
</head>
<body>

	<div id="headerBox">
		<div id="headerContent">
		
			<a href="http://www.naver.com">
				<img id="logo" src="https://github.com/noohij/
								Ezen_TeamProject_JUST/assets/54897384/
								ee8218f0-b067-48da-8bf7-d31bef40f1cf">
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

			<div id="personalInfoBox">
				<div class="personalInfoItem">
					<div id="infoTitle">
						<div class="infoTitle">
							기업 선호도 수정
						</div>
					</div>
					
					<div id="selectKeyword">
						<div class="selectKeyword">
							<span style="color: #000; font-weight: bold;">선호 키워드</span>
							<span style="font-size: 16px;">(최대 2개 선택 가능)</span>
						</div>
					</div>
				
					<form action="" method="get">
						<div class="personalInfoItemTitle">
							<label>
								<input type="checkbox" name="keyword" value="연봉"
								onclick="count_check(this);">
								<span>연봉</span>
							</label>
							<label>
								<input type="checkbox" name="keyword" value="복지"
								onclick="count_check(this);">
								<span>복지</span>
							</label>
							<label>
								<input type="checkbox" name="keyword" value="근무환경"
								onclick="count_check(this);">
								<span>근무환경</span>
							</label>
							<label>
								<input type="checkbox" name="keyword" value="경영진"
								onclick="count_check(this);">
								<span>경영진</span>
							</label>
							<label>
								<input type="checkbox" name="keyword" value="워라벨"
								onclick="count_check(this);">
								<span>워라벨</span>
							</label>
						</div>
						<div class="personalInfoItemUpdate">
						
						</div>
					
					<div id="buttonBox">
						<button type="submit" value="변경하기">변경하기</button>
					</div>
					</form>
				</div>
			</div>
		</div> <!-- content -->
		
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