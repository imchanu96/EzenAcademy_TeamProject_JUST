package com.jobhub.board.controller;

import java.util.List;
import java.util.Map;

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
	
//	게시판 리스트 조회
	@RequestMapping(value = "/board/list.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Model model) {
		// log4j
		log.info("Welcome BoardController boardList!");
		
	    List<BoardDto> boardList = boardService.boardSelectList();
	 
	    model.addAttribute("boardList", boardList);

	    return "board/BoardList";
	}
	
//	게시물 작성 페이지 열기(글쓰기버튼 클릭)
	@RequestMapping(value = "/board/add.do", method = RequestMethod.GET)
	public String postAdd(Model model) {
		log.info("Welcome BoardController boardAdd!");
		
		return "board/BoardWrite";
	}
	
//	새글 작성 완료
	@RequestMapping(value = "/board/addCtr.do", method = RequestMethod.POST)
	public String postAdd(BoardDto boardDto, Model model) {
		log.info("Welcome BoardController boardAdd!" + boardDto);
		
			try {
				boardService.boardInsertOne(boardDto);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/board/list.do";
	}
	
	//게시글 조회
	@RequestMapping(value = "/board/listOne.do", method = RequestMethod.GET)
	public String memberListOne(int no, Model model) {
		log.debug("Welcome BoardController boardListOne!", no);
		
		Map<String, Object> map = boardService.boardSelectOne(no);
		
		BoardDto boardDto = (BoardDto)map.get("boardDto");
		
		model.addAttribute("boardDto", boardDto);
		
		return "board/BoardView";
	}
	
	//게시글 수정 화면 이동
	@RequestMapping(value = "/board/update.do", method = RequestMethod.GET)
	public String boardUpdate(int no, Model model) {
		log.info("Welcome BoardController boardUpdate!" + no);
		
		Map<String, Object> map = boardService.boardSelectOne(no);
		
		BoardDto boardDto = (BoardDto)map.get("boardDto");
		
		model.addAttribute("boardDto", boardDto);
		
		return "board/BoardUpdate";
	}
	
	//게시글 수정
	@RequestMapping(value = "/board/updateCtr.do", method = RequestMethod.POST)
	public String boardUpdateCtr(BoardDto boardDto, Model model) {
		log.info("Welcome BoardController boardUpdateCtr!" + boardDto);

		try {
			boardService.boardUpdateOne(boardDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/board/listOne.do?no="+boardDto.getbNo();
	}
	
	//게시글 삭제
	@RequestMapping(value = "/board/delete.do", method = RequestMethod.GET)
	public String boardDelete(int no, Model model) {
		log.info("Welcome BoardController boardDelete!" + no);
		
		boardService.boardDeleteOne(no);
		
		return "redirect:/board/list.do";
	}
		
}
