package com.jobhub.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public CompanyMemberDto companyMemberSelectOne(int cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "companyMemberSelectOne", cNo);
	}
	
	@Override
	public int companyInsertOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.insert(namespace + "companyInsertOne", companyMemberDto);
	}

	@Override
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList(namespace + "companyMemberSelectList", map);
	}

	@Override
	public int companyMemberSelectTotalCount() {
		
		return (int)sqlSession.selectOne(namespace + "companyMemberSelectTotalCount");
	}

	@Override
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		
		sqlSession.update(namespace + "companyMembercInChargeNameUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercInChargeEmailUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercInChargePhoneNumUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercNameUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercNameUpdateOne", companymemberDto);
	}
	
	@Override
	public void companyMembercAddUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercAddUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercTypeUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercTypeUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercEstDateUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercEstDateUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercHomepageUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercHomepageUpdateOne", companymemberDto);
	}

	@Override
	public void companyMembercIntroduceUpdateOne(CompanyMemberDto companymemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercIntroduceUpdateOne", companymemberDto);
	}
}
