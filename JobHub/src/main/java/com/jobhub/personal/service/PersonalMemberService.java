package com.jobhub.personal.service;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberService {
	
	public PersonalMemberDto personalMemberExist(String id, String password);
	
	
}
