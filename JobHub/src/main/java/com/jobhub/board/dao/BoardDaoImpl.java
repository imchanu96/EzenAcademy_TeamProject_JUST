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
	public List<BoardDto> boardSelectList(int start, int end) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("com.jobhub.board.boardSelectList", map);
	}

	@Override
	public int boardSelectTotalCount() {

		return (int)sqlSession.selectOne("com.jobhub.board.boardSelectTotalCount");
	}
	
	@Override
	public int boardInsertOne(BoardDto boardDto) {
		
		return sqlSession.insert("com.jobhub.board.boardInsertOne", boardDto);
	}

	@Override
	public BoardDto boardSelectOne(int no) {
		
		BoardDto boardDto = sqlSession.selectOne("com.jobhub.board.boardSelectOne", no);
		return boardDto;
	}

	@Override
	public void boardUpdateOne(BoardDto boardDto) {

		sqlSession.update("com.jobhub.board.boardUpdateOne", boardDto);
	}

	@Override
	public int boardDeleteOne(int no) {

		return sqlSession.delete("com.jobhub.board.boardDeleteOne", no);
	}

	@Override
	public void increaseViews(int no) {
		// TODO Auto-generated method stub
		sqlSession.update("com.jobhub.board.increaseViews", no);
	}
	
}
