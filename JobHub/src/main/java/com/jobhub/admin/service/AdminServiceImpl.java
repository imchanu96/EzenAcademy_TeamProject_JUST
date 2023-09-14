package com.jobhub.admin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.admin.dao.AdminDao;
import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;

@Service
public class AdminServiceImpl implements AdminService{

	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public AdminDao adminDao;
	@Autowired
	public PersonalMemberDao personalMemberDao;
	
	
	@Override
	public AdminDto adminExist(String id, String pwd) {
		// TODO Auto-generated method stub
		return adminDao.adminExist(id, pwd);
	}

	@Override
	public List<PersonalMemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		return personalMemberDao.memberSelectList();
	}
	
	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return adminDao.memberSelectTotalCount();
	}

}
