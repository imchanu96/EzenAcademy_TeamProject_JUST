package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface CompanyMemberService {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

	public void companyInsertOne(CompanyMemberDto companyMemberDto);

	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map);
	
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercNameUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercAddUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercTypeUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercEstDateUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercHomepageUpdateOne(CompanyMemberDto companymemberDto);
	
	public void companyMembercBusDetailUpdateOne(CompanyMemberDto companymemberDto);
	
}
