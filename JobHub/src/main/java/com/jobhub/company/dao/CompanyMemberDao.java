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
	
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercNameUpdateOne(CompanyMemberDto companymemberDto);
		
	public void companyMembercAddUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercTypeUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercEstDateUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercHomepageUpdateOne(CompanyMemberDto companymemberDto);

	public void companyMembercIntroduceUpdateOne(CompanyMemberDto companymemberDto);

	public List<CompanyMemberDto> companyMemSelectList();

	public void preferUpdateOne(Map<String, Object> map);
}
