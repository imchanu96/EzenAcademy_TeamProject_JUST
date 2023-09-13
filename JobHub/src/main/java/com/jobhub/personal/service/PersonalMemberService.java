package com.jobhub.personal.service;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberService {
	
	PersonalMemberDto personalMemberExist(String email, String password);

}
