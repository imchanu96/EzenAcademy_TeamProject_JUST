package com.jobhub.company.dao;

import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberDao {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

	public int companyInsertOne(CompanyMemberDto companyMemberDto);

	public List<CompanyMemberDto> companyMemberSelectList(int start, int end);

	public int companyMemberSelectTotalCount();

}
