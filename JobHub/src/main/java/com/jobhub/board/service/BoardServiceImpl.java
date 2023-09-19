package com.jobhub.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<BoardDto> boardSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return boardDao.boardSelectList(start, end);
	}

	@Override
	public int boardSelectTotalCount() {
		// TODO Auto-generated method stub
		return boardDao.boardSelectTotalCount();
	}
	
	@Override
	public PersonalMemberDto personalMemberExist(String pId, String pPwd) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberExist(pId, pPwd);
	}

	@Override
	public void boardInsertOne(BoardDto boardDto) throws Exception {
		// TODO Auto-generated method stub
		boardDao.boardInsertOne(boardDto);
	}

	@Override
	public Map<String, Object> boardSelectOne(int no) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		BoardDto boardDto = boardDao.boardSelectOne(no);
		resultMap.put("boardDto", boardDto);
		
		return resultMap;
	}

	@Override
	public void boardUpdateOne(BoardDto boardDto) {
		
		boardDao.boardUpdateOne(boardDto);
	}

	@Override
	public int boardDeleteOne(int no) {

		return boardDao.boardDeleteOne(no);
	}

	@Override
	public void increaseViews(int no) {
		// TODO Auto-generated method stub
		boardDao.increaseViews(no);
	}

}
