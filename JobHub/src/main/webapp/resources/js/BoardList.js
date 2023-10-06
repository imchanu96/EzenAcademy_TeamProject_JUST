function writeFnc(perNo) {
	if(perNo != ""){
		location.href='./add.do';
	} else if (perNo == ""){
		location.href='../personal/login.do';
	}
}