<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JobHub : 게시판 목록</title>
<style type="text/css">
	#tableDiv{
		width: 70%;
		float:left";
	}
	table{
		border: 1px solid black;
		border-collapse: collapse;
		font-size: 30px;
	}
	th{
		background: gray;
		border: 1px solid black;
	}
	td{
		border: 1px solid black;
		
	}
</style>

<script type="text/javascript">
	
</script>
</head>
<body>	
	
<%-- 	<jsp:include page="../Header.jsp"></jsp:include> --%>
	<div style="margin-top: 100px;">
	
	</div>
	<jsp:include page="./util/SideBar.jsp"></jsp:include>
	<div id="tableDiv">
		<table>
			<tr>
				<th style="width: 70px;">번호</th>
				<th style="width: 250px;">게시판 이름</th>
				<th style="width: 100px;">유형</th>
				<th style="width: 100px;">읽기</th>
				<th style="width: 100px;">쓰기</th>
				<th style="width: 140px;">게시글 수</th>
			</tr>
			<tr>
				<td>1</td>
				<td>공지사항</td>
				<td>일반</td>
				<td>모두</td>
				<td>관리자</td>
				<td>10</td>
			</tr>
			<tr>
				<td>2</td>
				<td>게시판</td>
				<td>일반</td>
				<td>개인</td>
				<td>개인</td>
				<td>5</td>
			</tr>
		</table>
	</div>
	
</body>
</html>