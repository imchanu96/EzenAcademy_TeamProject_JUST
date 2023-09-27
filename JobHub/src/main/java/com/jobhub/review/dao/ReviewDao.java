package com.jobhub.review.dao;

import java.util.List;

import com.jobhub.review.dto.ReviewDto;

public interface ReviewDao {

	List<ReviewDto> reviewSelectList(int start, int end, int comNo);
	List<ReviewDto> reviewSelectList(int comNo);
	
	public int reviewInsertOne(ReviewDto reviewDto, int comNo);

	public int reviewSelectTotalCount(int comNo);
	int reviewSelectCNo(int perNo);
	
	ReviewDto reviewSelectOne(int riviewNo);
	
	public void reviewUpdateOne(ReviewDto reviewDto, int comNo);
	
	public int reviewDeleteOne(int reviewNo);
}
