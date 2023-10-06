function deleteFnc(boardNo) {
	if (confirm("정말 삭제하시겠습니까?") == true){
		//true는 확인버튼을 눌렀을 때 코드 작성
		location.href = './delete.do?no='+boardNo;
		alert("삭제되었습니다.");
	}else{
		// false는 취소버튼을 눌렀을 때, 취소됨
		return;
	}
}