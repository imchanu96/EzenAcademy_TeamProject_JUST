package com.jobhub.admin.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface AdminDao {

	AdminDto adminExist(String id, String pwd);

	int memberSelectTotalCount();

//	public void adminDeleteOne(AdminDto adminDto);

	public void personalUpdateOne(Map<String, Object> map);

	public void companyUpdateOne(Map<String, Object> map);

	List<PersonalMemberDto> memberSelectList();


}
