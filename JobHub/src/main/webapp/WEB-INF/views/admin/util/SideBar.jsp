<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#sideBarDiv{
		width: 30%;
		float:left;
	}
	#sideBar{
		list-style-type: none;
		width: 170px;
		height: 500px;
		font-size: 30px;
		text-align: center;
		padding-left: 0px;
	}
	li{
		border: 1px solid blue;
		border-radius: 5px;
		background: aqua;
	}
	ol{
/* 		border: 1px solid black; */
		padding-left: 0px;
		font-size: 20px;
 		display: none; 
	}
	
</style>

<script type="text/javascript">
	function overFnc(obj) {
		var olList = obj.children;
		for (var i = 0; i < olList.length; i++) {
			olList[i].style.display = "block";
		}
		obj.addEventListener("onclick", function(e) {
			for (var i = 0; i < olList.length; i++) {
				olList[i].style.display = "none";
			}
		});
	};
	
	function lookMemberList(obj) {
		switch (obj) {
		case "all":
			location.href = "<%=request.getContextPath()%>/admin/memberList.do";
			break;
		case "personal":
			location.href = "<%=request.getContextPath()%>/admin/personalMemberList.do";
			break;
		case "company":
			location.href = "<%=request.getContextPath()%>/admin/companyMemList.do";
			break;
		default:
			break;
		}
	}
</script>
</head>
<body>
	<div id="sideBarDiv">
		<ul id="sideBar">
			<li id="userMenu" style="display: block;">사용자
				<ol class="userMenuClass" style="display: block;" onclick="lookMemberList('all');">전체 회원</ol>
				<ol class="userMenuClass" style="display: block;" onclick="lookMemberList('personal');">개인 회원</ol>		
				<ol class="userMenuClass" style="display: block;" onclick="lookMemberList('company');">기업 회원</ol>
			</li>
			<li id="boardMenu" style="display: block;">게시판
				<ol class="boardMenuClass" style="display: block;">게시판 리스트</ol>
				<ol class="boardMenuClass" style="display: block;">게시판 카테고리</ol>		
			</li>
			<li id="statisticsMenu" style="display: block;">통계
				<ol class="statisticsMenuClass" style="display: block;">통계1</ol>
				<ol class="statisticsMenuClass" style="display: block;">통계2</ol>		
				<ol class="statisticsMenuClass" style="display: block;">통계3</ol>
			</li>
			<li id="settingMenu" style="display: block;">환경 설정
				<ol class="settingMenuClass" style="display: block;">환경 설정1</ol>
				<ol class="settingMenuClass" style="display: block;">환경 설정2</ol>		
				<ol class="settingMenuClass" style="display: block;">환경 설정3</ol>
			</li>
		</ul>
	</div>
	
</body>
</html>