package com.jobhub.util;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.recommend.dto.RecommendDto;

public class PreferCalculate {

	private PersonalMemberDto personalMemberDto;
	private ResumeDto resumeDto;
	private CompanyMemberDto companyMemberDto;
	private List<CareerDto> careerDtoList;
	private List<EducationDto> educationDtoList;
	private RecommendDto recommendDto;

	private String[] preferArr;
	
	private String keywordRate;
	private String keyword;
	private String licenseRate;
	private String license;
	private String educationRate;
	private String education;
	private String careerRate;
	private String career;
	private String score;
	
	public PreferCalculate() {
		super();
	}

	public PreferCalculate(PersonalMemberDto personalMemberDto, ResumeDto resumeDto
			, CompanyMemberDto companyMemberDto, List<CareerDto> careerDtoList
			, List<EducationDto> educationDtoList) {
		super();
		this.personalMemberDto = personalMemberDto;
//		System.out.println(personalMemberDto);
		this.resumeDto = resumeDto;
//		System.out.println(resumeDto);
		this.companyMemberDto = companyMemberDto;
//		System.out.println(companyMemberDto);
		this.careerDtoList = careerDtoList;
//		System.out.println(careerDtoList);
		this.educationDtoList = educationDtoList;
//		System.out.println(educationDtoList);
		
		this.preferArr = companyMemberDto.getComPrefer().split(",");
		this.keyword = preferArr[0].trim();
//		this.keywordRate = preferArr[1].replace("%", "").trim();
		this.keywordRate = preferArr[1].trim();
		this.license = preferArr[2].trim();
		this.licenseRate = preferArr[3].trim();
		System.out.println("학력" + preferArr[4].trim());
		this.education = preferArr[4].trim();
		this.educationRate = preferArr[5].trim();
		this.career = preferArr[6].trim();
		this.careerRate = preferArr[7].trim();
		for (int i = 0; i < preferArr.length; i++) {
			System.out.println("preferArr"+i + preferArr[i]);
		}
		double keywordScore = getKeywordScore() * (double)Integer.parseInt(getKeywordRate()) / 100;
		System.out.println("getKeywordScore = " + getKeywordScore());
		System.out.println("keywordScore" + keywordScore);
		double licenseScore = getLicenseScore() * (double)Integer.parseInt(getLicenseRate()) / 100;
		System.out.println("getLicenseScore = " + licenseScore);
		double educationScore = getEducationScore() * (double)Integer.parseInt(getEducationRate()) / 100;
		System.out.println("getEducationScore = " + educationScore);
		double careerScore = getCareerScore() * (double)Integer.parseInt(getCareerRate()) / 100;
		System.out.println("getCareerScore = " + careerScore);
		
		this.score = String.valueOf(keywordScore + licenseScore + educationScore + careerScore);
		this.recommendDto = new RecommendDto(companyMemberDto.getComPrefer(), personalMemberDto.getPerNo()
			, companyMemberDto.getComNo(), score);
	}
	
	private double getKeywordScore() {
		// keyword 점수 내기
		double keywordScore = 0;

		if (personalMemberDto.getPerKeyword() == null) {
			System.out.println("키워드 없음 0점");
			return keywordScore;
		}
		
		String[] comKeywordArr = getKeyword().split("-");
		for (int i = 0; i < comKeywordArr.length; i++) {
			System.out.println("회사 키워드"+ i + ":" + comKeywordArr[i]);
		}
		String[] perKeywordArr = personalMemberDto.getPerKeyword().split("-");

		for (int i = 0; i < perKeywordArr.length; i++) {
			System.out.println("개인 키워드"+ i + ":" + perKeywordArr[i]);
		}
		int keywordCount = 0;
		for (int i = 0; i < comKeywordArr.length; i++) {
			for (int j = 0; j < perKeywordArr.length; j++) {
				if (comKeywordArr[i].equals(perKeywordArr[j])) {
					++keywordCount;
				}
			}
		}
		if (comKeywordArr.length == 2) {
			if (keywordCount == 2) {
				keywordScore = 100;
			}else if (keywordCount == 1) {
				keywordScore = 50;
			}else if (keywordCount == 0) {
				keywordScore = 0;
			}
		}else if (comKeywordArr.length == 1) {
			if (keywordCount == 1) {
				keywordScore = 50;
			}else if (keywordCount == 0) {
				keywordScore = 0;
			}
		}else if (comKeywordArr.length == 0) {
			keywordScore = 100;
		}
		return keywordScore;
	}
	
