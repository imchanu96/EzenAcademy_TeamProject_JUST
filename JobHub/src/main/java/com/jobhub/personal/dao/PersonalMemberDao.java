package com.jobhub.personal.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	public PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public int memberInsertOne(PersonalMemberDto personalMemberDto);

	public int memberSelectOne(int pNo);

	public List<PersonalMemberDto> memberSelectList();

	public void personMemberUpdateOne(PersonalMemberDto personalMemberDto);

	public List<PersonalMemberDto> personalInfoList();
	
}
