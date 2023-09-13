package com.jobhub.company.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.company.dto.CompanyMemberDto;

@Repository
public class CompanyMemberDaoImpl implements CompanyMemberDao {

	String namespace = "com.jobhub.company.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public CompanyMemberDto companyMemberExist(String cCode, String cPwd) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("cCode", cCode);
		paramMap.put("cPwd", cPwd);
		
		return sqlSession.selectOne(namespace + "companyMemberExist", paramMap);
	}
	
	

}
