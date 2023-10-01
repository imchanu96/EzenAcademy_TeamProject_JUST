package com.jobhub.recommend.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.admin.dao.AdminDao;
import com.jobhub.admin.service.AdminServiceImpl;
import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.recommend.dao.RecommendDao;
import com.jobhub.review.dao.ReviewDao;

@Service
public class RecommendServiceImpl implements RecommendService{

private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public RecommendDao recommendDao;
	@Autowired
	public PersonalMemberDao personalMemberDao;
	@Autowired
	public CompanyMemberDao companyMemberDao;
	@Autowired
	public ReviewDao reviewDao;
	
	
	
	
	
}
