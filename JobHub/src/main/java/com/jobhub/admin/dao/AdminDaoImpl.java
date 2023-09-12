package com.jobhub.admin.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.admin.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao{

	String namespace = "com.jobhub.admin.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public AdminDto adminExist(String email, String password) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		
		return sqlSession.selectOne(namespace + "memberExist", paramMap);
	}

}
