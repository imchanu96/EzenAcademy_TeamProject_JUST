<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 설립 변경</title>

<link rel="stylesheet" href="/JobHub/resources/css/CompanyMyPage.css" type="text/css">
</head>
<body>
	<jsp:include page="../../Header.jsp"/>
	
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
					<a href="">선호도 설정</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			
			
			<div id="companyInfoBoxUpdate">
				<div class="companyInfoItem">
					<div class="infoTitleUpdate">
						회사 정보
					</div>
					<form action="cEstDateUpdateCtr.do" method="post">
						<div class="companyInfoItemTitleUpdate">
							설립
						</div>
						
						<div class="companyInfoItemContentUpdate">
							<input type="date" name="cEstDate" 
								placeholder="${sessionScope.companymemberDto.cEstDate}"
								pattern="yyyy-MM-dd">
						</div>
						<div class="button">
							<input type="submit" value="변경하기">
						</div>
					</form>
				</div>
					
			</div>
		</div>	
				
				
	</div>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>	
</body>
</html>