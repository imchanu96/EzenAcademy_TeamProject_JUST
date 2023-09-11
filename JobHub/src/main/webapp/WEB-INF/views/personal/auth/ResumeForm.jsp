<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서</title>
<style type="text/css">
tr td {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border-collapse: collapse;
}

#resumeBack {
	border: 1px solid black;
	background-color: #fff;
	width: auto;
	height: auto;
}

.resumeHeader {
	font-size: 50px;
	text-align: center;
}

#basicInfoTable {
	border: 1px solid;
	margin: auto;
	text-align: center;
	width: 800px;
	height: 160px;
}

.eduInfoTable {
	border: 1px solid;
	text-align: center;
	margin: auto;
	width: 800px;
	height: 160px;
}

.CareerPeriodTable {
	border: 1px solid;
	text-align: center;
	margin: auto;
	width: 800px;
	height: 160px;
}

#licenseInfo {
	border: 1px solid;
}

.LicenseInfoTable {
	border: 1px solid;
	text-align: center;
	margin: auto;
	width: 800px;
	height: 160px;
}
</style>
</head>
<body>
	이력서
	<form action="">
		<div id="resumeBack">
			<div id="tableDiv">
				개인정보
				<table id="basicInfoTable">

					<tr>
						<td colspan="4" rowspan="4"
							style="background-color: white; width: 5px; height: 160px;">
						</td>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							성명</td>
						<td colspan='3' style="background-color: white;"></td>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							생년월일</td>
						<td colspan='3' style="background-color: white;"></td>
					</tr>

					<tr>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							이메일</td>
						<td colspan='3' style="background-color: white;">1</td>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							연락처</td>
						<td colspan='3' style="background-color: white;">1</td>
					</tr>

					<tr>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							주소</td>
						<td colspan='3' style="background-color: white;">1</td>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							결혼 여부</td>
						<td colspan='3' style="background-color: white;">1</td>
					</tr>

					<tr>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							성별</td>
						<td colspan='3' style="background-color: white;">1</td>
						<td style="background-color: #f3f3f3; width: 100px; height: 30px;">
							병역 여부</td>
						<td colspan='3' style="background-color: white;">1</td>
					</tr>

				</table>
				<br>
			</div>
			<!-- tableDiv -->

			<div id="educationInfo">
				학력 사항
				<div class="educationInfo">
					<table class="eduInfoTable">
						<tr>
							<td style="background-color: #f3f3f3;">입학년도</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">
								졸업년도</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">
								학교명</td>
							<td colspan='3'
								style="background-color: #f3f3f3; width: 80px; height: 30px;">
								전공</td>
							<td colspan='3'
								style="background-color: #f3f3f3; width: 80px; height: 30px;">
								소재지</td>
							<td colspan='3'
								style="background-color: #f3f3f3; width: 80px; height: 30px;">
								학점(등급)/만점</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">
								졸업 구분</td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td colspan='3'
								style="background-color: #fff; width: 80px; height: 30px;">
							</td>
							<td style="background-color: #fff; width: 80px; height: 30px;">
							</td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<!-- educationInfo -->

			<div id="CareerPeriod">
				경력 사항
				<div class="CareerPeriod">
					<table class="CareerPeriodTable">
						<tr>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">입사년도</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">퇴사년도</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">회사명</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">직위</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">소재지</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">담당업무</td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
						</tr>
					</table>
				</div>

			</div>
			<br>
			<!-- eduPeriod -->

			<div id="LicenseInfo">
				자격증
				<div class="LicenseInfo">
					<table class="LicenseInfoTable">
						<tr>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">자격증
								취득일</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">자격증명</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">발급
								기관</td>
							<td style="background-color: #f3f3f3; width: 80px; height: 30px;">점수/등급</td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
						</tr>

						<tr>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
							<td style="background-color: #fff; width: 80px; height: 30px;"></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<!-- LicenseInfo -->

			<input type="submit" value="작성 완료"> <input type="reset"
				value="취소">
		</div>
	</form>
	<!-- resumeBack -->
</body>
</html>