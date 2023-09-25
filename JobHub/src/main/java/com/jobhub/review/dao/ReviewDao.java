package com.jobhub.review.dao;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewDao {

	List<ReviewDto> reviewSelectList(int start, int end, int cNo);
	List<ReviewDto> reviewSelectList(int cNo);
	
	public int reviewInsertOne(ReviewDto reviewDto);

	public int reviewSelectTotalCount(int cNo);
	int reviewSelectCNo(int pNo);
	
	ReviewDto reviewSelectOne(int rNo);
	
	public void reviewUpdateOne(ReviewDto reviewDto);
	
	public int reviewDeleteOne(int rNo);
}
