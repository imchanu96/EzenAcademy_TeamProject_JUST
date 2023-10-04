<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tail</title>
	<style type="text/css">
/* 공통 */
		a {
		  text-decoration: none;
		  color: #292e41;
		}
/* 	    a:hover { color: #2d65f2; } */
		
/* tail form */
		#tailBox {
			height: 150px;
			background-color: #F5F5F8;
			text-align: center;
			clear: both;
		}
		#tailContent {
			width: 1280px;
			height: 130px;
			margin: auto;
			
			text-align: center;
		}
		#teamName {
			float: left;
			padding-left: 290px;
			padding-right: 50px;
			width: 400px;
			font-size: 70px;
			font-weight: 800;
			line-height: 147px;
			color: #999999;
		}
		#teamInfo {
			margin: 42px 0px -3px 8px;
			float: left;
			width: 305px;
			height: 30px;
			text-align: left;
		    font-size: 22px;
			color: #999999;
		}
		#gitHubLink {
			float: left;
			width: 230px;
			height: 50px;
			text-align: left;
			color: #999999;
		}
		#gitHubImg {
			float: left;
			width: 55px;
			height: 55px;
		}
		#gitHubLogo {
			width: 50px;
			height: 50px;		
		}
		#gitHubText {
			float: left;
			width: 160px;
			height: 50px;
			line-height: 50px;
			color: #999999;
		}
		#gitHubLogo {
			width: 50px;
			height: 50px;
			
		}
	</style>
</head>
<body>

	<div id="tailBox">
		<div id="tailContent">
			<div id="teamName">
				TEAM JUST
			</div>
			<div id="teamInfo">
				<span>Java Users' Study Team</span>
			</div>
			<div id="gitHubLink">
				<a href="https://github.com/noohij/Ezen_TeamProject_JUST" target="_blank">
					<div id="gitHubimg" style="float: left; width: 55px; height: 55px;">
						<img id="gitHubLogo" src="https://github.com/noohij/Ezen_TeamProject_JUST/assets/105366274/7f682a54-2367-4fdf-8a05-64314bcd2418">
					</div>
					<div id="gitHubText">&nbsp;Visit Our GitHub >></div> 
				</a>
			</div>
		</div>
	</div>
	
</body>
</html>