<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>기업 회원가입</title>
<style type="text/css">
.infoRow {
	height: 50px;
	border: 1px solid #d6d6d6;
	margin: -1px;
}
</style>
</head>
<body>
	<div>
		<div style="width: 1080px; margin: auto;">
			<form action="./addCtr.do" method="post">
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="사업자 등록 번호"
						name="cCode" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>증복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="사업자 등록증 등록"
						name="cLicense" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>중복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="비밀번호"
						name="cPwd" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="회사명"
						name="cName" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="회사 주소"
						name="cAdd" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="업종"
						name="cType" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();"> <input
						type="text" placeholder="사업내용" name="cIntroduce" name="email"
						id="emailBlank" class="input" onblur="emailCheckFnc();"
						onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="인사담당자 이름"
						name="cInChargeName" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="인사담당자 연락처"
						name="cInChargePhoneNum" id="emailBlank"
						class="input" onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>중복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="인사담당자 이메일"
						name="cInChargeEmail" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>증복 확인</button>
				</div>
		</div>
		<input type="submit" value="가입하기">
			</form>
	</div>

</body>
</html>