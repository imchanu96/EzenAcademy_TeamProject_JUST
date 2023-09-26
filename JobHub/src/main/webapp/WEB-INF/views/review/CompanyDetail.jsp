<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Info</title>
<link rel="stylesheet" href="/JobHub/resources/css/CompanyDetail.css" type="text/css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/review/Header.jsp"/>
	
	<div id="container">
		<div id="navigation">
			<div id="smallMenuBox">
				<div class="smallMenuItem">
					<a href="">리뷰 조회</a>
				</div>
				<div class="smallMenuItem">
					<a href="">리뷰 작성</a>
				</div>
				<div class="smallMenuItem">
					<a href="">기업 정보</a>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div id="companyInfoBox">
				<div id="modDateBox">
					<span>
						수정일: <fmt:formatDate value="${companyMemberDto.cModDate}"
								pattern="yyyy년 MM월 dd일 hh:mm" type="date"/>
					</span>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>기업명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>주소</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cAdd}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>업종</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cType}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>설립</span>
					</div>
					<div class="contentBox">
						<span>
							<fmt:formatDate value="${companyMemberDto.cEstDate}" pattern="yyyy년 MM월 dd일" type="date"/>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>매출액</span>
					</div>
					<div class="contentBox">
						<span>
							<span>${companyMemberDto.cRev}</span>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>사원수</span>
					</div>
					<div class="contentBox">
						<span>
							<span>${companyMemberDto.cEmp}</span>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>홈페이지</span>
					</div>
					<div class="contentBox">
						<span>
							<a href="http://${companyMemberDto.cHomepage}" target='_blank'>
								${companyMemberDto.cHomepage}
							</a>
						</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>대표자명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cPrName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자명</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cInChargeName}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자 이메일</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cInChargeEmail}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>담당자 연락처</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cInChargePhoneNum}</span>
					</div>
				</div>
				<div class="companyInfoRow">
					<div class="titleBox">
						<span>회사 소개</span>
					</div>
					<div class="contentBox">
						<span>${companyMemberDto.cIntroduce}</span>
					</div>
				</div>
			</div>
		</div>
		
	</div>	
	
	<div id="tailBox">
		<div id="tailContent">
			<div id="teamName">
				TEAM JUST
			</div>
		</div>
	</div>
	
</body>
</html>