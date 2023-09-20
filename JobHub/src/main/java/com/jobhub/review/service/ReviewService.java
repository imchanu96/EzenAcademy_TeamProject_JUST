package com.jobhub.review.service;

import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface ReviewService {

	public List<ReviewDto> reviewSelectList();
	
	public int reviewSelectTotalCount();
	public List<ReviewDto> reviewSelectList(int start, int end);
	
	public void reviewInsertOne(ReviewDto reviewDto) throws Exception;
	
	public int companyMemberSelectTotalCount();
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end);
	
}
