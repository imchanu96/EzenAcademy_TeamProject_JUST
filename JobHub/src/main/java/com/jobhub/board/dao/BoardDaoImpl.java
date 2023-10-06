package com.jobhub.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.board.dto.CommentDto;

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
		
		return sqlSession.selectList(namespace + "boardSelectList", map);
	}

	@Override
	public List<BoardDto> boardSelectList(int start, int end, int perNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("perNo", perNo);
		
		return sqlSession.selectList(namespace + "boardSelectList", map);
	}
	
	@Override
	public int boardSelectTotalCount() {

		return (int)sqlSession.selectOne(namespace + "boardSelectTotalCount");
	}
	
	@Override
	public int boardInsertOne(BoardDto boardDto) {
		
		return sqlSession.insert(namespace + "boardInsertOne", boardDto);
	}

	@Override
	public BoardDto boardSelectOne(int no) {
		
		BoardDto boardDto = sqlSession.selectOne(namespace + "boardSelectOne", no);
		return boardDto;
	}

	@Override
	public List<CommentDto> readReply(int bNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "readReply", bNo);
	}
	
	@Override
	public void boardUpdateOne(BoardDto boardDto) {

		sqlSession.update(namespace + "boardUpdateOne", boardDto);
	}

	@Override
	public int boardDeleteOne(int no) {

		return sqlSession.delete(namespace + "boardDeleteOne", no);
	}

	@Override
	public void increaseViews(int no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "increaseViews", no);
	}

}
