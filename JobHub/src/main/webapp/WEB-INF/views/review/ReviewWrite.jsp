<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 리뷰 작성</title>
<script type="text/javascript" src="/JobHub/resources/js/ReviewWrite.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/ReviewWrite.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		
	<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>

		<div id="content">
			<div id="reviewingCompany">${personalMemberDto.perCom} 리뷰 작성</div>
			<form action="./addCtr.do" method='post' onsubmit="onSubmitFnc(event);">
				<div id="titleInputBox">
					<input name="reviewTitle" id="titleInput" type="text"
						placeholder="제목을 입력해주세요(20자 이내)"
						onfocus="titleFocusFnc();" onblur="titleBlurFnc();">
					<div class="errorMsg" id="titleErrorMsg">
						최대 20자 이내로 입력해주세요.
					</div>
				</div>
				<div id="starInputBox">
					<div id="starInput">
						<div class="starInputItem">
							<span>급여</span>
						    <fieldset class="rate">
						         <input type="radio" id="reviewSal5" name="reviewSal" value=5>
						         	<label for="reviewSal5" title="5점"></label>
						         <input type="radio" id="reviewSal4" name="reviewSal" value=4>
						         	<label for="reviewSal4" title="4점"></label>
						         <input type="radio" id="reviewSal3" name="reviewSal" value=3>
						         	<label for="reviewSal3" title="3점"></label>
						         <input type="radio" id="reviewSal2" name="reviewSal" value=2>
						         	<label for="reviewSal2" title="2점"></label>
						         <input type="radio" id="reviewSal1" name="reviewSal" value=1>
						         	<label for="reviewSal1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>복지</span>
							<fieldset class="rate">
						         <input type="radio" id="reviewWel5" name="reviewWel" value=5>
						         	<label for="reviewWel5" title="5점"></label>
						         <input type="radio" id="reviewWel4" name="reviewWel" value=4>
						         	<label for="reviewWel4" title="4점"></label>
						         <input type="radio" id="reviewWel3" name="reviewWel" value=3>
						         	<label for="reviewWel3" title="3점"></label>
						         <input type="radio" id="reviewWel2" name="reviewWel" value=2>
						         	<label for="reviewWel2" title="2점"></label>
						         <input type="radio" id="reviewWel1" name="reviewWel" value=1>
						         	<label for="reviewWel1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>근무 환경</span>
							<fieldset class="rate">
						         <input type="radio" id="reviewEnv5" name="reviewEnv" value=5>
						         	<label for="reviewEnv5" title="5점"></label>
						         <input type="radio" id="reviewEnv4" name="reviewEnv" value=4>
						         	<label for="reviewEnv4" title="4점"></label>
						         <input type="radio" id="reviewEnv3" name="reviewEnv" value=3>
						         	<label for="reviewEnv3" title="3점"></label>
						         <input type="radio" id="reviewEnv2" name="reviewEnv" value=2>
						         	<label for="reviewEnv2" title="2점"></label>
						         <input type="radio" id="reviewEnv1" name="reviewEnv" value=1>
						         	<label for="reviewEnv1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>경영진</span>
							<fieldset class="rate">
						         <input type="radio" id="reviewBoss5" name="reviewBoss" value=5>
						         	<label for="reviewBoss5" title="5점"></label>
						         <input type="radio" id="reviewBoss4" name="reviewBoss" value=4>
						         	<label for="reviewBoss4" title="4점"></label>
						         <input type="radio" id="reviewBoss3" name="reviewBoss" value=3>
						         	<label for="reviewBoss3" title="3점"></label>
						         <input type="radio" id="reviewBoss2" name="reviewBoss" value=2>
						         	<label for="reviewBoss2" title="2점"></label>
						         <input type="radio" id="reviewBoss1" name="reviewBoss" value=1>
						         	<label for="reviewBoss1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>워라벨</span>
							<fieldset class="rate">
						         <input type="radio" id="reviewBal5" name="reviewBal" value=5>
						         	<label for="reviewBal5" title="5점"></label>
						         <input type="radio" id="reviewBal4" name="reviewBal" value=4>
						         	<label for="reviewBal4" title="4점"></label>
						         <input type="radio" id="reviewBal3" name="reviewBal" value=3>
						         	<label for="reviewBal3" title="3점"></label>
						         <input type="radio" id="reviewBal2" name="reviewBal" value=2>
						         	<label for="reviewBal2" title="2점"></label>
						         <input type="radio" id="reviewBal1" name="reviewBal" value=1>
						         	<label for="reviewBal1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="errorMsg" id="rateErrorMsg">
							별점을 모두</br>
							입력해주세요.
						</div>
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="reviewContent"
						placeholder="내용을 입력해주세요."
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();"></textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 200자 이내로 입력해주세요.
					</div>
				</div>
				<input id="reviewAvgResult" type="text" name="reviewAvg" style="display: none;">
				<div id="buttonBox">
					<button type="submit" id="submitButton">등록 완료</button>
					<button type="button" id="goBackBtn" onclick="history.back();">취소</button>
				</div>
				<input type="hidden" name="perNo" value="${personalMemberDto.perNo}">
				<input type="hidden" name="comNo" value="${comNo}">
			</form>
		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>