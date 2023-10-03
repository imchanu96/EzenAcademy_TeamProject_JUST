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
		var prefer = document.getElementById("prefer");
		
		for (var i = 0; i < preferList.length; i++) {
// 			alert(preferList[i].value);
			prefer.value += preferList[i].value;
			
			if (i != preferList.length - 1) {
				prefer.value += ",";
			}
		}
		formObj.submit();

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
			</div>
			

			<form action="./preferUpdateCtr.do" method="post" id="formObj">
				<div id="preferItemsBox">
			
				<div class="preferItems">
					<div class="preferName">키워드</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${preferList[0]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						가중치: <input type="text" class="preferList" value="${preferList[1]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">자격증</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${preferList[2]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();"> 개
					</div>
					<div class="weightingPercentage">
						가중치: <input type="text" class="preferList" value="${preferList[3]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">학력</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${preferList[4]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						가중치: <input type="text" class="preferList" value="${preferList[5]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
				</div>
				
				<div class="preferItems">
					<div class="preferName">경력</div>
					<div class="weightingSelected">
						<input type="text" class="preferList" value="${preferList[6]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
					<div class="weightingPercentage">
						가중치: <input type="text" class="preferList" value="${preferList[7]}"
								onfocus="inputFocusFnc();" onblur="inputBlurFnc();">
					</div>
				</div>
				
			</div>
				<input type="button" value="수정 완료"
					onclick="submitFnc();">
					<input type="text" id="prefer" name="prefer">
					<input type="text" id="comNo" name="comNo" value="${companyMemberDto.comNo}">
			</form>
		</div>

	</div>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>