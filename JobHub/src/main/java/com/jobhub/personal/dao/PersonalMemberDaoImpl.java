package com.jobhub.personal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

		try {
			map.put("resumeNo", resumeDto.getResumeNo());
			
			List<CareerDto> careerDtoList = sqlSession.selectList(namespace 
					+ "personalMemberShowCareer", map);
			
			List<EducationDto> educationDtoList = sqlSession.selectList(namespace 
					+ "personalMemberShowEducation", map);
			resultMap.put("careerDtoList", careerDtoList);
			resultMap.put("educationDtoList", educationDtoList);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return resultMap;
	}
	
	@Override
	public LetterDto personalMembershowLetter(int perNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("perNo", perNo);
		
		return sqlSession.selectOne(namespace + "personalMemberShowLetter", map);
	}
	
	@Override
	public EducationDto personalMemberCheckEducation(EducationDto educationDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace + "personalMemberCheckEducation", educationDto);
	}


	@Override
	public CareerDto personalMemberCheckCareer(CareerDto careerDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace + "personalMemberCheckCareer", careerDto);
	}

	@Override
	public void personalResumeAddOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "personalResumeAddOne", resumeDto);
	}
	
	@Override
	public void personalResumeUpdateOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		
//		sqlSession.select(namespace + , null);
		
		sqlSession.update(namespace + "personalresumeUpdateOne", resumeDto);
	}

	@Override
	public void personalLetterAddOne(LetterDto letterDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "personalLetterAddOne", letterDto);
	}

	@Override
	public void PersonalLetterUpdateOne(LetterDto letterDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "PersonalLetterUpdateOne", letterDto);
	}

	@Override
	public void personalMemberEducationAddOne(EducationDto educationDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "personalEducationInsertOne", educationDto);
	}


	@Override
	public void personalMemberCareerAddOne(CareerDto careerDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "personalCareerInsertOne", careerDto);
	}


	@Override
	public void personalMemberEducationUpdateOne(EducationDto educationDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalEducationUpdateOne", educationDto);
	}


	@Override
	public void personalMemberCareerUpdateOne(CareerDto careerDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalCareerUpdateOne", careerDto);
	}

	@Override
	public int personalUpdateTemporarily(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "personalUpdateTemporarily", personalMemberDto);
	}


	@Override
	public int personalUpdatePermission(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "personalUpdatePermission", personalMemberDto);
	}


	


	


	
	
}

