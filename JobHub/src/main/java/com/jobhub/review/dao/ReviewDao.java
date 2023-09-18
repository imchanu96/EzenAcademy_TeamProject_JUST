package com.jobhub.review.dao;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewDao {

	List<ReviewDto> reviewSelectList(int start, int end);
	
	public int reviewInsertOne(ReviewDto reviewDto);

	public int reviewSelectTotalCount();
	
}
