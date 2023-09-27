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
	public List<ReviewDto> reviewSelectList(int start, int end, int comNo) {

		return reviewDao.reviewSelectList(start, end, comNo);
	}
	
	@Override
	public List<ReviewDto> reviewSelectList(int comNo) {

		return reviewDao.reviewSelectList(comNo);
	}
	
	@Override
	public void reviewInsertOne(ReviewDto reviewDto, int comNo) throws Exception {

		reviewDao.reviewInsertOne(reviewDto, comNo);
	}

	@Override
	public int reviewSelectTotalCount(int comNo) {
		
		return reviewDao.reviewSelectTotalCount(comNo);
	}

	@Override
	public int companyMemberSelectTotalCount() {

		return companyMemberDao.companyMemberSelectTotalCount();
	}
	
	@Override
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end) {

		return companyMemberDao.companyMemberSelectList(start, end);
	}

	
	
	
	@Override
	public CompanyMemberDto companyMemberSelectOne(int comNo) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSelectOne(comNo);
	}

	@Override
	public int reviewSelectCNo(int perNo) {
		// TODO Auto-generated method stub
		return reviewDao.reviewSelectCNo(perNo);
	}

	@Override
	public ReviewDto reviewSelectOne(int reviewNo) {
		
		ReviewDto reviewDto = reviewDao.reviewSelectOne(reviewNo);
		
		return reviewDto;
	}

	@Override
	public void reviewUpdateOne(ReviewDto reviewDto, int comNo) {
		
		reviewDao.reviewUpdateOne(reviewDto, comNo);
	}

	@Override
	public int reviewDeleteOne(int reviewNo) {

		return reviewDao.reviewDeleteOne(reviewNo);
	}
}


