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
	public CompanyMemberDto companyMemberExist(String comCode, String comPwd) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("comCode", comCode);
		paramMap.put("comPwd", comPwd);
		
		return sqlSession.selectOne(namespace + "companyMemberExist", paramMap);
	}

	@Override
	public CompanyMemberDto companyMemberSelectOne(int comNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "companyMemberSelectOne", comNo);
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
	public CompanyMemberDto companyMemberSearchId(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "companyMemberSearchId", companyMemberDto);
	}

	@Override
	public CompanyMemberDto companyMemberSearchPwd(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "companyMemberSearchPwd", companyMemberDto);
	}
	
	@Override
	public void companyMembercInChargeNameUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		
		sqlSession.update(namespace + "companyMembercInChargeNameUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercInChargeEmailUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercInChargeEmailUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercInChargePhoneNumUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercInChargePhoneNumUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercNameUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercNameUpdateOne", companyMemberDto);
	}
	
	@Override
	public void companyMembercAddUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercAddUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercTypeUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercTypeUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercEstDateUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercEstDateUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercHomepageUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercHomepageUpdateOne", companyMemberDto);
	}

	@Override
	public void companyMembercIntroduceUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyMembercIntroduceUpdateOne", companyMemberDto);
	}

	@Override
	public List<CompanyMemberDto> companyMemSelectList() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		return sqlSession.selectList(namespace + "companyMemSelectList", map);
	}

	@Override
	public void preferUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "preferUpdateOne", map);
	}

}
