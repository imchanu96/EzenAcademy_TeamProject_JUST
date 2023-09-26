package com.jobhub.review.service;

import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface ReviewService {
	
	public int reviewSelectTotalCount(int cNo);
	public List<ReviewDto> reviewSelectList(int start, int end, int cNo);
	public List<ReviewDto> reviewSelectList(int cNo);
	
	public void reviewInsertOne(ReviewDto reviewDto, int pNo) throws Exception;
	
	public int companyMemberSelectTotalCount();
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end);
	
	public CompanyMemberDto companyMemberSelectOne(int cNo);
	public int reviewSelectCNo(int cNo);
	
	public ReviewDto reviewSelectOne(int rNo);
	
	public void reviewUpdateOne(ReviewDto reviewDto, int rCNo);
	
	public int reviewDeleteOne(int rNo);
}
