package com.jobhub.admin.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.admin.dao.AdminDao;
import com.jobhub.admin.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService{

	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public AdminDao adminDao;
	
	@Override
	public AdminDto adminExist(String email, String password) {
		// TODO Auto-generated method stub
		return adminDao.adminExist(email, password);
	}

}
