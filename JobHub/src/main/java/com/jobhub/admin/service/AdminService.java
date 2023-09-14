package com.jobhub.admin.service;

import java.util.List;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface AdminService {

	AdminDto adminExist(String id, String pwd);

	List<PersonalMemberDto> memberSelectList();
	
	int memberSelectTotalCount();
}
