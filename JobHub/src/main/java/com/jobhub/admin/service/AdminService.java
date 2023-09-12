package com.jobhub.admin.service;

import com.jobhub.admin.dto.AdminDto;

public interface AdminService {

	AdminDto adminExist(String email, String password);

}
