<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review write</title>
<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
/* container */
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
	
	#titleInputBox, #starInputBox, #contentInputBox {
		background-color: #fff;
		padding: 20px 0px 0px 10px;
		border-radius: 10px;
		box-shadow: 0px 1px 4px 0px #ddd;
	}
	
	#titleInputBox {
		width: 910px;
		height: 50px;
		margin: 14px auto 0px auto;
	}
	
	#titleInput {
		float: left;
		margin-left: 30px;
		margin-right: 50px;
		width: 810px;
		height: 25px;
		border: 1px solid #d7dce5;
		border-radius: 6px;
	}
	#starInputBox {
		float: left;
		width: 120px;
		height: 520px;
		margin: 14px 14px 0px 30px;
	}
	
	#starInput {
		margin-top: 25px;
		width: 160px;
		height: 450px;
		float: left;
	}
	
	.starInputItem {
		float: left;
		width: 125px;
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
		color: #ddd;
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
		width: 765px;
		height: 520px;
		margin-top: 14px;
	}
	
	#contentInput {
		margin-left: 50px;
		width: 640px;
		height: 480px;
		border: 1px solid #d7dce5;
		border-radius: 6px;
		resize: none;
	}
	.errorMsg {
 		display: none;
		color: red;
		font-size: 14px;
	}
	#titleErrorMsg {
		margin-left: 30px;
	}
	#contentErrorMsg {
		margin-left: 50px;
	}
	#rateErrorMsg {
		text-align: center;
		width: 105px;
	    height: 40px;
	    float: left;
	}
	#buttonBox {
		float: left;
		margin: 20px 350px 0px 350px;
		width: 400px;
	}
	button {
		width: 90px;
	    height: 40px;
	    margin-left: 30px;
	    background-color: #bcd1fc;
	    border: none;
	    border-radius: 6px;
	    box-shadow: 0px 1px 4px 0px #ddd;
	    font-size: 16px;
	    font-weight: bold;
	    color: #475067;
	}
</style>

<script>
	
	function titleFocusFnc() {
		var titleObj = document.getElementById("titleInput");
		
			titleObj.setAttribute("style", "outline: 1px solid #94b5fc");
	}

	function titleBlurFnc() {
		var titleObj = document.getElementById("titleInput");
		var titleErrorMsgObj = document.getElementById("titleErrorMsg")
		
		if (titleObj.value == "" || titleObj.value.length < 20) {
			titleObj.setAttribute("style", "border: 1px solid #d7dce5");
			titleErrorMsgObj.setAttribute("style", "display: none")
		} else if (titleObj.value.length > 20){
			titleObj.setAttribute("style", "border: 2px solid red");
			titleErrorMsgObj.setAttribute("style", "display: block")
		}
	}
	
	function contentFocusFnc() {
		var contentObj = document.getElementById("contentInput");
		
			contentObj.setAttribute("style", "outline: 1px solid #94b5fc")
	}
	
	function contentBlurFnc() {
		var contentObj = document.getElementById("contentInput");
		var contentErrorMsgObj = document.getElementById("contentErrorMsg")
		
		if (contentObj.value == "" || contentObj.value.length < 200) {
			contentObj.setAttribute("style", "border: 1px solid #d7dce5");
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