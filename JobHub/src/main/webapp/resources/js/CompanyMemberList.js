window.addEventListener('DOMContentLoaded', function () {
	    const navigation = document.getElementById('navigation');
	    const content = document.getElementById('content');
	
	    function syncNavigationHeight() {
	        navigation.style.height = content.clientHeight + 'px';
	    }
	
	    syncNavigationHeight();
	    window.addEventListener('resize', syncNavigationHeight);
	    
		 // 비회원 열람 제한 - 회사 정보
	    const blurElements = document.querySelectorAll('.blur a');

	    for (const link of blurElements) {
	        link.addEventListener('click', function (event) {
	            event.preventDefault();
	        });
	    }
	    
	    // 비회원 열람 제한 - 페이징
	    const pagingLinks = document.querySelectorAll('.pagination a');

	    for (const link of pagingLinks) {
	        link.addEventListener('click', function (event) {
	            event.preventDefault(); // 링크의 기본 동작(페이지 이동)을 막음
	        });
	    }
	});