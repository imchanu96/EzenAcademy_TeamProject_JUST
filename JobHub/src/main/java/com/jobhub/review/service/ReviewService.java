package com.jobhub.review.service;

import java.util.List;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface ReviewService {
	
	public int reviewSelectTotalCount(int cNo);
	public List<ReviewDto> reviewSelectList(int start, int end, int comNo);
	public List<ReviewDto> reviewSelectList(int comNo);
	
	public void reviewInsertOne(ReviewDto reviewDto, int perNo) throws Exception;
	
	public int companyMemberSelectTotalCount();
	public List<CompanyMemberDto> companyMemberSelectList(int start, int end);
	
	public CompanyMemberDto companyMemberSelectOne(int comNo);
	public int reviewSelectCNo(int comNo);
	
	public ReviewDto reviewSelectOne(int reviewNo);
	
	public void reviewUpdateOne(ReviewDto reviewDto, int comNo);
	
	public int reviewDeleteOne(int reviewNo);
}
