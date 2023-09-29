package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;

@Service
public class CompanyMemberServiceImpl implements CompanyMemberService {

	private static final Logger log = LoggerFactory.getLogger(CompanyMemberServiceImpl.class);
	
	@Autowired
	public CompanyMemberDao companyMemberDao;
	@Autowired
	public PersonalMemberDao personalMemberDao;

	@Override
	public CompanyMemberDto companyMemberExist(String comCode, String comPwd) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberExist(comCode, comPwd);
	}

	@Override
	public void companyInsertOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyInsertOne(companyMemberDto);
	}

	@Override
	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalInfoList(map);
	}

	@Override
	public CompanyMemberDto companyMemberSearchId(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSearchId(companyMemberDto);
	}

	@Override
	public CompanyMemberDto companyMemberSearchPwd(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSearchPwd(companyMemberDto);
	}
	
	@Override
	public void companyInfoUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyInfoUpdateOne(companyMemberDto);
	}

	@Override
	public CompanyMemberDto companyMemberSelectOne(int comNo) {
		// TODO Auto-generated method stub
		
		return companyMemberDao.companyMemberSelectOne(comNo);
	}

	@Override
	public void preferUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		companyMemberDao.preferUpdateOne(map);
	}

	

}
