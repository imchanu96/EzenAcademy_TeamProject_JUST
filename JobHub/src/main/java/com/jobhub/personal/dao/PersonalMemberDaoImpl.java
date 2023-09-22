package com.jobhub.personal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
	
@Repository
public class PersonalMemberDaoImpl implements PersonalMemberDao {
	
	String namespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public PersonalMemberDto personalMemberExist(String pId, String pPwd) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("pId", pId);
		paramMap.put("pPwd", pPwd);
		
		return sqlSession.selectOne(namespace + "personalMemberExist", paramMap);
	}


	@Override
	public int memberSelectOne(int pNo) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "personalMemberSelectOne", pNo);
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

	@Override
	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalMemberNickNameUpdateOne", personalMemberDto);
	}
	
	@Override
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalMemberPasswordUpdateOne", personalMemberDto);
	}
	
	@Override
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalMemberPhoneNumUpdateOne", personalMemberDto);
	}


	@Override
	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalMemberEmailUpdateOne", personalMemberDto);
	}
	
	@Override
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalMemberKeywordUpdateOne", personalMemberDto);
	}

	@Override
	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map) {
		// TODO Auto-generated method stub		
		
		return sqlSession.selectList(namespace + "personalInfoList", map);
	}


	@Override
	public List<PersonalMemberDto> personalMemberSelectList() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		return sqlSession.selectList(namespace + "personalMemberSelectList", map);
	}


	public ResumeDto personalMemberShowResume(int pNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pNo", pNo);
		
		return sqlSession.selectOne(namespace + "personalMemberShowResume", map);
	}


}

