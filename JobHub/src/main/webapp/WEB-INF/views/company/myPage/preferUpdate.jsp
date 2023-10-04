<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선호도 설정</title>
<link rel="stylesheet" href="/JobHub/resources/css/PreferUpdate.css" type="text/css">

<script type="text/javascript">
	function submitFnc() {
		var formObj = document.getElementById("formObj");
		var preferList = document.getElementsByClassName("preferList");
		var preferListRateList = document.getElementsByClassName("preferListRate");
		var prefer = document.getElementById("prefer");
		var rateSum = 0;

		for (var i = 0; i < preferList.length; i++) {
// 			alert(preferList[i].value);
			prefer.value += preferList[i].value += ",";
			
			prefer.value += preferListRateList[i].value;

			rateSum += Number(preferListRateList[i].value);
			if (i != preferList.length - 1) {
				prefer.value += ",";
			}
		}
		var warningMsgObj = document.getElementById("warningMsg");
// 		alert(warningMsgObj.style.display != "block");
		if (warningMsgObj.style.display != "block") {
			formObj.submit();
		}
	}
	
	function showCheckBoxModalFnc() {
		var checkBoxModal = document.getElementById("checkBoxModal");
		checkBoxModal.style.display = "block";
	}
	
	function inputFocusFnc() {
		var preferList = document.getElementsByClassName("preferList");
		
		for (var i = 0; i < preferList.length; i++) {
			if (preferList[i].focus) {
				preferList[i].style.outline = "2px solid #94b5fc";
	        } 
		}
	}
	
	function inputBlurFnc() {
		var preferList = document.getElementsByClassName("preferList");
		for (var i = 0; i < preferList.length; i++) {
			preferList[i].style.outline = "none";
		}
	}
	
	function clickRateFnc(radioObj, inputObj) {
		var inputTextObj = document.getElementById(inputObj);
		inputTextObj.value = radioObj.value;
		
		radioObj.addEventListener('mousemove', function(e) {
			var volumeList = document.getElementsByName("volume");
			var preferListRateList = document.getElementsByClassName("preferListRate");
			var vloumeSum = 0;
			for (var i = 0; i < volumeList.length; i++) {
				vloumeSum += Number(volumeList[i].value);
			}
			
// 			radioObj.removeEventListener("mousemove");
			var totalRateObj = document.getElementById("totalRate");
			totalRateObj.textContent = "총 적합도 : " + vloumeSum + "%";
			var warningMsgObj = document.getElementById("warningMsg");
			if (vloumeSum > 100 || vloumeSum < 100) {
				warningMsgObj.style.display = "block";
			}else {
				warningMsgObj.style.display = "none";
			}
		});
	}
	
	function addKeywordValueFnc() {
		var valueList = document.getElementsByClassName("keywordBtn");
		var preferValue = document.getElementsByClassName("preferList")[0];
		preferValue.value = "";
		var countKeyword = 0;
		for (var i = 0; i < valueList.length; i++) {
			if (valueList[i].checked) {
				if (preferValue.value != "") {
					preferValue.value += "-";
				}
				preferValue.value += valueList[i].value;
				countKeyword++;
			}
			if (countKeyword > 2) {
				alert("키워드는 2개까지만 설정 가능합니다.");
				for (var i = 0; i < valueList.length; i++) {
					preferValue.value = "";
					valueList[i].checked = false;
				}
				return;
			}
		}
		
		
	}
	function addLicenseValueFnc(obj) {
		var value = obj.value;
		var preferValue = document.getElementsByClassName("preferList")[1];
		preferValue.value = value;
	}
	function addEducationValueFnc(obj) {
		var value = obj.value;
		var preferValue = document.getElementsByClassName("preferList")[2];
		preferValue.value = value;
	}
	function addCareerValueFnc(obj) {
		var value = obj.value;
		var preferValue = document.getElementsByClassName("preferList")[3];
		preferValue.value = value;
	}
	function closeModalFnc() {
		var checkBoxModal = document.getElementById("checkBoxModal");
		checkBoxModal.style.display = "none";
	}
	
