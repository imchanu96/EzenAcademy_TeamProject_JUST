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
			<form action="" method="post">
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="사업자 등록 번호"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>증복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="비밀번호"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="회사명"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="회사 주소"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="업종"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="담당자 이름"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="연락처"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>증복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="이메일"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
					<button>증복 확인</button>
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="설립"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<img src="#"> <input type="text" placeholder="홈페이지"
						name="email" id="emailBlank" class="input"
						onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
				<div id="companyCodeInput" class="infoRow">
					<input type="text" placeholder="회사소개 내용을 입력해주세요" name="email"
						id="emailBlank" class="input" onblur="emailCheckFnc();"
						onfocus="emailFocusFnc();">
				</div>


				<input type="submit" value="가입하기">
			</form>
		</div>
	</div>

</body>
</html>