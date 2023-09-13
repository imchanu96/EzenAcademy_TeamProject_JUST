package com.jobhub.review.dao;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewDao {

	List<ReviewDto> reviewSelectList(int start, int end);

	public ReviewDto reviewExist(int rNo);
	public int reviewInsertOne(ReviewDto reviewDto);
	public ReviewDto reviewSelectOne(int no);
	public int reviewUpdateOne(ReviewDto reviewDto);
	public int reviewDeleteOne(int no);

	public int reviewSelectTotalCount();
	
}
