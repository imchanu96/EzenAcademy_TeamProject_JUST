<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재찾기</title>
<style type="text/css">

	#backGround {
		width: 100%;
		height: 780px;
	}
	
	#Box {
		border: 1px solid black;
		width: 800px;
		height: 600px;
		margin: auto;
	}
	.Box {
		border: 1px solid black;
		width: 750px;
		margin-top: 30px;
		margin-left: 25px;
		
	}
	
	#sideBar { 
		border: 1px solid #eff5ff;
		width: 250px;
		height: 750px;
		margin-left: 250px;
		float: left;
	}
	.category{
		margin-top: 50px;
	}
	
	.menu1 {
		font-size: 40px;
		text-align: center;
		width: 200px;
		margin: auto;
	}
	.menu2 {
		font-size: 25px;
		text-align: left;
		width: 150px;
		margin: auto;
	}
	.menu3 {
		font-size: 25px;
		text-align: left;
		width: 150px;
		margin: auto;
	}
	
	.searchBox {
		width: 650px;
		height: 40px;
		margin: auto;
	}
	.searchTag {
		margin-top: 30px;
		font-size: 25px;
	}
	
	.searchCheckBox {
		margin-top: 20px;
	}
	
	#topBox {
		border: 1px solid #eff5ff;
		background-color: #f7fafe;
		width: 650px;
		height: 130px;
		margin: auto;
	}
	.topBox {
		font-size: 20px;
		margin-left: 20px;
		margin-top: 5px;
	}
	.check1 {
		height: 31px;
	}
	.check1 > div {
		width: 150px; 
		float: left;
	}
	.check2 {
		height: 31px;
	}
	.check2 > div {
		width: 150px; 
		float: left;
	}
	.check3 {
		height: 31px;
	}
	.check3 > div {
		width: 150px; 
		float: left;
	}
	.check4 {
		height: 31px;
	}
	.check4 > div {
		width: 150px; 
		float: left;
	}
	
	#bottomBox {
		width: 650px;
		height: 70px;
		margin: auto;
	}
	.bottomBox > p {
		width: 650px;
		margin-top: auto;
		text-align: center;
	}
	.bottomBox > div {
		width: 620px;
		margin: auto;
	}
	
</style>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
		<div id="backGround">
			<div class="backGround">
			
				<div id="sideBar">
					<div class="sideBar">
						<div class="category">
							<div class="menu1"><a>인재 조회</a></div><br>
							<div class="menu2"><a>인재 찾기</a></div><br>
							<div class="menu3"><a>메세지 목록</a></div>
						</div>
					</div>
				</div>
				
				<div id="Box">
					<div class="Box">
							<div class="searchBox">
								<div class="searchTag">
									<p>인재찾기</p>
								</div>
							</div>
						
					<div id="searchCheckBox">
						<div class="searchCheckBox">
							<div id="topBox">
								<div class="topBox">
									<div class="check1">
										<div>
										<input type="checkbox"> 인재점수
										</div>
										<input type="radio" name="score"> 60점 이상
										<input type="radio" name="score"> 80점 이상
										<input type="radio" name="score"> 90점 이상
									</div>
									
									<div class="check2">
										<div>
										<input type="checkbox"> 경력
										</div>
										<input type="radio" name="career"> 3년차 이하
										<input type="radio" name="career"> 3~5년차
										<input type="radio" name="career"> 5년차 이상
									</div>
									
									<div class="check3">
										<div>
										<input type="checkbox"> 최종 학력
										</div>
										<input type="radio" name="education"> 고졸
										<input type="radio" name="education"> 초대졸
										<input type="radio" name="education"> 대졸
									</div>
									
									<div class="check4">
										<div>
										<input type="checkbox"> 자격증
										</div>
										<input type="radio" name="license"> 1개 미만
										<input type="radio" name="license"> 1개~3개
										<input type="radio" name="license"> 3개 이상
									</div>
								</div>
							</div><br>
							
							<div id="bottomBox">
								<div class="bottomBox">
									<p>상세 검색  경력(년차 검색) / 최종 학력(특정 교육기관 검색) 
									/ 자격증(특정 자격증 검색)</p>
									<div>
										<select name="search" id="search">
											<option value="인재 점수">인재 점수</option>
											<option value="경력">경력</option>
											<option value="최종 학력">최종 학력</option>
											<option value="자격증">자격증</option>
										</select>
										<input type="text" placeholder="내용을 검색해주세요."
											style="width: 470px;">
										<input type="button" 
											value="검색">
									</div>
								</div>
							</div>
							
						</div>	
					</div>
				
				</div>
				</div>	
			</div>
		</div><!-- backGround -->

</body>
</html>