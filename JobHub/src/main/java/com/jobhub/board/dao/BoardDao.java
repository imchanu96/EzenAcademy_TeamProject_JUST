package com.jobhub.board.dao;

import java.util.List;

import com.jobhub.board.dto.BoardDto;

public interface BoardDao {

	public List<BoardDto> boardSelectList();
	
	public int boardInsertOne(BoardDto boardDto);
	
	public BoardDto boardSelectOne(int no);
	
	public void boardUpdateOne(BoardDto boardDto);
	
	public int boardDeleteOne(int no);
	
}
