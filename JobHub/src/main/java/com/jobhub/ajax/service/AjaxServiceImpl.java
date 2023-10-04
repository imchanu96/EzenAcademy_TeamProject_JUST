package com.jobhub.ajax.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.ajax.dao.AjaxDao;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.LetterDto;

@Service
public class AjaxServiceImpl implements AjaxService {

	@Autowired
	public AjaxDao ajaxDao;
	@Autowired
	public PersonalMemberDao personalDao;
	
	@Override
	public Map<String, Object> showPersonalResume(int perNo) {
		// TODO Auto-generated method stub
		return personalDao.personalMemberShowResume(perNo);
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
