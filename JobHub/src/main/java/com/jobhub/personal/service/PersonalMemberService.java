package com.jobhub.personal.service;

import com.jobhub.personal.dto.PersonalMemberDto;

public interface PersonalMemberService {
	
	public PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public void personalInsertOne(PersonalMemberDto personalMemberDto);
	
	public int personalMemberSelectOne(int pNo);

	public void personMemberUpdateOne(PersonalMemberDto personalMemberDto);
	
}