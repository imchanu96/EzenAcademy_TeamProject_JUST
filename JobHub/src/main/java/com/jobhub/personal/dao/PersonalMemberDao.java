package com.jobhub.personal.dao;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	PersonalMemberDto personalMemberExist(String id, String password);

}
