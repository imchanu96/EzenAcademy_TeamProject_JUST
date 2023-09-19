package com.jobhub.personal.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	public PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public int memberInsertOne(PersonalMemberDto personalMemberDto);

	public int memberSelectOne(int pNo);

	public List<PersonalMemberDto> memberSelectList();

	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto);

	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto);
	
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto);

	public List<PersonalMemberDto> personalInfoList();
	
}
