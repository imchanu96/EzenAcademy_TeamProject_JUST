<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function reviewWriteFnc(pNo) {
		
		var jsonData = { "pNo" : pNo};
		
		$.ajax({
			url: "./countPersonalReview.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
					
					if (data == 0) {
						location.href = 'http://localhost:9080/JobHub/review/add.do?pNo=' + pNo;
					} else if (data != 0) {
						alert("이미 리뷰를 작성하셨습니다.");
					}
					
				},
			error: function() {
				
					alert('불러오기 실패');
					
				}
			
		}); // end of $.ajax
		
		
		
	} // end of reviewWriteFnc

</script>
</head>
<body>

	<div id="navigation">
		<div id="smallMenuBox">
			<div class="smallMenuItem">
				<a href="http://localhost:9080/JobHub/review/companyMemberList.do">리뷰 조회</a>
			</div>
			<div class="smallMenuItem">
				<a href="#" onclick="reviewWriteFnc(${sessionScope.personalMemberDto.pNo});">리뷰 작성</a>
			</div>
		</div>
	</div>
	
</body>
</html>