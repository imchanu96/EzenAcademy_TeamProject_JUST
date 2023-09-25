package com.jobhub.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.personal.dto.PersonalMemberDto;

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


	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace + "memberSelectTotalCount");
	}


	@Override
	public void adminDeleteOne(AdminDto adminDto) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + "adminDeleteOne", adminDto);
	}


	@Override
	public void personalDeleteOne(AdminDto adminDto) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + "personalDeleteOne", adminDto); 
	}


	@Override
	public void companyDeleteOne(AdminDto adminDto) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + "companyDeleteOne", adminDto);
	}


	@Override
	public List<PersonalMemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "memberSelectList");
	}

}
