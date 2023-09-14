package com.jobhub.board.dao;

import java.util.List;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface BoardDao {

	PersonalMemberDto personalMemberExist(String pId, String pPwd);

	public List<BoardDto> boardSelectList();
}
