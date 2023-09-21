package com.jobhub.review.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.review.dao.ReviewDao;
import com.jobhub.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService {

	private static final Logger log
		= LoggerFactory.getLogger(ReviewServiceImpl.class);
	
	@Autowired
	public ReviewDao reviewDao;
	@Autowired
	public CompanyMemberDao companyMemberDao;

	@Override
	public List<ReviewDto> reviewSelectList(int start, int end, int cNo) {

		return reviewDao.reviewSelectList(start, end, cNo);
	}
	
	@Override
	public List<ReviewDto> reviewSelectList() {

		return reviewDao.reviewSelectList();
	}
	
	@Override
	public void reviewInsertOne(ReviewDto reviewDto) throws Exception {

		reviewDao.reviewInsertOne(reviewDto);
	}

	@Override
	public int reviewSelectTotalCount() {
		
		return reviewDao.reviewSelectTotalCount();
	}

	@Override
	public int companyMemberSelectTotalCount() {

		return companyMemberDao.companyMemberSelectTotalCount();
	}
	
	@Override
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end) {

		return companyMemberDao.companyMemberSelectList(start, end);
	}

	
}


