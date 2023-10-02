function reviewWriteFnc(perNo) {
		
		var jsonData = { "perNo" : perNo};
		
		$.ajax({
			url: "./countPersonalReview.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
					
					if (data == 0) {
						location.href = 'http://localhost:9080/JobHub/review/add.do?perNo=' + perNo;
					} else if (data != 0) {
						alert("이미 리뷰를 작성하셨습니다.");
					}
				},
			error: function() {
					alert('불러오기 실패');
				}
		}); // end of $.ajax
	} // end of reviewWriteFnc