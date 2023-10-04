package com.jobhub.ajax.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.review.dto.ReviewDto;

@Repository
public class AjaxDaoImpl implements AjaxDao{
	
	String personalNamespace = "com.jobhub.personal.";
	String reviewNamespace = "com.jobhub.review.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public ResumeDto showPersonalResume(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(personalNamespace + "personalMemberShowResume", paramMap);
	}
	
	@Override
	public LetterDto showPersonalLetter(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		LetterDto dto = sqlSession.selectOne(personalNamespace + "personalMemberShowLetter", paramMap);
		return dto;
	}

	@Override
	public int countPersonalReview(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(reviewNamespace + "countPersonalReview", paramMap);
	}

}
