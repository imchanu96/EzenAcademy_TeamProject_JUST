package com.jobhub.personal.service;

import java.util.Map;

import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;

public interface PersonalMemberService {
	
	public PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public void personalInsertOne(PersonalMemberDto personalMemberDto);
	
	public int personalMemberSelectOne(int pNo);

	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public ResumeDto personalMemberShowResume(int pNo);

	public void PersonalresumeUpdateOne(ResumeDto resumeDto);
	
	public LetterDto personalMembershowLetter(int pNo);

	public void PersonalLetterUpdateOne(LetterDto letterDto);
}