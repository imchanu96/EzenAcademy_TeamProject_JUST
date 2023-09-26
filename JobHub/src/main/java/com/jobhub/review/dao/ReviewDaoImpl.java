package com.jobhub.review.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.jobhub.review.";
	
	@Override
	public List<ReviewDto> reviewSelectList(int start, int end, int cNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("cNo", cNo);
		
		return sqlSession.selectList("com.jobhub.review.reviewSelectList", map);
	}
	
	@Override
	public List<ReviewDto> reviewSelectList(int cNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cNo", cNo);
		
		return sqlSession.selectList("com.jobhub.review.reviewSelectAllList", map);
	}
	
	@Override
	public int reviewInsertOne(ReviewDto reviewDto, int cNo) {
		
		return sqlSession.insert("com.jobhub.review.reviewInsertOne", reviewDto);
	}

	@Override
	public int reviewSelectTotalCount(int cNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cNo", cNo);
		
		return (int)sqlSession.selectOne("com.jobhub.review.reviewSelectTotalCount", map);
	}

	@Override
	public int reviewSelectCNo(int pNo) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pNo", pNo);
		
		return sqlSession.selectOne("com.jobhub.review.reviewSelectCNo", map);
	}

	@Override
	public ReviewDto reviewSelectOne(int rNo) {

		ReviewDto reviewDto = sqlSession.selectOne("com.jobhub.review.reviewSelectOne", rNo);
		
		return reviewDto;
	}

	@Override
	public void reviewUpdateOne(ReviewDto reviewDto, int rCNo) {
		
		sqlSession.update("com.jobhub.review.reviewUpdateOne", reviewDto);
	}

	@Override
	public int reviewDeleteOne(int rNo) {

		return sqlSession.delete("com.jobhub.review.reviewDeleteOne", rNo);
	}
}
