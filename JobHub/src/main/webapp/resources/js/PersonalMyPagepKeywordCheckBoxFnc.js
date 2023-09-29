/**
 * 
 */

 function count_check(obj) {
		var chkBox = document.getElementsByName("pKeyword");
		var chkCnt = 0;
		
		for(var i = 0; i <chkBox.length; i++) {
			if(chkBox[i].checked) {
			chkCnt++;
			}
		}
		if(chkCnt > 2) {
			alert("2개까지 체크할 수 있습니다.");
			obj.checked = false;
			return false;
		}
	}