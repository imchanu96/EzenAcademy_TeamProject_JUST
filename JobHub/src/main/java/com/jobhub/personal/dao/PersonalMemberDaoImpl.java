package com.jobhub.personal.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.personal.dto.PersonalMemberDto;

@Repository
public class PersonalMemberDaoImpl implements PersonalMemberDao {
	
	String namespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public PersonalMemberDto personalMemberExist(String email, String password) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		
		return sqlSession.selectOne(namespace + "memberExist", paramMap);
	}

}
