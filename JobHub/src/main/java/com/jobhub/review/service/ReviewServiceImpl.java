package com.jobhub.review.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.review.dao.ReviewDao;
import com.jobhub.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService {

	private static final Logger log
		= LoggerFactory.getLogger(ReviewServiceImpl.class);
	
	@Autowired
	public ReviewDao reviewDao;

	@Override
	public List<ReviewDto> reviewSelectList() {

		return reviewDao.reviewSelectList();
	}
	
	@Override
	public void reviewInsertOne(ReviewDto reviewDto) throws Exception {

		reviewDao.reviewInsertOne(reviewDto);
		
//		int parentSeq = reviewDto.getrNo();
//			List<Map<String, Object>> list = 
//				fileUtils.parseInsertFileInfo(parentSeq, multipartHttpServletRequest);
//			// 트랜잭션의 시작. 여러 건 업로드
//			for (int i = 0; i < list.size(); i++) {
//				memberDao.insertFile(list.get(i));
//			}
	}
}


