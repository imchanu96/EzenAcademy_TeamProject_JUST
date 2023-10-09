<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 회원가입</title>
<link rel="stylesheet" type="text/css" href="/JobHub/resources/css/Join.css">
<script type="text/javascript">

	function joinSuccess() {
		var joinBtn = document.getElementById("submitButton");
		
		joinBtn.disabled = true;
		joinBtn.value = '전송중';
		
		alert("메일 전송이 완료되었습니다. \n메일 확인 후 인증버튼을 눌러주세요!");
		
		joinBtn.form.submit();
	}

</script>
</head>
<body>

	<div class="inner">

		<div class="header">
			<a href="http://localhost:9080/JobHub/home.do">
				<img style="width: 250px;"
					src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/1aa66c0e-7488-4a56-bc50-f915be889cf8">
			</a>
		</div>

		<form action="./addCtr.do" method="post">
			<div id="companyInfo" class="boxList">
			
				<div id="companyCodeInput" class="infoRow">
					<input type="text" placeholder="사업자등록번호"
						name="comCode"
						id="companyCodeBlank" class="input"
						onblur="companyCodeCheckFnc();"
						onfocus="companyCodeFocusFnc();">
				</div>
				
				<div id="companyPwdInput" class="infoRow">
					<input type="password" placeholder="비밀번호"
						name="comPwd"
						id="companyPwdBlank" class="input"
						onblur="companyPwdCheckFnc();"
						onfocus="companyPwdFocusFnc();">
				</div>
				
				<div id="pwdRepeatInput" class="infoRow">
					<input type="password" placeholder="비밀번호 확인"
						id="pwdRepeatBlank" 
						class="input"
						onblur="pwdRepeatCheckFnc();">
				</div>
				
				<div id="companyNameInput" class="infoRow">
					<input type="text" placeholder="회사명"
						name="comName"
						id="companyNameBlank" class="input"
						onblur="companyNameCheckFnc();"
						onfocus="companyNameFocusFnc();">
				</div>
				
				<div id="companyAddressInput" class="infoRow">
					<input type="text" placeholder="회사 주소"
						name="comAdd"
						id="emailBlank" class="input"
						onblur="companyAddressCheckFnc();"
						onfocus="companyAddressFocusFnc();">
				</div>
				
				<div id="companyTypeInput" class="infoRow">
					<input type="text" placeholder="업종"
						name="comType"
						id="companyTypeBlank" class="input"
						onblur="companyTypeCheckFnc();"
						onfocus="companyTypeFocusFnc();">
				</div>
				<div id="companyIntroduceInput" class="infoRow">
						<input type="text" placeholder="회사 소개"
						name="comIntroduce"
						id="companyIntroduceBlank" class="input"
						onblur="companyIntroduceCheckFnc();"
						onfocus="companyIntroduceFocusFnc();">
				</div>
			</div>
			
			<div id="inChargeInfo" class="boxList">
				<div id="inChargeNameInput" class="infoRow">
					<input type="text" placeholder="인사담당자 이름"
						name="comInChargeName"
						id="inChargeNameBlank" class="input"
						onblur="inChargeNameCheckFnc();"
						onfocus="inChargeNameFocusFnc();">
				</div>
				
				<div id="inChargePhoneNumInput" class="infoRow">
					<input type="text" placeholder="인사담당자 연락처"
						name="comInChargePhoneNum"
						id="InChargePhoneNumBlank" class="input"
						onblur="InChargePhoneNumCheckFnc();"
						onfocus="InChargePhoneNumFocusFnc();">
				</div>
				<div id="inChargeEmailInput" class="infoRow">
					<input type="text" placeholder="인사담당자 이메일"
						name="comInChargeEmail" id="emailBlank" class="input"
						onblur="inChargeEmailCheckFnc();"
						onfocus="inChargeEmailFocusFnc();">
				</div>
			</div>
			<input type="submit" id="submitButton" value="이메일인증" onclick="joinSuccess();">
		</form>
	</div>
	
</body>
</html>