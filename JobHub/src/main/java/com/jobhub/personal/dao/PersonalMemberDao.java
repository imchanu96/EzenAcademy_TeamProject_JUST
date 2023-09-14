package com.jobhub.personal.dao;

import java.util.List;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	PersonalMemberDto personalMemberExist(String id, String password);

	List<PersonalMemberDto> memberSelectList();
	
}
