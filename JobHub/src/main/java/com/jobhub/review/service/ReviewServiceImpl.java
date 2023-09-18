package com.jobhub.review.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.review.dao.ReviewDao;
import com.jobhub.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService {

	private static final Logger log
		= LoggerFactory.getLogger(ReviewServiceImpl.class);
	
	@Autowired
	public ReviewDao reviewDao;

	@Override
	public List<ReviewDto> reviewSelectList(int start, int end) {

		return reviewDao.reviewSelectList(start, end);
	}
	
	@Override
	public void reviewInsertOne(ReviewDto reviewDto) throws Exception {

		reviewDao.reviewInsertOne(reviewDto);
	}

	@Override
	public int reviewSelectTotalCount() {
		
		return reviewDao.reviewSelectTotalCount();
	}
}


