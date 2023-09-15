package com.jobhub.board.dao;

import java.util.List;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface BoardDao {

	public List<BoardDto> boardSelectList();
	
	public int boardInsertOne(BoardDto boardDto);
}
