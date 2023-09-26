package com.jobhub.admin.service;

import java.util.List;
import java.util.Map;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface AdminService {

	AdminDto adminExist(String id, String pwd);

	List<PersonalMemberDto> memberSelectList();
	
	int memberSelectTotalCount();

//	public void adminDeleteOne(AdminDto adminDto);

	public List<CompanyMemberDto> companyMemSelectList();

	public List<PersonalMemberDto> personalMemberSelectList();

	public void personalUpdateOne(Map<String, Object> map);

	public void companyUpdateOne(Map<String, Object> map);
}
