package com.jobhub.company.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberDao {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);
	
	public CompanyMemberDto companyMemberSelectOne(int cNo);

	public int companyInsertOne(CompanyMemberDto companyMemberDto);

	public List<CompanyMemberDto> companyMemberSelectList(int start, int end);

	public int companyMemberSelectTotalCount();
	
	public CompanyMemberDto companyMemberSearchId(CompanyMemberDto companyMemberDto);

	public CompanyMemberDto companyMemberSearchPwd(CompanyMemberDto companyMemberDto);
	
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercNameUpdateOne(CompanyMemberDto companyMemberDto);
		
	public void companyMembercAddUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercTypeUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercEstDateUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercHomepageUpdateOne(CompanyMemberDto companyMemberDto);

	public void companyMembercIntroduceUpdateOne(CompanyMemberDto companyMemberDto);

	public List<CompanyMemberDto> companyMemSelectList();

	public void preferUpdateOne(Map<String, Object> map);
}
