<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
<style type="text/css">
input {
	width: 400px;
	height: 40px;
	margin: 5px 0px 5px 0px;
	border: none;
}

form {
	margin-top: 50px;
}

label {
	font-size: 13px;
	line-height: 18px;
	color: #929294;
	text-align: center;
}

input[type=radio] {
	margin-left: 0px;
	width: 1px;
	height: 1px;
}

input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

textarea:focus, input:focus, select:focus {
	outline: none;
}

label>span {
	color: #09AA5C;
}

img {
	margin-left: 10px;
	margin-top: 6px;
}

.inner {
	width: 500px;
	margin: auto;
}

.header img {
	width: 30%;
	height: 30%;
}

.input {
	width: 300px;
	height: 40px;
	margin: 5px 0px 5px 0px;
	border: none;
}

.radioDiv {
	width: 48%;
	height: 86%;
}

.radioDiv:has(.radioBtn:checked) {
	border: 2px solid #09AA5C;
}

.radioLabel {
	display: inline-block;
	width: 86%;
	height: 90%;
	text-align: center;
	margin-top: 3px;
	margin-right: 2px;
}

.error {
	display: none;
}

.genderNationalitySelect label {
	width: 100px;
}

.boxList {
	width: 460px;
	margin: 10px;
	border-radius: 6px;
	border: 1px solid #d6d6d6;
}

.infoRow {
	height: 50px;
	border: 1px solid #d6d6d6;
	margin: -1px;
}

.radioBtn {
	opacity: 0;
}

.error {
	margin-left: 20px;
	font-size: 13px;
	line-height: 18px;
	color: #ff3f3f;
}

#idBlank {
	width: 300px;
}

#idInput, #nameInput {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

#temporarilyInput{
	height: 80px;
}

#emailInput, #phoneNumInput {
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
}

#telecomBlank {
	width: 400px;
	height: 30px;
	margin: 11px 0px 11px 0px;
	border: none;
}

#smallLabel {
	width: 100px;
	height: 20px;
}

#genderSelect, #nationalitySelect {
	width: 100px;
	border-radius: 6px;
	width: 200px;
	height: 30px;
	border: 1px solid #c6c6c6;
	margin-top: 10px;
}

#genderSelect {
	float: left;
	margin-left: 10px;
}

#nationalitySelect {
	float: right;
	margin-right: 10px;
}

#maleDiv, #koreanDiv {
	float: left;
}

#femaleDiv, #foreignerDiv {
	float: right;
}

#under14ErrorMsg {
	margin-left: 20px;
	font-size: 13px;
	line-height: 18px;
	color: #09AA5C;
}

#submitButton {
	margin: 0px 0px 20px 10px;
	position: fixed;
	bottom: 0;
	width: 460px;
	height: 52px;
	background-color: #09AA5C;
	color: #FFFFFF;
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 6px;
	font-size: 18px;
	font-weight: 500;
	line-height: 22px;
}

#agreeAll {
	width: 30px;
	height: 30px;
	margin: 10px;
}

#agreeLabel {
	font-size: 15px;
	font-weight: 600;
	line-height: 22px;
	letter-spacing: -.8px;
	color: #222;
	vertical-align: middle;
}

#agreementDiv, #authorizationDiv {
	height: 50px;
}

#authNumInput {
	margin-left: 40px;
}

