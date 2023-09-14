package com.jobhub.personal.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;

@Service
public class PersonalMemberServiceImpl implements PersonalMemberService {
	
	private static final Logger log = LoggerFactory.getLogger(PersonalMemberService.class);
	
	@Autowired
	public PersonalMemberDao personalMemberDao;

	@Override
	public PersonalMemberDto personalMemberExist(String pId, String pPwd) {
		// TODO Auto-generated method stub
		
		return personalMemberDao.personalMemberExist(pId, pPwd);
	}

}
