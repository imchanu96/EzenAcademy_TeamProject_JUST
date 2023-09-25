package com.jobhub.admin.dao;

import java.util.List;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface AdminDao {

	AdminDto adminExist(String id, String pwd);

	int memberSelectTotalCount();

	public void adminDeleteOne(AdminDto adminDto);

	void personalDeleteOne(AdminDto adminDto);

	void companyDeleteOne(AdminDto adminDto);

	List<PersonalMemberDto> memberSelectList();


}
