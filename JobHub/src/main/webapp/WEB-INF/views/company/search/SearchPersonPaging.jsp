<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script type="text/javascript" 
	src="/JobHub/resources/js/jquery-3.7.1.js"></script>

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

	function goPage(pageNumber){
		
		//제이쿼리
// 		var curPageObj = $("#curPage");
// 		curPageObj.val(pageNumber);
		
// 		var pagingFormObj = $('#pagingForm');
// 		pagingFormObj.submit();
		
// 		// 자바스크립트
		var curPageObj = document.getElementById('curPage');
		curPageObj.value = pageNumber;

		var pagingFormObj = document.getElementById('pagingForm');
		pagingFormObj.submit();
		
	}
	
</script>


	<nav>
		<ul>
		
		<!-- 화살표 -->
			<c:if test="${pagingMap.searchPersonPaging.prevBlock ne 1}">
			<li>
				<a href="#;" onclick="goPage(${pagingMap.searchPersonPaging.prevBlock});">
					<span>&#60;</span> <!-- < -->
				</a>
			</li>
			</c:if>
			
		<!-- 숫자 -->
			<c:forEach var="num"
				begin="${pagingMap.searchPersonPaging.blockBegin}"
				end="${pagingMap.searchPersonPaging.blockEnd}">
				<li>
					<a href="#;" onclick="goPage(${num});">${num}</a>
				</li>
			</c:forEach>
			
		<!-- 화살표 -->			
			<c:if 
				test="${pagingMap.searchPersonPaging.curBlock < pagingMap.searchPersonPaging.totBlock}">
			<li>
				<a href="#;" onclick="goPage(${pagingMap.searchPersonPaging.nextBlock});">
					<span>&#62;</span> <!-- > -->
				</a>
			</li>
			</c:if>
			
		</ul>
	</nav>