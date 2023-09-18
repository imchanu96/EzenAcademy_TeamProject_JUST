<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript" 
	src="/SpringHome/resources/js/jquery-3.7.1.js"></script>

<style type="text/css">
	nav > ul {
		list-style-type: none;
	    padding: 0;
	    overflow: hidden;
	    background-color: #fff;
	    display: table;
	    margin: 0px auto;
	    
	    box-shadow: 0px 1px 4px 0px #ddd;
	    border-radius: 10px;
	}
	
	nav > ul > li {
		float: left;
	}
	
	nav > ul > li > a {
	    display: block;
	    color: #292e41; 
	    text-align: center;
	    padding: 16px;
	    text-decoration: none;
	    font-size: 16px;
	    font-weight: bold;
	}
	
	nav > ul > li > a:hover {
 	    color: #292e41;
	    background-color: #eff5ff;
	    font-weight: bold;
	}
</style>

<script type="text/javascript">

	window.onload() {
		var curPageObj = document.getElementById('curPage');
		curPageObj.setAttribute("style", "color: red;")
	}

	function goPage(pageNumber){
		// 자바스크립트
		var curPageObj = document.getElementById('curPage');
		curPageObj.value = pageNumber;
		
		alert(curPageObj.value);
		
		var pagingFormObj = document.getElementById('pagingForm');
		pagingFormObj.submit();
		
		//제이쿼리
// 		var curPageObj = $("#curPage");
		
// 		curPageObj.val(pageNumber);
		
// 		alert(curPageObj.val());
		
// 		var pagingFormObj = $('#pagingForm');
// 		pagingFormObj.submit();
		
	}
	
</script>


	<nav>
		<ul>
			<c:if test="${pagingMap.reviewPaging.prevBlock ne 1}">
			<li>
				<a href="#" onclick="goPage(${pagingMap.reviewPaging.prevBlock});">
					<span>&#60;</span> <!-- < -->
				</a>
			</li>
			</c:if>
			
			<c:forEach var="num" begin="${pagingMap.reviewPaging.blockBegin}"
				end="${pagingMap.reviewPaging.blockEnd}">
				<li>
					<a href="#" onclick="goPage(${num})">${num}</a>
				</li>
			</c:forEach>
			
			<c:if 
				test="${pagingMap.reviewPaging.curBlock < pagingMap.reviewPaging.totBlock}">
			<li>
				<a href="#" onclick="goPage(${pagingMap.reviewPaging.nextBlock});">
					<span>&#62;</span> <!-- > -->
				</a>
			</li>
			</c:if>
			
		</ul>
	</nav>

