<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Info</title>
<link rel="stylesheet" href="/JobHub/resources/css/CompanyDetail.css" type="text/css">
<link rel="stylesheet" href="/JobHub/resources/css/ReviewNav.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<div id="container">
		
		<jsp:include page="/WEB-INF/views/review/ReviewNav.jsp"/>
		
		<div id="content">
			<div id="companyInfoBox">
				<div id="modDateBox">
					<span>
						수정일: <fmt:formatDate value="${companyMemberDto.comModDate}"
								pattern="yyyy년 MM월 dd일 hh:mm" type="date"/>
					</span>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>기업명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>주소</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comAdd}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>업종</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comType}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>설립</span>
					</div>
					<div class="contentBox">
						<span>
							<fmt:formatDate value="${companyMemberDto.comEstDate}" pattern="yyyy년 MM월 dd일" type="date"/>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>매출액</span>
					</div>
					<div class="contentBox">
						<span>
							<span>${companyMemberDto.comRev}억 원</span>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>사원수</span>
					</div>
					<div class="contentBox">
						<span>
							<span>${companyMemberDto.comEmp} 명</span>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>
							<a href="http://${companyMemberDto.comHomepage}" target='_blank'>
								${companyMemberDto.comHomepage}
							</a>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>대표자명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comPrName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comInChargeName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자 이메일</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comInChargeEmail}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자 연락처</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comInChargePhoneNum}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>회사 소개</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.comIntroduce}</span>
					</div>
				</div>
			</div>
		</div>
		
	</div>	
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>