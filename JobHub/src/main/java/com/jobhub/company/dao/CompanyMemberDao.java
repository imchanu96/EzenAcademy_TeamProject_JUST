package com.jobhub.company.dao;

import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;

public interface CompanyMemberDao {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

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

	public void companyMembercBusDetailUpdateOne(CompanyMemberDto companymemberDto);
}
