<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
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
	   			idDivObj.setAttribute("style", "border: 2px solid #94b5fc");
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
	   			pwdDivObj.setAttribute("style", "border: 2px solid #94b5fc");
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
	   		var pwdRepeatBlankObj = document.getElementById("pwdRepeatBlank");
	   		
	   		if (pwdRepeatBlankObj.value != "") {
	   			pwdRepeatCheckFnc();
			}
	   		
		}
		
		function pwdRepeatCheckFnc() {
   			var pwdBlankObj = document.getElementById("pwdBlank");
   			var pwdRepeatBlankObj = document.getElementById("pwdRepeatBlank");
   			
   			var pwdRepeatInputObj = document.getElementById("pwdRepeatInput");
   			var repeatPwdErrorObj = document.getElementById("repeatPwdError");
   			
   			if (pwdBlankObj.value != pwdRepeatBlankObj.value) {
	   			pwdRepeatInputObj.setAttribute("style", "border: 2px solid #ff3f3f");
	   			repeatPwdErrorObj.style.display = "block";
			} else if (pwdBlankObj.value == pwdRepeatBlankObj.value) {
				pwdRepeatInputObj.setAttribute("style", "border: 1px solid #d6d6d6;");
				repeatPwdErrorObj.style.display = "none";
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
	   			nameDivObj.setAttribute("style", "border: 2px solid #94b5fc");
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
	   			birthdayDivObj.setAttribute("style", "border: 2px solid #94b5fc");
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
	   			phoneNumDivObj.setAttribute("style", "border: 2px solid #94b5fc");
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
<link rel="stylesheet" type="text/css" href="/JobHub/resources/css/Join.css">
</head>

<body>

	<div class="inner">

		<div class="header">
			<img style="width: 250px;"
				src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/1aa66c0e-7488-4a56-bc50-f915be889cf8">
		</div>

		<form action="./addCtr.do" method="post">
			<div id="accountInfo" class="boxList">
				<div id="idInput" class="infoRow">
					<input type="text" placeholder="아이디" name="perId" id="idBlank" class="input"
						onblur="idCheckFnc();" onfocus="idFocusFnc();">
				</div>

				<div id="pwdInput" class="infoRow">
					<input type="password" placeholder="비밀번호" name="perPwd" id="pwdBlank" 
						class="input" onblur="pwdCheckFnc();" onfocus="pwdFocusFnc();">
				</div>
				
				<div id="pwdRepeatInput" class="infoRow">
					<input type="password" placeholder="비밀번호 확인" id="pwdRepeatBlank" 
						class="input" onblur="pwdRepeatCheckFnc();">
				</div>
				
				<div id="nickNameInput" class="infoRow">
					<input type="text" placeholder="닉네임" name="perNickname"
						id="nickNameBlank" class="input" onblur="nickNameCheckFnc();"
						onfocus="nameFocusFnc();">
				</div>

				<div id="emailInput" class="infoRow">
					<input type="text" placeholder="이메일" name="perEmail" id="emailBlank"
						class="input" onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
			</div>

			<div id="noIdError" class="error">· 아이디: 필수 정보입니다.</div>
			<div id="invalidIdError" class="error">· 아이디: 5~20자의 영문 소문자,
				숫자와 특수기호(_),(-)만 사용 가능합니다.</div>
			<div id="noPwdError" class="error">· 비밀번호: 필수 정보입니다.</div>
			<div id="invalidPwdError" class="error">· 비밀번호: 8~16자의 영문
				대/소문자, 숫자, 특수문자를 사용해 주세요.</div>
			<div id="repeatPwdError" class="error">· 비밀번호: 비밀번호가 일치하지 않습니다.</div>
			<div id="invalidEmailError" class="error">· 이메일: 이메일 주소가 정확한지
				확인해 주세요.</div>

			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<input type="text" placeholder="이름" name="perName" id="nameBlank" class="input"
						onblur="nameCheckFnc();" onfocus="nameFocusFnc();">
				</div>

				<div id="phoneNumInput" class="infoRow">
					<input type="number" placeholder="휴대전화번호" name="perPhoneNum"
						id="phoneNumBlank" class="input" onblur="phoneNumCheckFnc();" 
						onfocus="phoneNumFocusFnc();">
				</div>
				
				<div id="companyInput" class="infoRow">
					<input type="text" placeholder="직장" name="perCom"
						id="companyBlank" class="input" onblur="companyCheckFnc();"
						onfocus="companyFocusFnc();">
				</div>
				
<!-- 				<div id="profileInput" class="infoRow"> -->
<!-- 					<input type="text" placeholder="사진" name="perProfile" -->
<!-- 						value="증명사진" id="nameBlank" class="input"> -->
<!-- 				</div> -->
<!-- 				<div id="birthdayInput" class="infoRow"> -->
<!-- 					<input type="date" placeholder='입사일을 "-"없이 입력해주세요 ' name="perHireDate" -->
<!-- 						id="birthdayBlank1" class="input" -->
<!-- 						onblur="birthdayCheckFnc();" onfocus="birthdayFocusFnc();"> -->
<!-- 				</div> -->
<!-- 				<div id="temporarilyInput" class="infoRow"> -->
<!-- 					<div> -->
<!-- 						<select > -->
<!-- 							<option value="">살았던 곳은?</option> -->
<!-- 							<option value="">고등학교 이름은?</option> -->
<!-- 							<option value="">집가고 싶다</option> -->
<!-- 							<option value="">ㅎ</option> -->
<!-- 							<option value="">몰라</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 					<input type="text" placeholder="질문에 대한 답" name="perTemporarily" id="temporarilyBlank" -->
<!-- 						class="input" onblur="emailCheckFnc();" onfocus="emailFocusFnc();"> -->
<!-- 				</div> -->
				
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
				<input type="submit" value="이메일인증" id="submitButton"
					onclick="submitCheckFnc(event)">
			</div>
		</form>

	</div>
	<!-- inner 종료 -->


</body>

</html>