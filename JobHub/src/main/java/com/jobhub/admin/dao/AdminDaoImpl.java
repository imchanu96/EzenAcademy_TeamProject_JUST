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
	public AdminDto adminExist(String id, String pwd) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("pId", id);
		paramMap.put("pPwd", pwd);
		
		return sqlSession.selectOne(namespace + "adminExist", paramMap);
	}

}
