package com.jobhub.board.dao;

import java.util.List;

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

		return sqlSession.selectList(namespace + "boardSelectList");
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
}
