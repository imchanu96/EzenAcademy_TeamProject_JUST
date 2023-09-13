package com.jobhub.company.service;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberService {

	CompanyMemberDto companyMemberExist(String cCode, String cPwd);
	
}
