package com.jobhub.personal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

@Repository
public class PersonalMemberDaoImpl implements PersonalMemberDao {
	
	String namespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public PersonalMemberDto personalMemberExist(String id, String password) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("pId", id);
		paramMap.put("pPwd", password);
		
		return sqlSession.selectOne(namespace + "personalMemberExist", paramMap);
	}

	@Override
	public List<PersonalMemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		return sqlSession.selectList(namespace + "memberSelectList", map);
	}

	@Override
	public int memberInsertOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + "personalInsertOne", personalMemberDto);
	}

}
