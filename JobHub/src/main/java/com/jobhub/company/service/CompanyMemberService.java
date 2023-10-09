package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface CompanyMemberService {

	public CompanyMemberDto companyMemberExist(String comCode, String comPwd);

	public CompanyMemberDto showCompanyInfo(int comNo);
	
	public void companyInsertOne(CompanyMemberDto companyMemberDto) throws Exception;

	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map);
	
	public CompanyMemberDto companyMemberSearchId(CompanyMemberDto companyMemberDto);

	public CompanyMemberDto companyMemberSearchPwd(CompanyMemberDto companyMemberDto);
	
	public void companyInfoUpdateOne(CompanyMemberDto companyMemberDto);

	public CompanyMemberDto companyMemberSelectOne(int comNo);

	public void preferUpdateOne(Map<String, Object> map);

	public int companyUpdateId(CompanyMemberDto companyMemberDto);
	
	public int companyUpdatePermission(CompanyMemberDto companyMemberDto);

	public int personalSearchSelectTotalCount(Map<String, Object> map);
	
}
