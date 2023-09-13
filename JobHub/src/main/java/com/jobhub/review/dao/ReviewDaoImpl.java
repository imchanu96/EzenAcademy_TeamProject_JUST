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
	
	String namespace = "com.jobhub.review.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReviewDto> reviewSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("com.jobhub.review.reviewSelectList", map);
	}

	@Override
	public ReviewDto reviewExist(int rNo) {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("rNo", rNo);
		
		return sqlSession.selectOne("com.edu.review.reviewExist", paramMap);
	}

	@Override
	public int reviewInsertOne(ReviewDto reviewDto) {
		
		return sqlSession.insert("com.edu.review.reviewInsertOne", reviewDto);
	}

	@Override
	public ReviewDto reviewSelectOne(int no) {
		
		ReviewDto reviewDto = sqlSession.selectOne("com.edu.member.memberSelectOne", no);
		
		return reviewDto;
	}

	@Override
	public int reviewUpdateOne(ReviewDto reviewDto) {
		
		return sqlSession.update("com.edu.review.reviewUpdateOne", reviewDto);
	}

	@Override
	public int reviewDeleteOne(int rNo) {

		return sqlSession.delete("com.edu.review.reviewDeleteOne", rNo);
	}

	@Override
	public int reviewSelectTotalCount() {

		return (int)sqlSession.selectOne("com.edu.review.reviewSelectTotalCount");
	}
	
}
