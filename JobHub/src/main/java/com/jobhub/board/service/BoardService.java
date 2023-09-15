package com.jobhub.board.service;

import java.util.List;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dto.PersonalMemberDto;

public interface BoardService {

	PersonalMemberDto personalMemberExist(String pId, String pPwd);
	
	List<BoardDto> boardSelectList();
}
