	function logout() {
		location.href = "<%=request.getContextPath()%>/personal/login.do";
	}
	
	function backButton() {
		window.history.back();
	}