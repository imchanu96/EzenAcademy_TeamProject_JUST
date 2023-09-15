package com.jobhub.review.service;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewService {

//	ReviewDto reviewExist(int rNo);

	public void reviewInsertOne(ReviewDto memberDto) throws Exception;
	
}
