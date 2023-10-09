package com.jobhub.board.dao;

import java.util.List;
import java.util.Map;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.board.dto.CommentDto;

public interface BoardDao {

	public List<BoardDto> boardSelectList(Map<String, Object> map);
	
	public List<BoardDto> boardSelectList(int start, int end, int perNo);
	
	public int boardSelectTotalCount();
	
	public int boardInsertOne(BoardDto boardDto);
	
	public BoardDto boardSelectOne(int no);
	
	public void boardUpdateOne(BoardDto boardDto);
	
	public int boardDeleteOne(int no);
	
	public void increaseViews(int no);
	
	public List<CommentDto> readReply(int bNo);
	
}
