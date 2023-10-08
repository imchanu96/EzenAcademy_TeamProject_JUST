package com.jobhub.personal.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;

public interface PersonalMemberDao {
	
	public PersonalMemberDto personalMemberExist(String perId, String perPwd);

	public int memberInsertOne(PersonalMemberDto personalMemberDto);

	public int memberSelectOne(int perNo);

	public List<PersonalMemberDto> memberSelectList();
	
	public PersonalMemberDto personalMemberSearchId(PersonalMemberDto personalMemberDto);

	public PersonalMemberDto personalMemberSearchPwd(PersonalMemberDto personalMemberDto);
	
	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto);

	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto);

	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map);

	public List<PersonalMemberDto> personalMemberSelectList();

	public Map<String, Object> personalMemberShowResume(int perNo);

	public LetterDto personalMembershowLetter(int perNo);

	public EducationDto personalMemberCheckEducation(EducationDto educationDto);
	
	public CareerDto personalMemberCheckCareer(CareerDto careerDto);

	public void personalResumeAddOne(ResumeDto resumeDto);
		
	public void personalLetterAddOne(LetterDto letterDto);
	
	public void personalMemberEducationAddOne(EducationDto educationDto);

	public void personalMemberCareerAddOne(CareerDto careerDto);

	public void personalMemberEducationUpdateOne(EducationDto educationDto);

	public void personalMemberCareerUpdateOne(CareerDto careerDto);
	
	public void personalResumeUpdateOne(ResumeDto resumeDto);

	public void PersonalLetterUpdateOne(LetterDto letterDto);
	
	public int personalUpdateTemporarily(PersonalMemberDto personalMemberDto);
	
	public int personalUpdatePermission(PersonalMemberDto personalMemberDto);

	
	
}
