<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review write</title>

<link rel="stylesheet" href="/JobHub/resources/css/ReviewWrite.css" type="text/css">

<script>
	
	function titleFocusFnc() {
		var titleObj = document.getElementById("titleInput");
		
			titleObj.setAttribute("style", "outline: 2px solid #94b5fc");
	}

	function titleBlurFnc() {
		var titleObj = document.getElementById("titleInput");
		var titleErrorMsgObj = document.getElementById("titleErrorMsg")
		
		if (titleObj.value == "" || titleObj.value.length < 20) {
			titleObj.setAttribute("style", "border: 2px solid #d7dce5");
			titleErrorMsgObj.setAttribute("style", "display: none")
		} else if (titleObj.value.length > 20){
			titleObj.setAttribute("style", "border: 2px solid red");
			titleErrorMsgObj.setAttribute("style", "display: block")
		}
	}
	
	function contentFocusFnc() {
		var contentObj = document.getElementById("contentInput");
		
			contentObj.setAttribute("style", "outline: 2px solid #94b5fc")
	}
	
	function contentBlurFnc() {
		var contentObj = document.getElementById("contentInput");
		var contentErrorMsgObj = document.getElementById("contentErrorMsg")
		
		if (contentObj.value == "" || contentObj.value.length < 200) {
			contentObj.setAttribute("style", "border: 2px solid #d7dce5");
			contentErrorMsgObj.setAttribute("style", "display: none")
		} else {
			contentObj.setAttribute("style", "border: 2px solid red");
			contentErrorMsgObj.setAttribute("style", "display: block")
		}
	}
	
	function onSubmitFnc(event) {
		
		var salRateList = document.getElementsByName("rSal");
        var welRateList = document.getElementsByName("rWel");
        var envRateList = document.getElementsByName("rEnv");
        var bossRateList = document.getElementsByName("rBoss");
        var balRateList = document.getElementsByName("rBal");
        var starInputDivObj = document.getElementById("starInputBox");
        var starErrorMsgObj = document.getElementById("rateErrorMsg");
		
        // 별점 유효성검사
        var checkCnt = 0;

        for (var i = 0; i < salRateList.length; i++) {
            if (salRateList[i].checked) {
                checkCnt++;
            }
        }
        for (var i = 0; i < welRateList.length; i++) {
            if (welRateList[i].checked) {
                checkCnt++;
            }
        }
        for (var i = 0; i < envRateList.length; i++) {
            if (envRateList[i].checked) {
                checkCnt++;
            }
        }
        for (var i = 0; i < bossRateList.length; i++) {
            if (bossRateList[i].checked) {
                checkCnt++;
            }
        }
        for (var i = 0; i < balRateList.length; i++) {
            if (balRateList[i].checked) {
                checkCnt++;
            }
        }
        if (checkCnt < 5) {	// 별점이 빠짐없이 체크되었다면 checkCnt는 5가 되어야만 한다.
        	starInputDivObj.setAttribute("style", "border: 2px solid red");
        	starErrorMsgObj.setAttribute("style", "display: block");
            event.preventDefault(); // 별점이 5개 중 하나라도 선택되지 않았을 때 폼 제출 방지
        }
		
	    var rAvgResultInputObj = document.getElementById("rAvgResult");
	
	    var totalRateNum = 0;
	
	    for (var i = 0; i < salRateList.length; i++) {
	        if (salRateList[i].checked) {
	            totalRateNum += parseFloat(salRateList[i].value);
	        }
	    }
	
	    for (var i = 0; i < welRateList.length; i++) {
	        if (welRateList[i].checked) {
	            totalRateNum += parseFloat(welRateList[i].value);
	        }
	    }
	
	    for (var i = 0; i < envRateList.length; i++) {
	        if (envRateList[i].checked) {
	            totalRateNum += parseFloat(envRateList[i].value);
	        }
	    }
	
	    for (var i = 0; i < bossRateList.length; i++) {
	        if (bossRateList[i].checked) {
	            totalRateNum += parseFloat(bossRateList[i].value);
	        }
	    }
	
	    for (var i = 0; i < balRateList.length; i++) {
	        if (balRateList[i].checked) {
	            totalRateNum += parseFloat(balRateList[i].value);
	        }
	    }
	    rAvgResultInputObj.value = (totalRateNum/5);
	}
	
