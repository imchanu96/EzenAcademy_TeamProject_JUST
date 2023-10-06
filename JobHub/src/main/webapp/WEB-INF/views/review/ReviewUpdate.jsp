<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobHub : 리뷰 수정</title>
<script type="text/javascript" src="/JobHub/resources/js/ReviewUpdate.js"></script>
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewWrite.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
	
		<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>

		<div id="content">
			<form action="./updateCtr.do" method='post' onsubmit="onSubmitFnc(event);">
				<div id="titleInputBox">
					<input name="reviewTitle" id="titleInput" type="text"
						placeholder="제목을 입력해주세요(20자 이내)"
						onfocus="titleFocusFnc();" onblur="titleBlurFnc();" value="${reviewDto.reviewTitle}">
					<div class="errorMsg" id="titleErrorMsg">
						최대 20자 이내로 입력해주세요.
					</div>
				</div>
				<div id="starInputBox">
					<div id="starInput">
						<div class="starInputItem">
							<span>급여</span>
						    <fieldset class="rate">
						         <input type="radio" id="rSal5" name="reviewSal" value=5>
						         	<label for="rSal5" title="5점"></label>
						         <input type="radio" id="rSal4" name="reviewSal" value=4>
						         	<label for="rSal4" title="4점"></label>
						         <input type="radio" id="rSal3" name="reviewSal" value=3>
						         	<label for="rSal3" title="3점"></label>
						         <input type="radio" id="rSal2" name="reviewSal" value=2>
						         	<label for="rSal2" title="2점"></label>
						         <input type="radio" id="rSal1" name="reviewSal" value=1>
						         	<label for="rSal1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>복지</span>
							<fieldset class="rate">
						         <input type="radio" id="rWel5" name="reviewWel" value=5>
						         	<label for="rWel5" title="5점"></label>
						         <input type="radio" id="rWel4" name="reviewWel" value=4>
						         	<label for="rWel4" title="4점"></label>
						         <input type="radio" id="rWel3" name="reviewWel" value=3>
						         	<label for="rWel3" title="3점"></label>
						         <input type="radio" id="rWel2" name="reviewWel" value=2>
						         	<label for="rWel2" title="2점"></label>
						         <input type="radio" id="rWel1" name="reviewWel" value=1>
						         	<label for="rWel1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>근무 환경</span>
							<fieldset class="rate">
						         <input type="radio" id="rEnv5" name="reviewEnv" value=5>
						         	<label for="rEnv5" title="5점"></label>
						         <input type="radio" id="rEnv4" name="reviewEnv" value=4>
						         	<label for="rEnv4" title="4점"></label>
						         <input type="radio" id="rEnv3" name="reviewEnv" value=3>
						         	<label for="rEnv3" title="3점"></label>
						         <input type="radio" id="rEnv2" name="reviewEnv" value=2>
						         	<label for="rEnv2" title="2점"></label>
						         <input type="radio" id="rEnv1" name="reviewEnv" value=1>
						         	<label for="rEnv1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>경영진</span>
							<fieldset class="rate">
						         <input type="radio" id="rBoss5" name="reviewBoss" value=5>
						         	<label for="rBoss5" title="5점"></label>
						         <input type="radio" id="rBoss4" name="reviewBoss" value=4>
						         	<label for="rBoss4" title="4점"></label>
						         <input type="radio" id="rBoss3" name="reviewBoss" value=3>
						         	<label for="rBoss3" title="3점"></label>
						         <input type="radio" id="rBoss2" name="reviewBoss" value=2>
						         	<label for="rBoss2" title="2점"></label>
						         <input type="radio" id="rBoss1" name="reviewBoss" value=1>
						         	<label for="rBoss1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>워라벨</span>
							<fieldset class="rate">
						         <input type="radio" id="rBal5" name="reviewBal" value=5>
						         	<label for="rBal5" title="5점"></label>
						         <input type="radio" id="rBal4" name="reviewBal" value=4>
						         	<label for="rBal4" title="4점"></label>
						         <input type="radio" id="rBal3" name="reviewBal" value=3>
						         	<label for="rBal3" title="3점"></label>
						         <input type="radio" id="rBal2" name="reviewBal" value=2>
						         	<label for="rBal2" title="2점"></label>
						         <input type="radio" id="rBal1" name="reviewBal" value=1>
						         	<label for="rBal1" title="1점"></label>
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
							onblur="contentBlurFnc();">${reviewDto.reviewContent}</textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 200자 이내로 입력해주세요.
					</div>
				</div>
				<input id="rAvgResult" type="text" name="reviewAvg" style="display: none;">
				<div id="buttonBox">
					<button type="submit" id="submitButton">수정 완료</button>
					<button type="button" id="goBackBtn">취소</button>
				</div>
				<input type="hidden" name="perNo" value="${personalMemberDto.perNo}">
				<input type="hidden" name="reviewNo" value="${reviewDto.reviewNo}">
				<input type="hidden" name="comNo" value="${reviewDto.comNo}">
			</form>
		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>