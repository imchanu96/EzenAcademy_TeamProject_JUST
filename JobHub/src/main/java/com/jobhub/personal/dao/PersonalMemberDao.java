package com.jobhub.personal.dao;

import java.util.List;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	PersonalMemberDto personalMemberExist(String pId, String pPwd);

	List<PersonalMemberDto> memberSelectList();
	
}
