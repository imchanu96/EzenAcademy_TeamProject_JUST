package com.jobhub.review.dao;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewDao {

	public List<ReviewDto> reviewSelectList();
	
	public int reviewInsertOne(ReviewDto reviewDto);
	
}
