<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review write</title>
<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
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
		padding: 20px 0px 20px 15px;
		border-radius: 10px;
	}
	
	#titleInputBox {
		width: 910px;
		height: 30px;
		margin: 14px auto 0px auto;
	}
	
	#titleInput {
		float: left;
		margin-left: 30px;
		width: 810px;
		height: 25px;
	}
	
	#starInputBox {
		float: left;
		width: 120px;
		height: 500px;
		margin: 14px 14px 0px 25px;
	}
	
	#starInput {
		margin-top: 25px;
		width: 160px;
		height: 450px;
		float: left;
	}
	
	.starInputItem {
		float: left;
		width: 180px;
		height: 90px;
		text-align: left;
	}
	
	.starInputItem > span {
		float: left;
		width: 110px;
		font-size: 16px;
		text-align: center;
	}
	.rate {
		display: inline-block;
		border: 0;
		margin-right: 15px;
	}
	.rate > input {
		display: none;
	}
	.rate > label {
		float: right;
		color: #ddd
	}
	.rate > label:before {
		display: inline-block;
		font-size: 1rem;
		padding: .3rem .2rem;
		margin: 0;
		cursor: pointer;
		font-family: FontAwesome;
		content: "\f005 ";
	}
	.rate {
		padding: 0px;
	}
	.rate .half:before {
		content: "\f089 ";
		position: absolute;
		padding-right: 0;
	}
	.rate input:checked ~ label, 
	.rate label:hover,.rate label:hover ~ label {
		color: #2d65f2 !important;
	} 
	.rate input:checked + .rate label:hover,
	.rate input input:checked ~ label:hover,
	.rate input:checked ~ .rate label:hover ~ label,  
	.rate label:hover ~ input:checked ~ label {
		color: #2d65f2 !important;
	} 
	
	
	#contentInputBox {
		float: left;
		width: 760px;
		height: 500px;
		margin: 14px 0px 0px 14px;
	}
	
	#contentInput {
		margin-left: 50px;
		width: 640px;
		height: 480px;
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

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
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
					<input name="review" id="titleInput" type="text"
						placeholder="제목을 입력해주세요.">
				</div>
				<div id="starInputBox">
					<div id="starInput">
						<div class="starInputItem">
							<span>급여</span>
						    <fieldset class="rate">
						         <input type="radio" id="salRating5" name="salRating" value="5"><label for="salRating5" title="5점"></label>
						         <input type="radio" id="salRating4" name="salRating" value="4"><label for="salRating4" title="4점"></label>
						         <input type="radio" id="salRating3" name="salRating" value="3"><label for="salRating3" title="3점"></label>
						         <input type="radio" id="salRating2" name="salRating" value="2"><label for="salRating2" title="2점"></label>
						         <input type="radio" id="salRating1" name="salRating" value="1"><label for="salRating1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>복지</span>
							<fieldset class="rate">
						         <input type="radio" id="welRating5" name="welRating" value="5"><label for="welRating5" title="5점"></label>
						         <input type="radio" id="welRating4" name="welRating" value="4"><label for="welRating4" title="4점"></label>
						         <input type="radio" id="welRating3" name="welRating" value="3"><label for="welRating3" title="3점"></label>
						         <input type="radio" id="welRating2" name="welRating" value="2"><label for="welRating2" title="2점"></label>
						         <input type="radio" id="welRating1" name="welRating" value="1"><label for="welRating1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>근무 환경</span>
							<fieldset class="rate">
						         <input type="radio" id="envRating5" name="envRating" value="5"><label for="envRating5" title="5점"></label>
						         <input type="radio" id="envRating4" name="envRating" value="4"><label for="envRating4" title="4점"></label>
						         <input type="radio" id="envRating3" name="envRating" value="3"><label for="envRating3" title="3점"></label>
						         <input type="radio" id="envRating2" name="envRating" value="2"><label for="envRating2" title="2점"></label>
						         <input type="radio" id="envRating1" name="envRating" value="1"><label for="envRating1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>경영진</span>
							<fieldset class="rate">
						         <input type="radio" id="bossRating5" name="bossRating" value="5"><label for="bossRating5" title="5점"></label>
						         <input type="radio" id="bossRating4" name="bossRating" value="4"><label for="bossRating4" title="4점"></label>
						         <input type="radio" id="bossRating3" name="bossRating" value="3"><label for="bossRating3" title="3점"></label>
						         <input type="radio" id="bossRating2" name="bossRating" value="2"><label for="bossRating2" title="2점"></label>
						         <input type="radio" id="bossRating1" name="bossRating" value="1"><label for="bossRating1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>워라밸</span>
							<fieldset class="rate">
						         <input type="radio" id="balRating5" name="balRating" value="5"><label for="balRating5" title="5점"></label>
						         <input type="radio" id="balRating4" name="balRating" value="4"><label for="balRating4" title="4점"></label>
						         <input type="radio" id="balRating3" name="balRating" value="3"><label for="balRating3" title="3점"></label>
						         <input type="radio" id="balRating2" name="balRating" value="2"><label for="balRating2" title="2점"></label>
						         <input type="radio" id="balRating1" name="balRating" value="1"><label for="balRating1" title="1점"></label>
						     </fieldset>
						</div>
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" placeholder="내용을 입력해주세요."></textarea>
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
			<div id="teamName">TEAM JUST</div>
		</div>
	</div>

</body>
</html>