package com.jobhub.company.dao;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberDao {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

	public int companyInsertOne(CompanyMemberDto companyMemberDto);

}
