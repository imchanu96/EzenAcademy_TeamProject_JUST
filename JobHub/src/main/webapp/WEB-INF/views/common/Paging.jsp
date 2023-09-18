<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript" src="/SpringHome/resources/js/jquery-3.7.1.js">
</script>

<style type="text/css">
	nav > ul {
	   list-style-type: none;
	    padding: 0;
	    overflow: hidden;
	    background-color: #333333;
	/*     width: 1000px; */ /* 넓이를 주면 고정  */
	    display: table; /* table을 주면  요소의 내용에 맞게 자동으로 크기 */
	    margin-left: auto;
	    margin-right: auto;
	    
	}

	nav > ul > li {
	   float: left;
	}

	nav > ul > li > a {
	    display: block;
	    color: white; 
	    text-align: center;
	    padding: 16px;
	    text-decoration: none;
	}

	nav > ul > li > a:hover {
	    color: #FFD9EC;
	    background-color: #5D5D5D;
	    font-weight: bold;
	}
</style>

<script type="text/javascript">
	function goPage(pageNumber) {
// 		var curPageObj = document.getElementById('curPage');
// 		curPageObj.value = pageNumber;
// 		alert(curPageObj.value);
// 		var pagingFormObj = document.getElementById('pagingForm');
// 		pagingFormObj.submit();
		
		//제이쿼리
		var curPageObj = $("#curPage");
		
		curPageObj.val(pageNumber);
		
		alert(curPageObj.val());
		
		var pagingFormObj = $('#pagingForm');
		pagingFormObj.submit();
	}
	
	window.onload = function() {
// 		$('.jqueryTest').css('background-color', 'red');
	}
	
</script>

	<nav class='jqueryTest'>
		<ul>
			<c:if test="${pagingMap.boardPaging.prevBlock ne 1}">
			<li>
				<a href="#" onclick="goPage(${pagingMap.boardPaging.prevBlock});">
					<span>≪</span>
				</a>
			</li>
			</c:if>
			
			<c:forEach var="num" begin="${pagingMap.boardPaging.blockBegin}"
				end="${pagingMap.boardPaging.blockEnd}">
				<li>
					<a href="#" onclick="goPage(${num})">${num}</a>
				</li>
			</c:forEach>
			
			<c:if test="${pagingMap.boardPaging.curBlock < pagingMap.boardPaging.totBlock}">
			<li>
				<a href="#" onclick="goPage(${pagingMap.boardPaging.nextBlock});">
					<span>≫</span>
				</a>
			</li>
			</c:if>
			
		</ul>
	</nav>
	