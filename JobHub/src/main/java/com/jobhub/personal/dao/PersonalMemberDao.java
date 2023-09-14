package com.jobhub.personal.dao;

import java.util.List;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	public PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public List<PersonalMemberDto> memberSelectList();

	public int memberInsertOne(PersonalMemberDto personalMemberDto);
	
	
}