</script>
</head>
<body>
	<jsp:include page="../../Header.jsp" />
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">내 프로필</a>
				</div>
				<div class="smallMenuItem">
					<a href="">내가 쓴 글</a>
				</div>
				<div class="smallMenuItem">
					<a href="">이력서 관리</a>
				</div>
				<div class="smallMenuItem">
					<a href="./setPrefer.do">선호도 설정</a>
				</div>
			</div>
		</div>
		${companyPrefer.comPrefer}
		<div id="content">
			<c:set var="preferList"
				value="${fn:split(companyPrefer.comPrefer, ',')}" />
			
			<div class="infoTitle">
            내 선호도
            <span id="warningMsg" style="color:red; margin:auto; display: none;">적합도 합이 100%가 아닙니다.</span>
            <span id="totalRate" style="float: right; margin-right: 50px;">
               총 적합도 : ${fn:trim(preferList[1]) + fn:trim(preferList[3]) + fn:trim(preferList[5]) + fn:trim(preferList[7])}%
            </span>
         </div>
			

			<form action="./preferUpdateCtr.do" method="post" id="formObj">
				<div id="preferItemsBox">
			
				<div class="preferItems">
					<div class="preferName">키워드</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${fn:trim(preferList[0])}"
								onclick="showCheckBoxModalFnc();" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					 
					<div class="weightingPercentage">
						<div style="float: left;">
					        <label for="volume">가중치: </label>
					        <input type="range" id="volumeKeyword" name="volume"
					        	onclick="clickRateFnc(this, 'keywordValue');" min="0" max="100" step="5" value="${fn:trim(preferList[1])}">
					    </div>
						<input type="text" class="preferListRate" id="keywordValue" value="${fn:trim(preferList[1])}"
								readonly="readonly" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					%
				</div>
				
				<div class="preferItems">
					<div class="preferName">자격증</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${fn:trim(preferList[2])}"
								onclick="showCheckBoxModalFnc();" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						<div style="float: left;">
					        <label for="volume">가중치: </label>
					        <input type="range" id="volumeLicense" name="volume"
					        	onclick="clickRateFnc(this, 'licenseValue');" min="0" max="100" step="5" value="${fn:trim(preferList[3])}">
					    </div>
						<input type="text" class="preferListRate" id="licenseValue" value="${fn:trim(preferList[3])}"
								readonly="readonly" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					%
				</div>
				
				<div class="preferItems">
					<div class="preferName">학력</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${fn:trim(preferList[4])}"
								onclick="showCheckBoxModalFnc();" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						<div style="float: left;">
					        <label for="volume">가중치: </label>
					        <input type="range" id="volumeEducation" name="volume"
					        	onclick="clickRateFnc(this, 'educationValue');" min="0" max="100" step="5" value="${fn:trim(preferList[5])}">
					    </div>
						<input type="text" class="preferListRate" id="educationValue" value="${fn:trim(preferList[5])}"
							readonly="readonly" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					%
				</div>
				
				<div class="preferItems">
					<div class="preferName">경력</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${fn:trim(preferList[6])}"
								onclick="showCheckBoxModalFnc();" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						<div style="float: left;">
					        <label for="volume">가중치: </label>
					        <input type="range" id="volumeCareer" name="volume"
					        	onclick="clickRateFnc(this, 'careerValue');" min="0" max="100" step="5" value="${fn:trim(preferList[7])}">
					    </div>
						<input type="text" class="preferListRate" id="careerValue" value="${fn:trim(preferList[7])}"
								readonly="readonly" onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					%
				</div>
				
			</div>
			<div id="checkBoxModal">
				<div id="salModal">
					<div>
						<span style="width: 100px; margin: auto;">키워드</span>
					</div>
					<input class="keywordBtn" type="checkbox" value="급여" onclick="addKeywordValueFnc()">
					<input class="keywordBtn" type="checkbox" value="복지" onclick="addKeywordValueFnc()">
					<input class="keywordBtn" type="checkbox" value="근무환경" onclick="addKeywordValueFnc()">
					<input class="keywordBtn" type="checkbox" value="경영진" onclick="addKeywordValueFnc()">
					<input class="keywordBtn" type="checkbox" value="워라벨" onclick="addKeywordValueFnc()">
				</div>
				<div id="licenseModal">
					<div>
						<span style="width: 100px; margin: auto;">자격증 수</span>
					</div>
					<input class="licenseBtn" type="button" value="1개 이하" onclick="addLicenseValueFnc(this)">
					<input class="licenseBtn" type="button" value="1~3개" onclick="addLicenseValueFnc(this)">
					<input class="licenseBtn" type="button" value="3개 이상" onclick="addLicenseValueFnc(this)">
				</div>
				<div id="educationModal">
					<div>
						<span style="width: 100px; margin: auto;">최종 학력</span>
					</div>
					<input class="educationBtn" type="button" value="고졸" onclick="addEducationValueFnc(this)">
					<input class="educationBtn" type="button" value="초대졸" onclick="addEducationValueFnc(this)">
					<input class="educationBtn" type="button" value="대졸" onclick="addEducationValueFnc(this)">
				</div>
				<div id="careerModal">
					<div>
						<span style="width: 100px; margin: auto;">최종 학력</span>
					</div>
					<input class="careerBtn" type="button" value="3년차 이하" onclick="addCareerValueFnc(this)">
					<input class="careerBtn" type="button" value="3~5년차" onclick="addCareerValueFnc(this)">
					<input class="careerBtn" type="button" value="5년차 이상" onclick="addCareerValueFnc(this)">
				</div>
				<input type="button" value="확인" onclick="closeModalFnc();">
			</div>
				
				<input type="button" value="수정 완료" style="margin: 0 auto;"
					onclick="submitFnc();">
					<input type="hidden" id="prefer" name="prefer">
					<input type="hidden" id="comNo" name="comNo" value="${companyMemberDto.comNo}">
			</form>
		</div>

	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>