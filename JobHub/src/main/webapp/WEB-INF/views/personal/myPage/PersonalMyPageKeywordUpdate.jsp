<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 선호도 변경</title>

<script type="text/javascript">

	function count_check(obj) {
		var chkBox = document.getElementsByName("pKeyword");
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

<link rel="stylesheet" href="/JobHub/resources/css/PersonalMyPage.css" type="text/css">
</head>
<body>

	<jsp:include page="../../Header.jsp"/>
	
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="./personalMyPageList.do?perNo=${personalMemberDto.perNo}">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="./personalMyPostList.do?perNo=${personalMemberDto.perNo}">내가 쓴 글</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showResume.do?perNo=${personalMemberDto.perNo}">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./showLetter.do?perNo=${personalMemberDto.perNo}">자소서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="">고객센터</a>
				</div>
			</div>
		</div>
		
		<div id="content">

			<div id="personalInfoBoxUpdate">
				<div class="personalInfoItem">
					<div id="infoTitle">
						<div class="infoTitleUpdate">
							기업 선호도 수정
						</div>
					</div>
					
					<div id="selectKeyword">
						<div class="selectKeyword">
							<span style="color: #000; font-weight: bold;">선호 키워드</span>
							<span style="font-size: 16px;">(최대 2개 선택 가능)</span>
						</div>
					</div>
				
					<form action="keywordUpdateCtr.do" method="post">
						<div class="personalInfoItemTitleUpdateCheckBox">
							<label>
								<input type="checkbox" name="perKeyword" value="연봉"
								onclick="count_check(this);">
								<span>연봉</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="복지"
								onclick="count_check(this);">
								<span>복지</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="근무환경"
								onclick="count_check(this);">
								<span>근무환경</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="경영진"
								onclick="count_check(this);">
								<span>경영진</span>
							</label>
							<label>
								<input type="checkbox" name="perKeyword" value="워라벨"
								onclick="count_check(this);">
								<span>워라벨</span>
							</label>
						</div>
						<div class="personalInfoItemUpdate">
						
						</div>
					
						<div id="buttonBoxUpdate">
							<button type="submit" value="변경하기">변경하기</button>
						</div>
					</form>
				</div>
			</div>
		</div> <!-- content -->
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>