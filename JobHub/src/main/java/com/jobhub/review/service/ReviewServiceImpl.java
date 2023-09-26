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
	public List<ReviewDto> reviewSelectList(int cNo) {

		return reviewDao.reviewSelectList(cNo);
	}
	
	@Override
	public void reviewInsertOne(ReviewDto reviewDto, int cNo) throws Exception {

		reviewDao.reviewInsertOne(reviewDto, cNo);
	}

	@Override
	public int reviewSelectTotalCount(int cNo) {
		
		return reviewDao.reviewSelectTotalCount(cNo);
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
	public CompanyMemberDto companyMemberSelectOne(int cNo) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSelectOne(cNo);
	}

	@Override
	public int reviewSelectCNo(int pNo) {
		// TODO Auto-generated method stub
		return reviewDao.reviewSelectCNo(pNo);
	}

	@Override
	public ReviewDto reviewSelectOne(int rNo) {
		
		ReviewDto reviewDto = reviewDao.reviewSelectOne(rNo);
		
		return reviewDto;
	}

	@Override
	public void reviewUpdateOne(ReviewDto reviewDto, int rCNo) {
		
		reviewDao.reviewUpdateOne(reviewDto, rCNo);
	}

	@Override
	public int reviewDeleteOne(int rNo) {

		return reviewDao.reviewDeleteOne(rNo);
	}
}


