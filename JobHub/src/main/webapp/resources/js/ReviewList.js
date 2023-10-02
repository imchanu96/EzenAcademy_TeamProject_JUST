window.addEventListener('DOMContentLoaded', function () {
    const navigation = document.getElementById('navigation');
    const content = document.getElementById('content');

    function syncNavigationHeight() {
        navigation.style.height = content.clientHeight + 'px';
    }

    syncNavigationHeight();
    window.addEventListener('resize', syncNavigationHeight);
});

function comDetailViewFnc(comNo) {
	var url = 'http://localhost:9080/JobHub/review/companyDetail.do?comNo=' + comNo;
	
	location.href = url;
}

function openShowMoreFnc() {
	var showMoreBoxObj = document.getElementById("showMoreOptionBox");
	showMoreBoxObj.style.display = "block";
	var deleteConfirmObj = document.getElementById("deleteConfirmBox");
	deleteConfirmObj.style.display = "none";
}

function closeShowMoreFnc() {
	var showMoreBoxObj = document.getElementById("showMoreOptionBox");
	showMoreBoxObj.style.display = "none";
}

function goReviewUpdateFnc(reviewNo) {
	
	location.href = 'http://localhost:9080/JobHub/review/update.do?reviewNo=' + reviewNo;
}

function goReviewDeleteFnc(reviewNo, comNo) {
	
	location.href = 'http://localhost:9080/JobHub/review/delete.do?reviewNo=' + reviewNo + '&comNo=' + comNo;
}

function openModalFnc() {
	var showMoreBoxObj = document.getElementById("showMoreOptionBox");
	showMoreBoxObj.style.display = "none";
	var deleteConfirmObj = document.getElementById("deleteConfirmBox");
	deleteConfirmObj.style.display = "block";
}

function closeModalFnc() {
	var showMoreBoxObj = document.getElementById("showMoreOptionBox");
	var deleteConfirmObj = document.getElementById("deleteConfirmBox");
	showMoreBoxObj.style.display = "none";
	deleteConfirmObj.style.display = "none";
}

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