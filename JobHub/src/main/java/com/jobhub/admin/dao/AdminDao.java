package com.jobhub.admin.dao;

import java.util.List;

import com.jobhub.admin.dto.AdminDto;

public interface AdminDao {

	AdminDto adminExist(String id, String pwd);

	int memberSelectTotalCount();

	public void adminDeleteOne(AdminDto adminDto);


}
