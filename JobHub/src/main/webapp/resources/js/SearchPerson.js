	
	function activeRadioFnc(obj, name) {
		var radioBtnList = document.getElementsByName(name);
		
		if (obj.checked == true) {
			for (var i = 0; i < radioBtnList.length; i++) {
				radioBtnList[i].style.display = "inline";
			}
		}else if (obj.checked == false) {
			for (var i = 0; i < radioBtnList.length; i++) {
				radioBtnList[i].style.display = "none";
				radioBtnList[i].checked = false;
			}
		}

	}
	
	function helpFnc(obj) {
		var helpTextObj = document.getElementById("helpText");
		helpTextObj.style.display = "block";
		
		obj.addEventListener("mouseleave", function(e) {
			helpTextObj.style.display = "none";
		});
	}
	
	function openResumeFnc(no, name) {
		var modal = document.getElementById("resumeModal");
		
		var resumeValue = document.getElementsByClassName("resumeValue");
		
		var jsonData = { "perNo": no}; 
		
		$.ajax({
			url: "./showPersonalResume.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
	        // Ajax 요청이 성공하면 이 함수가 실행됩니다.
	        // 서버로부터 받은 데이터(data)를 처리합니다.
	        
	        // 예제: 결과를 resultContainer에 표시
// 	        	alert('성공');
	        	var resumeDto = data.resumeDto;
	        	var careerDtoList = data.careerDtoList;
	        	var educationDtoList = data.educationDtoList;
	        	
	        	
// 	        	alert(resumeDto);
// 	        	alert(careerDtoList);
// 	        	alert(educationDtoList);
	        	modal.children[1].textContent = resumeDto.resumeName + "의 이력서";
	        	modal.children[1].style.textAlign = "center";
	        	//이름
	        	resumeValue[0].textContent = resumeDto.resumeName;
	        	//생일
	        	resumeValue[1].textContent = getYmd10(resumeDto.resumeBirthday);
	        	//이메일                    
	        	resumeValue[2].textContent = resumeDto.resumeEmail;
	        	// 전화번호                  
	        	resumeValue[3].textContent = resumeDto.resumePhoneNum;
	        	// 주소                     
	        	resumeValue[4].textContent = resumeDto.resumeAdd;
	        	// 결혼 여부                 
	        	resumeValue[5].textContent = resumeDto.resumeMarry;
	        	// 성별                     
	        	resumeValue[6].textContent = resumeDto.resumeGender;
	        	// 병역 여부                 
	        	resumeValue[7].textContent = resumeDto.resumeMilitary;

	        	
	        	for (var i = 0; i < educationDtoList.length; i++) {
	        		var educationTrObj = document.createElement("tr");
	        		educationTrObj.id = "educationTr" + i;
	        		var educationTable = document.getElementById("educationTr").parentNode;
	        		
					// 입학년도
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = getYmd10(educationDtoList[i].eduBeginDate);
	        		// 졸업연도
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = getYmd10(educationDtoList[i].eduEndDate);
	        		// 학교명
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = educationDtoList[i].eduName;
	        		// 전공
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = educationDtoList[i].eduMajor;
	        		// 소재지
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = educationDtoList[i].eduLocation;
	        		// 학점
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = educationDtoList[i].eduGrade;
	        		// 졸업 구분
	        		var educationTdObj = document.createElement("td");
	        		educationTrObj.appendChild(educationTdObj);
	        		educationTdObj.textContent = educationDtoList[i].eduGreaduate;
	        		
        			educationTable.appendChild(educationTrObj);

				}
	        	
	        	for (var i = 0; i < careerDtoList.length; i++) {
	        		var careerTrObj = document.createElement("tr");
	        		careerTrObj.id = "careerTr" + i;
	        		var careerTable = document.getElementById("careerTr").parentNode;
	        		
					// 입사년도
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		careerTdObj.textContent = getYmd10(careerDtoList[i].carBeginDate);
					// 퇴사년도
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		
					careerTdObj.textContent = getYmd10(careerDtoList[i].carEndDate);
					alert(careerDtoList[i].carEndDate);
					if(careerDtoList[i].carEndDate == null){
						careerTdObj.textContent = "재직중";
					}
	        		
					// 회사명
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		careerTdObj.textContent = careerDtoList[i].carName;
					// 직무
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		careerTdObj.textContent = careerDtoList[i].carPosition;
					// 소재지
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		careerTdObj.textContent = careerDtoList[i].carLocation;
					// 담당업무
	        		var careerTdObj = document.createElement("td");
	        		careerTrObj.appendChild(careerTdObj);
	        		careerTdObj.textContent = careerDtoList[i].carJob;
	        		
        			careerTable.appendChild(careerTrObj);

				}
	        	
	        	
// 	        	alert(licenseDateArr);
				if(resumeDto.resumeLicenseName != null){
	        		var licenseNameArr = resumeDto.resumeLicenseName.split(",");
	        	}
	        	if(resumeDto.resumeLicenseInst != null){
	        		var licenseInstArr = resumeDto.resumeLicenseInst.split(",");
	        	}
	        	if(resumeDto.resumeLicenseGrade != null){
	        		var licenseGradeArr = resumeDto.resumeLicenseGrade.split(",");
	        	}
	        	if(resumeDto.resumeLicenseDate != null){
					var licenseDateArr = resumeDto.resumeLicenseDate.split(",");
					
					for (var i = 0; i < licenseDateArr.length; i++) {
	        		var licenseTrObj = document.createElement("tr");
	        		licenseTrObj.id = "licenseTr" + i;
	        		var licenseTable = document.getElementById("licenseTr").parentNode;
	        		
					// 자격증취득일
	        		var licenseTdObj = document.createElement("td");
	        		licenseTrObj.appendChild(licenseTdObj);
	        		licenseTdObj.textContent = getYmd10(licenseDateArr[i]);
					// 자격증명
	        		var licenseTdObj = document.createElement("td");
	        		licenseTrObj.appendChild(licenseTdObj);
	        		licenseTdObj.textContent = licenseNameArr[i];
					// 자격증 발급기관
	        		var licenseTdObj = document.createElement("td");
	        		licenseTrObj.appendChild(licenseTdObj);
	        		licenseTdObj.textContent = licenseInstArr[i];
					// 점수/등급
	        		var licenseTdObj = document.createElement("td");
	        		licenseTrObj.appendChild(licenseTdObj);
	        		licenseTdObj.textContent = licenseGradeArr[i];
	        		
	        		licenseTable.appendChild(licenseTrObj);

					}
				}
	        	
	        	modal.style.display = "block";
	        	
	        	var bodyObj = document.getElementById("body");
	        	
	        	bodyObj.addEventListener("click", function (e) {
        				resumeModal.style.display = "none";
        				location.reload();
	        			}, {once : true});
			},
			error: function() {
				alert('불러오기 실패');
			}
		});
	} // resume modal 끝

	function openLetterFnc(no, name) {
		var modal = document.getElementById("letterModal");
		
		var letterValue = document.getElementsByClassName("letterValue");
		var jsonData = { "perNo": no}; 
		
		$.ajax({
			url: "./showPersonalLetter.do",
			type: "post",
			data: JSON.stringify(jsonData),
			contentType: "application/json",		
			success: function (data) {
	        // Ajax 요청이 성공하면 이 함수가 실행됩니다.
	        // 서버로부터 받은 데이터(data)를 처리합니다.
	        
	        // 예제: 결과를 resultContainer에 표시
// 	        	alert('성공');
	        	modal.children[1].textContent = name + "의 자기 소개서";
	        	modal.children[1].style.textAlign = "center";
	        	
 	        	//성장 배경
	        	letterValue[0].textContent = data.history;
	        	//지원 동기
	        	letterValue[1].textContent = data.motivation;
	        	//장단점
	        	letterValue[2].textContent = data.character;
	        	//목표
	        	letterValue[3].textContent = data.goal;
	        	//
	        	modal.style.display = "block";

	        	var bodyObj = document.getElementById("body");
	        	
	        	bodyObj.addEventListener("click", function(e) {
	        		letterModal.style.display = "none";
	        	});
			},
			error: function() {
				alert('불러오기 실패');
			}
		});
	}
	function closeModal(obj) {
		var modal = obj.parentNode;
		
		modal.style.display = "none";
	}
	function getYmd10(date) {
    //yyyy-mm-dd 포맷 날짜 생성
    var d = new Date(date);
    
    var year = d.getFullYear();
	var month = ('0' + (d.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 1을 더하고 두 자리로 포맷합니다.
	var day = ('0' + d.getDate()).slice(-2); // 일을 두 자리로 포맷합니다.
    
    // YYYY-MM-DD 형식으로 날짜를 포맷합니다.
	var formattedDate = year + '-' + month + '-' + day;	
    
    return formattedDate;
     
    

	
}