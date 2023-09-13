package com.jobhub.personal.dao;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberDao {
	
	PersonalMemberDto personalMemberExist(String email, String password);

}