	private double getLicenseScore() {
		// 자격증 점수 내기
		double licenseScore = 0;
		int licenseMinNo = 0;
		int licenseMaxNo = 0;
		
		// 개인 회원의 자격증 갯수
		int LicenseNum = 0;
		if (resumeDto.getResumeLicenseName() != null) {
			LicenseNum = resumeDto.getResumeLicenseName().length()
					- resumeDto.getResumeLicenseName().replace(",", "").length()+1;
		}
		System.out.println("LicenseNum : " + LicenseNum);
		System.out.println("회사 요구 자격증 갯수" + getLicense());
		
		String licenseCondition1 = "1개 이하";
		String licenseCondition2 = "1~3개";
		String licenseCondition3 = "3개 이상";
		
		if (getLicense().equals(licenseCondition1)) {
			System.out.println("자격증 1돈다");
			licenseMinNo = 0;
			licenseMaxNo = 1;
			if (LicenseNum >= licenseMinNo && LicenseNum <= licenseMaxNo) {
				licenseScore = 100;
			}
		}else if (getLicense().equals(licenseCondition2)) {
			System.out.println("자격증 2돈다");
			licenseMinNo = 1;
			licenseMaxNo = 3;
			if (LicenseNum >= licenseMinNo && LicenseNum <= licenseMaxNo) {
				licenseScore = 100;
			}else {
				licenseScore = 0;
			}
		}else if (getLicense().equals(licenseCondition3)) {
			System.out.println("자격증 3돈다");
			licenseMinNo = 3;
			if (LicenseNum >= licenseMinNo) {
				licenseScore = 100;
			}else if (LicenseNum >= 1) {
				licenseScore = 50;
			}else {
				licenseScore = 0;
			}
		}

		// 자격증 점수 끝
		return licenseScore;
	}
	
	private double getEducationScore() {
		// 학력 점수 내기
		double educationScore = 0;
		System.out.println("회사 요구 학력 : " + getEducation());
		for (int i = 0; i < educationDtoList.size(); i++) {
			System.out.println("개인 학력 :" + educationDtoList.get(i).getEduName());
		}
		int educationCondition = 0;
		String checkEduName = "";
		if (getEducation().equals("고졸")) {
			checkEduName = "고등학교";
			for (int i = 0; i < educationDtoList.size(); i++) {
				if (educationDtoList.get(i).getEduName().indexOf(checkEduName) != -1
						|| educationDtoList.get(i).getEduName().indexOf("전문대") != -1
						|| educationDtoList.get(i).getEduName().indexOf("대학교") != -1) {
					educationCondition++;
				}
			}
		}else if (getEducation().equals("초대졸")) {
			checkEduName = "전문대";
			for (int i = 0; i < educationDtoList.size(); i++) {
				if (educationDtoList.get(i).getEduName().indexOf(checkEduName) != -1
						|| educationDtoList.get(i).getEduName().indexOf("대학교") != -1) {
					educationCondition++;
				}
			}
		}else if (getEducation().equals("대졸")) {
			checkEduName = "대학교";
			for (int i = 0; i < educationDtoList.size(); i++) {
				if (educationDtoList.get(i).getEduName().indexOf(checkEduName) != -1) {
					educationCondition++;
				}
			}
		}
		
		System.out.println("educationCondition" + educationCondition);
		if (educationCondition > 0) {
			educationScore = 100;
		}
		System.out.println("학력 점수" + educationScore);
		// 학력 점수 끝
		return educationScore;
	}
	
	private double getCareerScore() {
		// 경력 점수 내기
		double careerScore = 0;
		// 경력 점수 끝
		return careerScore;
	}
	
	public PersonalMemberDto getPersonalMemberDto() {
		return personalMemberDto;
	}

	public void setResumeDto(PersonalMemberDto personalMemberDto) {
		this.personalMemberDto = personalMemberDto;
	}

	public ResumeDto getResumeDto() {
		return resumeDto;
	}

	public void setResumeDto(ResumeDto resumeDto) {
		this.resumeDto = resumeDto;
	}

	public CompanyMemberDto getCompanyMemberDto() {
		return companyMemberDto;
	}

	public void setCompanyMemberDto(CompanyMemberDto companyMemberDto) {
		this.companyMemberDto = companyMemberDto;
	}

	public List<CareerDto> getCareerDtoList() {
		return careerDtoList;
	}

	public void setCareerDtoList(List<CareerDto> careerDtoList) {
		this.careerDtoList = careerDtoList;
	}

	public List<EducationDto> getEducationDtoList() {
		return educationDtoList;
	}

	public void setEducationDtoList(List<EducationDto> educationDtoList) {
		this.educationDtoList = educationDtoList;
	}

	public RecommendDto getRecommendDto() {
		return recommendDto;
	}

	public void setRecommendDto(RecommendDto recommendDto) {
		this.recommendDto = recommendDto;
	}

	public String[] getPreferArr() {
		return preferArr;
	}

	public void setPreferArr(String[] preferArr) {
		this.preferArr = preferArr;
	}

	public String getKeywordRate() {
		return keywordRate;
	}

	public void setKeywordRate(String keywordRate) {
		this.keywordRate = keywordRate;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getLicenseRate() {
		return licenseRate;
	}

	public void setLicenseRate(String licenseRate) {
		this.licenseRate = licenseRate;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getEducationRate() {
		return educationRate;
	}

	public void setEducationRate(String educationRate) {
		this.educationRate = educationRate;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getCareerRate() {
		return careerRate;
	}

	public void setCareerRate(String careerRate) {
		this.careerRate = careerRate;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return 
				"PreferCalculate [personalMemberDto=" + personalMemberDto + ", resumeDto=" + resumeDto
				+ ", companyMemberDto=" + companyMemberDto + ", careerDtoList=" + careerDtoList
				+ ", educationDtoList=" + educationDtoList + ", recommendDto=" + recommendDto
				+ ", preferArr=" + Arrays.toString(preferArr) + ", keywordRate=" + keywordRate
				+ ", keyword=" + keyword + ", licenseRate=" + licenseRate
				+ ", license=" + license + ", educationRate=" + educationRate + ", education=" + education
				+ ", careerRate=" + careerRate + ", career=" + career + ", score=" + score + "]";
	}

}
