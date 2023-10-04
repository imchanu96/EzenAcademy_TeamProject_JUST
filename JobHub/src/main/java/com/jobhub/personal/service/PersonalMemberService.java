package com.jobhub.personal.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;

public interface PersonalMemberService {
	
	public PersonalMemberDto personalMemberExist(String perId, String perPwd);

	public void personalInsertOne(PersonalMemberDto personalMemberDto);
	
	public int personalMemberSelectOne(int perNo);
	
	public PersonalMemberDto personalMemberSearchId(PersonalMemberDto personalMemberDto);
	
	public PersonalMemberDto personalMemberSearchPwd(PersonalMemberDto personalMemberDto);

	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public Map<String, Object> personalMemberShowResume(int perNo);

	public void PersonalresumeUpdateOne(ResumeDto resumeDto);
	
	public LetterDto personalMembershowLetter(int perNo);

	public void PersonalLetterUpdateOne(LetterDto letterDto);

	public int personalMemberMyPostListSelectTotalCount();

	public List<BoardDto> personalMemberMyPostList(int start, int end);
	
	
	public void personalMemberFindPwd(String perEmail, String perId);

//	public PersonalMemberDto personalMyPageList(HttpSession session);
	
}