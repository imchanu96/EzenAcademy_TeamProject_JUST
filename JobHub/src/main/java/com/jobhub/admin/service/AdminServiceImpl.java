package com.jobhub.admin.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.admin.dao.AdminDao;
import com.jobhub.admin.dto.AdminDto;
import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;

@Service
public class AdminServiceImpl implements AdminService{

	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public AdminDao adminDao;
	@Autowired
	public PersonalMemberDao personalMemberDao;
	@Autowired
	public CompanyMemberDao companyMemberDao;
	
	@Override
	public AdminDto adminExist(String id, String pwd) {
		// TODO Auto-generated method stub
		return adminDao.adminExist(id, pwd);
	}

	@Override
	public List<PersonalMemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		return adminDao.memberSelectList();
	}
	
	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return adminDao.memberSelectTotalCount();
	}

//	@Override
//	public void adminDeleteOne(AdminDto adminDto) {
//		// TODO Auto-generated method stub
//		adminDao.adminDeleteOne(adminDto);
//	}

	@Override
	public List<CompanyMemberDto> companyMemSelectList() {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemSelectList();
	}

	@Override
	public List<PersonalMemberDto> personalMemberSelectList() {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberSelectList();
	}

	@Override
	public void personalUpdateOne(Map<String, Object> map) {
		adminDao.personalUpdateOne(map);
		
	}

	@Override
	public void companyUpdateOne(Map<String, Object> map) {
		adminDao.companyUpdateOne(map);
		
	}

}
