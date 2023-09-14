package com.jobhub.company.dao;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberDao {

	CompanyMemberDto companyMemberExist(String cCode, String cPwd);

}
