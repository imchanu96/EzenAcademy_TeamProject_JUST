package com.jobhub.ajax.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.personal.dto.ResumeDto;

@Repository
public class AjaxDaoImpl implements AjaxDao{
	
	String personalNamespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	@Override
	public ResumeDto showPersonalResume(int pNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pNo", pNo);

		
		return sqlSession.selectOne(personalNamespace + "showResume", map);
	}

}
