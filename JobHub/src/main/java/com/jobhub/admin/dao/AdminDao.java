package com.jobhub.admin.dao;

import com.jobhub.admin.dto.AdminDto;

public interface AdminDao {

	AdminDto adminExist(String id, String pwd);

}