#authButton {
	width: 95px;
	height: 33px;
	font-weight: bold;
	background-color: #ffffff;
	color: #09AA5C;
	border: 2px solid #09AA5C;
	border-radius: 4px;
}
</style>
<script type="text/javascript">
   		
		function submitCheckFnc(event) {
			// 에러 메시지 div들
			var errorDivList = document.getElementsByClassName("error");
			
			// 유효성 검사를 통과하지 못하면,
			// 빨간 테두리 및 오류 메시지 표시하는(display: block) 함수들
			idCheckFnc();
			pwdCheckFnc();
			emailCheckFnc();
			nameCheckFnc();
			birthdayCheckFnc();
			telecomCheckFnc();
			genderCheckFnc();
			phoneNumCheckFnc();
			agreeCheckFnc();
			authNumCheckFnc();
			
			for (var i = 0; i < errorDivList.length; i++) {
				var displayStyleCheck = errorDivList[i].getAttribute("style");
				
				if (displayStyleCheck == "display: block") {
					event.preventDefault();
				}
			}
		}
	   	
	   	function idFocusFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var idDivObj = document.getElementById("idInput");
	   		
	   		// 공백 검사
	   		if (idDivObj.value != "" &&			// 문제가 생긴 후 수정할 땐 초록으로 바뀌지 않음
	   			idDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			idDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
	   	
	   	function idCheckFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var noIdErrorObj = document.getElementById("noIdError");
	   		var idDivObj = document.getElementById("idInput");
	   		var invalidIdErrorObj = document.getElementById("invalidIdError");
	   		var idPattern = /^[a-z0-9_-]{5,20}$/;
// 	   		^: 문자열의 시작을 나타냅니다.
// 	   		[a-z0-9_-]: 소문자 알파벳, 숫자, 밑줄(_), 또는 대시(-) 중 하나와 일치해야 합니다.
// 				이 부분은 입력된 문자열이 이 문자들 중 하나와 일치하는지를 검사합니다.
// 	   		{5,20}: 이전 패턴 [a-z0-9_-]가 최소 5번부터 최대 20번까지 연속으로 나타나야 합니다.
// 				즉, 문자열의 길이는 5에서 20 사이여야 합니다.
// 	   		$: 문자열의 끝을 나타냅니다.
			
			// 공백 검사
			if (idInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: block");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
			} else if (!idPattern.test(idInputObj.value)) {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: block");
				idDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		} 
	   	
		function pwdFocusFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		// 공백 검사
	   		if (pwdDivObj.value != "" &&
	   			pwdDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			pwdDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
	   	
		function pwdCheckFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var noPwdErrorObj = document.getElementById("noPwdError");
	   		var invalidPwdErrorObj = document.getElementById("invalidPwdError");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		var checkNum = pwdInputObj.value.search(/[0-9]/g);
	     	var checkUpperEng = pwdInputObj.value.search(/[A-Z]/g);
	     	var checkLowerEng = pwdInputObj.value.search(/[a-z]/g);
	   		
	     	// 공백 검사
	   		if (pwdInputObj.value == "") {
				noPwdErrorObj.setAttribute("style", "display: block");
				invalidPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 길이 검사
			} else if (pwdInputObj.value.length < 8 || pwdInputObj.value.length > 20) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
	   		} else if ((checkNum < 0 && checkUpperEng < 0) ||
	   			(checkUpperEng < 0 && checkLowerEng < 0) ||
	   			(checkLowerEng < 0 && checkNum < 0)) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
	   		} else {
				noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function emailCheckFnc() {
	   		
	   		var emailInputObj = document.getElementById("emailBlank");
	   		var invalidEmailErrorObj = document.getElementById("invalidEmailError");
	   		var emailDivObj = document.getElementById("emailInput");
	   		
	   		var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣.-]+\.[a-zA-Z]{2,}$/;
	   		
	   		// 패턴 검사
	   		if (!emailPattern.test(emailInputObj.value) && emailInputObj.value != "") {
				invalidEmailErrorObj.setAttribute("style", "display: block");
				emailDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				invalidEmailErrorObj.setAttribute("style", "display: none");
				emailDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function nameFocusFnc() {
	   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		// 공백 검사
	   		if (nameDivObj.value != "" &&
	   			nameDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			nameDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function nameCheckFnc() {
			   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var noNameErrorObj = document.getElementById("noNameError");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		// 공백 검사
	   		if (nameInputObj.value == "") {
				noNameErrorObj.setAttribute("style", "display: block");
				nameDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noNameErrorObj.setAttribute("style", "display: none");
				nameDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function birthdayFocusFnc() {
	   		
	   		var birthdayInputObj = document.getElementById("birthdayBlank");
	   		var birthdayDivObj = document.getElementById("birthdayInput");
	   		
	   		// 공백 검사
	   		if (birthdayDivObj.value != "" &&
	   			birthdayDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			birthdayDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
				
		function birthdayCheckFnc() {
				
			var birthdayInputObj = document.getElementById("birthdayBlank");
			var noBirthdayErrorObj = document.getElementById("noBirthdayError");
			var birthdayDivObj = document.getElementById("birthdayInput");
			var invalidBirthdayErrorObj = document.getElementById("invalidBirthdayError");
			var under14BirthdayErrorObj = document.getElementById("under14BirthdayError");
			var nameDivObj = document.getElementById("nameInput");
			
			var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);
		    var today = (year + month + day);
			
		    // 공백 검사
			if (birthdayInputObj.value == "") {
				noBirthdayErrorObj.setAttribute("style", "display: block");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 연, 월, 일 검사
			} else if (
				parseInt(birthdayInputObj.value) < 19000101 ||
				parseInt(birthdayInputObj.value) > today ||
				parseInt((birthdayInputObj.value).substring(4, 6)) < 01 ||
				parseInt((birthdayInputObj.value).substring(4, 6)) > 12 ||
				parseInt(birthdayInputObj.value.slice(-2)) < 01 ||
				parseInt(birthdayInputObj.value.slice(-2)) > 31
			) {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: block");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 만 나이 검사
			} else if (
				today-(140000) < parseInt(birthdayInputObj.value) &&
				parseInt(birthdayInputObj.value) <= today
			) {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: block");
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function telecomCheckFnc() {
			
			var noTelecomErrorDiv = document.getElementById("noTelecomError");
			var telecomSelectObj = document.getElementById("telecomBlank");
			var telecomDivObj = document.getElementById("telecomInput");
		    var selectedValue = telecomSelectObj.options[telecomSelectObj.selectedIndex].value;
			
		    // 공백(미선택) 검사
			if (selectedValue == "선택 안함") {
				noTelecomErrorDiv.setAttribute("style", "display: block");
				telecomDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noTelecomErrorDiv.setAttribute("style", "display: none");
				telecomDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function genderCheckFnc() {
			var radioList = document.getElementsByClassName("radioBtn");
			var genderDivObj = document.getElementById("genderNationalitySelect");
			var noGenderErrorDiv = document.getElementById("noGenderError");
			
			// 공백(미선택) 검사
			if (radioList[0].checked == false && radioList[1].checked == false) {
				noGenderErrorDiv.setAttribute("style", "display: block");
				genderDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noGenderErrorDiv.setAttribute("style", "display: none");
				genderDivObj.setAttribute("style", "border: 2px solid #d6d6d6");
			}
		}
		
		function phoneNumFocusFnc() {
	   		
	   		var phoneNumInputObj = document.getElementById("phoneNumBlank");
	   		var phoneNumDivObj = document.getElementById("phoneNumInput");
	   		
	   		// 공백 검사
	   		if (phoneNumDivObj.value != "" &&
	   			phoneNumDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			phoneNumDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function phoneNumCheckFnc() {
				
			var phoneNumInputObj = document.getElementById("phoneNumBlank");
			var noPhoneNumErrorObj = document.getElementById("noPhoneNumError");
			var invalidPhoneNumErrorObj = document.getElementById("invalidPhoneNumError");
			var phoneNumDivObj = document.getElementById("phoneNumInput");
			//			전화번호 패턴:		010~019		3~4글자		4글자
			var phoneNumPattern = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
			
			// 공백 검사
			if (phoneNumInputObj.value == "") {
				noPhoneNumErrorObj.setAttribute("style", "display: block");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
			} else if (!phoneNumPattern.test(phoneNumInputObj.value)) {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: block");
				phoneNumDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function agreeCheckFnc() {
			
			var agreeCheckObj = document.getElementById("agreeAll");
			var noAgreeErrorDiv = document.getElementById("noAgreeError");
			var agreementDivObj= document.getElementById("agreementDiv");
			
			// 공백(약관 체크) 검사
			if (agreeCheckObj.checked == false) {
				noAgreeErrorDiv.setAttribute("style", "display: block");
				agreementDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noAgreeErrorDiv.setAttribute("style", "display: none");
				agreementDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		var authNum = "";
		
		function authorizationFnc() {
			
			authNum = (parseInt(Math.random()*999999) + 1);
			alert(authNum);
		}
		
		function authNumCheckFnc() {
			
			var authNumInputObj = document.getElementById("authNumInput").value;
			var authDivObj = document.getElementById("authorizationDiv");
			
			// 공백 검사
			if (authNumInputObj == "") {
			wrongAuthNumErrorDiv.setAttribute("style", "display: block");
			authDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 인증번호 불일치 검사
			} else if (authNumInputObj != authNum) {
				wrongAuthNumErrorDiv.setAttribute("style", "display: block");
				authDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				wrongAuthNumErrorDiv.setAttribute("style", "display: none");
				authDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
   	
	</script>
<link rel="stylesheet" type="text/css" href="../css/JoinMyInfo.css">
</head>

<body>

	<div class="inner">

		<div class="header">
			<a href="./login.do"> <img style="width:60px;"
				src="https://github.com/noohij/
								Ezen_TeamProject_JUST/assets/54897384/
								ee8218f0-b067-48da-8bf7-d31bef40f1cf">
			</a>
		</div>
		<!-- header 종료 -->

		<form action="./addCtr.do" method="post">
			<div id="accountInfo" class="boxList">
				<div id="idInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG"> <input type="text"
						placeholder="아이디" name="pId" id="idBlank" class="input"
						onblur="idCheckFnc();" onfocus="idFocusFnc();">
				</div>

				<div id="pwdInput" class="infoRow">
					<img src="../images/joinIcon_pwd.JPG"> <input type="password"
						placeholder="비밀번호(8~20글자)" name="pPwd" id="pwdBlank" class="input"
						onblur="pwdCheckFnc();" onfocus="pwdFocusFnc();">
				</div>

				<div id="emailInput" class="infoRow">
					<img src="../images/joinIcon_email.JPG"> <input type="text"
						placeholder="이메일" name="pEmail" id="emailBlank"
						class="input" onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
			</div>

			<div id="noIdError" class="error">· 아이디: 필수 정보입니다.</div>
			<div id="invalidIdError" class="error">· 아이디: 5~20자의 영문 소문자,
				숫자와 특수기호(_),(-)만 사용 가능합니다.</div>
			<div id="noPwdError" class="error">· 비밀번호: 필수 정보입니다.</div>
			<div id="invalidPwdError" class="error">· 비밀번호: 8~16자의 영문
				대/소문자, 숫자, 특수문자를 사용해 주세요.</div>
			<div id="invalidEmailError" class="error">· 이메일: 이메일 주소가 정확한지
				확인해 주세요.</div>

			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG"> <input type="text"
						placeholder="이름" name="pName" id="nameBlank" class="input"
						onblur="nameCheckFnc();" onfocus="nameFocusFnc();">
				</div>

				<div id="phoneNumInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG"> <input
						type="number" placeholder="휴대전화번호" name="pPhoneNum"
						id="phoneNumBlank" class="input" onblur="phoneNumCheckFnc();"
						onfocus="phoneNumFocusFnc();">
				</div>
				<div id="conpanyInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG"> <input
						type="text" placeholder="현재 다니고 계시는 직장을 입력해주세요" name="pCom"
						id="nameBlank" class="input" onblur="nameCheckFnc();"
						onfocus="nameFocusFnc();">
				</div>
				<div id="nickNameInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG"> <input
						type="text" placeholder="사용하실 닉네임을 입력해주세요" name="pNickname"
						id="nameBlank" class="input" onblur="nameCheckFnc();"
						onfocus="nameFocusFnc();">
				</div>
				<div id="profileInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG"> <input
						type="text" placeholder="사진을 넣어주세요" name="pProfile"
						value="https://www.google.com/url?sa=i&url=https%3A%2F%2Fnamu.wiki%2Fw%2F%25EB%2584%2588%25EA%25B5%25B4%25EB%25A7%25A8&psig=AOvVaw0cPKvY-7v12HpbSAXqH-9i&ust=1694758663888000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCOj4iJO6qYEDFQAAAAAdAAAAABAD"
						id="nameBlank" class="input">
				</div>
				<div id="birthdayInput" class="infoRow">
					<img src="../images/joinIcon_birthday.JPG">
					<input type="date" placeholder='입사일을 "-"없이 입력해주세요 ' name="pHireDate"
						id="birthdayBlank1" class="input"
						onblur="birthdayCheckFnc();" onfocus="birthdayFocusFnc();">
				</div>
				<div id="temporarilyInput" class="infoRow">
					<div>
						<select >
							<option value="">살았던 곳은?</option>
							<option value="">고등학교 이름은?</option>
							<option value="">집가고 싶다</option>
							<option value="">ㅎ</option>
							<option value="">몰라</option>
						</select>
					</div>
					<img src="../images/joinIcon_email.JPG"> <input type="text"
						placeholder="질문에 대한 답" name="pTemporarily" id="temporarilyBlank"
						class="input" onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				
			</div>

			<div id="noNameError" class="error">· 이름: 필수 정보입니다.</div>
			<div id="noBirthdayError" class="error">· 생년월일: 필수 정보입니다.</div>
			<div id="invalidBirthdayError" class="error">· 생년월일: 생년월일이 정확한지
				확인해 주세요.</div>
			<div id="noPhoneNumError" class="error">· 휴대전화번호: 필수 정보입니다.</div>
			<div id="invalidPhoneNumError" class="error">· 휴대전화번호: 휴대전화번호가
				정확한지 확인해 주세요.</div>


			<div id="wrongAuthNumErrorDiv" class="error">인증번호가 일치하지 않습니다.</div>

			<div>
				<input type="submit" value="다음" id="submitButton"
					onclick="submitCheckFnc(event)">
			</div>
		</form>

	</div>
	<!-- inner 종료 -->


</body>

</html>