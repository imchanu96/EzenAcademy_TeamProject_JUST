package com.jobhub.personal.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.board.dto.BoardDto;
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

	public void PersonalresumeUpdateOne(ResumeDto resumeDto);

	public LetterDto personalMembershowLetter(int perNo);

	public void PersonalLetterUpdateOne(LetterDto letterDto);

	public List<BoardDto> personalMemberMyPostList(int start, int end);
	
	public int personalMemberMyPostListSelectTotalCount();
	
	
	public int personalMemberFindPwd(String perPwd, String perEmail, String perId);
	
}
