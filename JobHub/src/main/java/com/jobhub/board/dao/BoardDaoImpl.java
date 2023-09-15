package com.jobhub.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.board.dto.BoardDto;

@Repository
public class BoardDaoImpl implements BoardDao{

	String namespace = "com.jobhub.board.";

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<BoardDto> boardSelectList() {

//		Map<String, Object> map = new HashMap<String, Object>();
		
		return sqlSession.selectList(namespace + "boardSelectList");
	}
}
