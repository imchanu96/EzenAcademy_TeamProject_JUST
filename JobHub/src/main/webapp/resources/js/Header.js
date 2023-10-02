	function myMenuFnc() {
		var myMenu = document.getElementById("myMenu");
		myMenu.style.display = "block";
		
		myMenu.addEventListener("mouseleave", function(e) {
			myMenu.style.display = "none";
		});
	} 
	function clickLogoutFnc() {
		var logoutModal = document.getElementById("logoutModal");
		logoutModal.style.display = "block";
	}
	function logoutFnc(permission) {
		if (permission == 1 || permission == 2) {
			location.href = "<%=request.getContextPath()%>/personal/logout.do";
		}else if (permission == 5) {
			location.href = "<%=request.getContextPath()%>/company/logout.do";
		}
		
	}
	function mouseoverFnc() {
		var logoutTextList = document.getElementsByClassName("logout");
		
		for (var i = 0; i < logoutTextList.length; i++) {
	        logoutTextList[i].style.color = "#2d65f2";
	    }
	}
	
	function mouseleaveFnc() {
		var logoutTextList = document.getElementsByClassName("logout");
		
		for (var i = 0; i < logoutTextList.length; i++) {
	        logoutTextList[i].style.color = "#292e41";
		}
	}	
		
	function backButton() {
		var logoutModal = document.getElementById("logoutModal");
		logoutModal.style.display = "none";
	}