package com.jobhub.ajax.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.ajax.dao.AjaxDao;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.review.dto.ReviewDto;

@Service
public class AjaxServiceImpl implements AjaxService {

	@Autowired
	public AjaxDao ajaxDao;
	
	@Override
	public ResumeDto showPersonalResume(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return ajaxDao.showPersonalResume(paramMap);
	}

	@Override
	public LetterDto showPersonalLetter(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return ajaxDao.showPersonalLetter(paramMap);
	}

	@Override
	public int countPersonalReview(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return ajaxDao.countPersonalReview(paramMap);
	}

}
