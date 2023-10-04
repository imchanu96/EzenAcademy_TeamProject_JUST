package com.jobhub.personal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
	
@Repository
public class PersonalMemberDaoImpl implements PersonalMemberDao {
	
	String namespace = "com.jobhub.personal.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public PersonalMemberDto personalMemberExist(String perId, String perPwd) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("perId", perId);
		paramMap.put("perPwd", perPwd);
		
		return sqlSession.selectOne(namespace + "personalMemberExist", paramMap);
	}


	@Override
	public int memberSelectOne(int perNo) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "personalMemberSelectOne", perNo);
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
	public PersonalMemberDto personalMemberSearchId(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "personalMemberSearchId", personalMemberDto);
	}
	
	@Override
	public PersonalMemberDto personalMemberSearchPwd(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "personalMemberSearchPwd", personalMemberDto);
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


	public Map<String, Object> personalMemberShowResume(int perNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("perNo", perNo);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		ResumeDto resumeDto = sqlSession.selectOne(namespace + "personalMemberShowResume", map);
		resultMap.put("resumeDto", resumeDto);

		map.put("resumeNo", resumeDto.getResumeNo());
		
		List<CareerDto> careerDtoList = sqlSession.selectList(namespace 
				+ "personalMemberShowCareer", map);
		
		List<EducationDto> educationDtoList = sqlSession.selectList(namespace 
				+ "personalMemberShowEducation", map);
		resultMap.put("careerDtoList", careerDtoList);
		resultMap.put("educationDtoList", educationDtoList);
		
		return resultMap;
	}

	@Override
	public void PersonalresumeUpdateOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "PersonalresumeUpdateOne", resumeDto);
	}


	@Override
	public LetterDto personalMembershowLetter(int perNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("perNo", perNo);
		
		return sqlSession.selectOne(namespace + "personalMembershowLetter", map);
	}


	@Override
	public void PersonalLetterUpdateOne(LetterDto letterDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "PersonalLetterUpdateOne", letterDto);
	}


	@Override
	public List<BoardDto> personalMemberMyPostList(int start, int end) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("com.jobhub.board.personalMemberMyPostList", map);
	}


	@Override
	public int personalMemberMyPostListSelectTotalCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.jobhub.board.personalMemberMyPostListSelectTotalCount");
	}


	@Override
	public int personalMemberFindPwd(String perPwd, String perEmail, String perId) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("perEmail", perEmail);
		map.put("perId", perId);
		map.put("perPwd", perPwd);
		
		return sqlSession.update(namespace + "personalMemberFindPwd", map);
	}

}

