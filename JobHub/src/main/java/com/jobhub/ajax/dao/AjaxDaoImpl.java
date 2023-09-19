package com.jobhub.ajax.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.ResumeDto;

@Repository
public class AjaxDaoImpl implements AjaxDao{
	
	String personalNamespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public ResumeDto showPersonalResume(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(personalNamespace + "showResume", paramMap);
	}
	
	@Override
	public LetterDto showPersonalLetter(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(personalNamespace + "showLetter", paramMap);
	}

}
