package com.jobhub.review.service;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewService {

	public List<ReviewDto> reviewSelectList(int start, int end);
	public List<ReviewDto> reviewSelectList();
	
	public void reviewInsertOne(ReviewDto reviewDto) throws Exception;

	public int reviewSelectTotalCount();

	
	
}
