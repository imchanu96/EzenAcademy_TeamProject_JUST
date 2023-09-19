package com.jobhub.ajax.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.ajax.dao.AjaxDao;
import com.jobhub.personal.dto.ResumeDto;

@Service
public class AjaxServiceImpl implements AjaxService {

	@Autowired
	public AjaxDao ajaxDao;
	
	@Override
	public ResumeDto showPersonalResume(int pNo) {
		// TODO Auto-generated method stub
		
		return ajaxDao.showPersonalResume(pNo);
	}

}
