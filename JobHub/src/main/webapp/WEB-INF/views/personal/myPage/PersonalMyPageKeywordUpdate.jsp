<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 기업 선호도 수정</title>
<script type="text/javascript" src="/JobHub/resources/js/PersonalMyPagepKeywordCheckBoxFnc.js"></script>


<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">
</head>
<body>

	<jsp:include page="../../Header.jsp"/>
	
	
	<div id="container">
		
		<jsp:include page="./PersonalMyPageNav.jsp"/>
		
		<div id="content">

			<div id="personalInfoBoxUpdate">
				<div class="personalInfoItem">
					<div class="infoTitle">
						기업 선호도 수정
					</div>
					
					<div id="selectDesc">
						<span>직장을 선택할 때, 당신에게 중요한 두 가지 키워드를 선택해주세요(최대 2개).</span>
					</div>
				
					<form action="keywordUpdateCtr.do" method="post">
						<div class="personalInfoItemTitleUpdateCheckBox">
							<label>
								<input type="checkbox" name="perKeyword" value="연봉"
								onclick="count_checkFnc(this);">
								<span>연봉</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="복지"
								onclick="count_checkFnc(this);">
								<span>복지</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="근무환경"
								onclick="count_checkFnc(this);">
								<span>근무환경</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="경영진"
								onclick="count_checkFnc(this);">
								<span>경영진</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="워라벨"
								onclick="count_checkFnc(this);">
								<span>워라벨</span>
							</label>
						</div>
<!-- 						<div class="personalInfoItemUpdate"> -->
<!-- 						</div> -->
						<div id="KeywordButtonBoxUpdate">
							<button type="submit" value="수정완료">수정완료</button>
						</div>
						<div id="KeywordBackButtonBox">
							<input type="button" id="backBtn" value="돌아가기" onclick="cancleUpdateFnc();">
						</div>
						
					</form>
				</div>
			</div>
		</div> <!-- content -->
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>