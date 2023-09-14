package com.jobhub.personal.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberService {
	
	public PersonalMemberDto personalMemberExist(String id, String password);

	public void personalInsertOne(PersonalMemberDto personalMemberDto);
	
	
}
