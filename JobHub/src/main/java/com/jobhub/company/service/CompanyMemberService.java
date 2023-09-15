package com.jobhub.company.service;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberService {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

	public void companyInsertOne(CompanyMemberDto companyMemberDto);

	
	
}
