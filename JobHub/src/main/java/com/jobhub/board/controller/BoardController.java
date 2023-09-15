package com.jobhub.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.board.service.BoardService;

@Controller
public class BoardController {

	private static final Logger log 
	= LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/board/board.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Model model) {
		// log4j
		log.info("Welcome BoardController boardList!");
		
	    List<BoardDto> boardList = boardService.boardSelectList();
	 
	    model.addAttribute("boardList", boardList);

	    return "board/BoardList";
	}
	
}
