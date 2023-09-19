<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Write</title>
<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	
/* 공통 */
	a {
	  text-decoration: none;
	  color: #292e41;
	}
    a:hover { color: #2d65f2;}
	    
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
		margin-left: 40px;
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
		width: 910px;
		height: 520px;
		margin: 14px auto 0px auto;
	}
	
	#contentInput {
		margin-left: 40px;
		width: 810px;
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
	
	function registerFnc() {
		if (confirm("이대로 등록하시겠습니까?")){
			alert("등록 완료되었습니다.");
		}else{
			return;
		}
	}
		
	function cancleFnc() {
		if (confirm("정말 취소하시겠습니까?")){ 
			location.href = "./list.do";
			alert("취소되었습니다.");
		}else{
			return;
		}
	}
</script>


</head>
<body>

	<jsp:include page="/WEB-INF/views/board/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="./list.do">전체 게시판</a>
				</div>
			</div>
		</div>

		<div id="content">
			<form action="./addCtr.do" method='post'>
				<input type='hidden' name='bWriter' value='${personalMemberDto.getpNickname()}'>
				<input type='hidden' name='pNo' value='${personalMemberDto.getpNo()}'>
				<div id="titleInputBox">
					<input name="bTitle" id="titleInput" type="text"
						placeholder="제목을 입력해주세요(20자 이내)"
						onfocus="titleFocusFnc();" onblur="titleBlurFnc();">
					<div class="errorMsg" id="titleErrorMsg">
						최대 20자 이내로 입력해주세요.
					</div>
				</div>

				<div id="contentInputBox">
					<textarea id="contentInput" name="bContent"
						placeholder="내용을 입력해주세요."
						onfocus="contentFocusFnc();"
						onblur="contentBlurFnc();"></textarea>
					<div class="errorMsg" id="contentErrorMsg">
						최대 200자 이내로 입력해주세요.
					</div>
				</div>
				<div id="buttonBox">
					<button type="submit" onclick="registerFnc()">등록</button>
					<button type="button" onclick="cancleFnc()">취소</button>
				</div>
			</form>
		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>