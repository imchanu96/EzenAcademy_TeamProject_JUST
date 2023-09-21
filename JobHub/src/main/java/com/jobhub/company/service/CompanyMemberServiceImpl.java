package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.company.service.CompanyMemberServiceImpl;
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
	public CompanyMemberDto companyMemberExist(String cCode, String cPwd) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberExist(cCode, cPwd);
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
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercInChargeNameUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercInChargeEmailUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercInChargePhoneNumUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercNameUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercNameUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercAddUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercAddUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercTypeUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercTypeUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercEstDateUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercEstDateUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercHomepageUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercHomepageUpdateOne(companymemberDto);
	}

	@Override
	public void companyMembercBusDetailUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyMembercBusDetailUpdateOne(companymemberDto);
	}

	

}
