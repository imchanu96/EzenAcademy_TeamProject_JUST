package com.jobhub.board.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.board.dao.BoardDao;
import com.jobhub.board.dto.BoardDto;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;

@Service
public class BoardServiceImpl implements BoardService{

	private static final Logger log = LoggerFactory.getLogger(BoardService.class);
	
	@Autowired
	public PersonalMemberDao personalMemberDao;
	
	@Autowired
	public BoardDao boardDao;
	
	@Override
	public PersonalMemberDto personalMemberExist(String pId, String pPwd) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberExist(pId, pPwd);
	}

	@Override
	public List<BoardDto> boardSelectList() {
		// TODO Auto-generated method stub
		return boardDao.boardSelectList();
	}

	@Override
	public void boardInsertOne(BoardDto boardDto) throws Exception {
		// TODO Auto-generated method stub
		boardDao.boardInsertOne(boardDto);
	}

}
