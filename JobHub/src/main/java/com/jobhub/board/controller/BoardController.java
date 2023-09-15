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
import com.jobhub.review.dto.ReviewDto;

@Controller
public class BoardController {

	private static final Logger log 
	= LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
//	게시판 리스트 조회
	@RequestMapping(value = "/board/board.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Model model) {
		// log4j
		log.info("Welcome BoardController boardList!");
		
	    List<BoardDto> boardList = boardService.boardSelectList();
	 
	    model.addAttribute("boardList", boardList);

	    return "board/BoardList";
	}
	
//	게시물 작성 페이지 열기(글쓰기버튼 클릭)
	@RequestMapping(value = "/board/postAdd.do", method = RequestMethod.GET)
	public String postAdd(Model model) {
		log.info("Welcome BoardController postAdd!");
		
		return "board/BoardWrite";
	}
	
//	새글 작성 완료
	@RequestMapping(value = "/board/addCtr.do", method = RequestMethod.POST)
	public String postAdd(BoardDto boardDto, Model model) {
		log.info("Welcome BoardController postAdd!" + boardDto);
		
			try {
				boardService.boardInsertOne(boardDto);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/board/board.do";
	}
}