</script>


</head>
<body>

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/list.do">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/add.do">리뷰 작성</a>
				</div>
				<div class="smallMenuItem">
					<a href="http://localhost:9080/JobHub/review/companyInfo.do">기업 정보</a>
				</div>
			</div>
		</div>

		<div id="content">
			<form action="./addCtr.do" method='post' onsubmit="onSubmitFnc(event);">
				<div id="titleInputBox">
					<input name="rTitle" id="titleInput" type="text"
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
						         <input type="radio" id="rSal5" name="rSal" value=5>
						         	<label for="rSal5" title="5점"></label>
						         <input type="radio" id="rSal4" name="rSal" value=4>
						         	<label for="rSal4" title="4점"></label>
						         <input type="radio" id="rSal3" name="rSal" value=3>
						         	<label for="rSal3" title="3점"></label>
						         <input type="radio" id="rSal2" name="rSal" value=2>
						         	<label for="rSal2" title="2점"></label>
						         <input type="radio" id="rSal1" name="rSal" value=1>
						         	<label for="rSal1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>복지</span>
							<fieldset class="rate">
						         <input type="radio" id="rWel5" name="rWel" value=5>
						         	<label for="rWel5" title="5점"></label>
						         <input type="radio" id="rWel4" name="rWel" value=4>
						         	<label for="rWel4" title="4점"></label>
						         <input type="radio" id="rWel3" name="rWel" value=3>
						         	<label for="rWel3" title="3점"></label>
						         <input type="radio" id="rWel2" name="rWel" value=2>
						         	<label for="rWel2" title="2점"></label>
						         <input type="radio" id="rWel1" name="rWel" value=1>
						         	<label for="rWel1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>근무 환경</span>
							<fieldset class="rate">
						         <input type="radio" id="rEnv5" name="rEnv" value=5>
						         	<label for="rEnv5" title="5점"></label>
						         <input type="radio" id="rEnv4" name="rEnv" value=4>
						         	<label for="rEnv4" title="4점"></label>
						         <input type="radio" id="rEnv3" name="rEnv" value=3>
						         	<label for="rEnv3" title="3점"></label>
						         <input type="radio" id="rEnv2" name="rEnv" value=2>
						         	<label for="rEnv2" title="2점"></label>
						         <input type="radio" id="rEnv1" name="rEnv" value=1>
						         	<label for="rEnv1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>경영진</span>
							<fieldset class="rate">
						         <input type="radio" id="rBoss5" name="rBoss" value=5>
						         	<label for="rBoss5" title="5점"></label>
						         <input type="radio" id="rBoss4" name="rBoss" value=4>
						         	<label for="rBoss4" title="4점"></label>
						         <input type="radio" id="rBoss3" name="rBoss" value=3>
						         	<label for="rBoss3" title="3점"></label>
						         <input type="radio" id="rBoss2" name="rBoss" value=2>
						         	<label for="rBoss2" title="2점"></label>
						         <input type="radio" id="rBoss1" name="rBoss" value=1>
						         	<label for="rBoss1" title="1점"></label>
						     </fieldset>
						</div>
						<div class="starInputItem">
							<span>워라밸</span>
							<fieldset class="rate">
						         <input type="radio" id="rBal5" name="rBal" value=5>
						         	<label for="rBal5" title="5점"></label>
						         <input type="radio" id="rBal4" name="rBal" value=4>
						         	<label for="rBal4" title="4점"></label>
						         <input type="radio" id="rBal3" name="rBal" value=3>
						         	<label for="rBal3" title="3점"></label>
						         <input type="radio" id="rBal2" name="rBal" value=2>
						         	<label for="rBal2" title="2점"></label>
						         <input type="radio" id="rBal1" name="rBal" value=1>
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
					<textarea id="contentInput" name="rContent"
						placeholder="내용을 입력해주세요."
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();"></textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 200자 이내로 입력해주세요.
					</div>
				</div>
				<input id="rAvgResult" type="text" name="rAvg" style="display: none;">
				<div id="buttonBox">
					<button type="submit">등록</button>
					<button type="button">취소</button>
				</div>
			</form>
		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>