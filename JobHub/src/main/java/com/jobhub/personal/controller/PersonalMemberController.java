package com.jobhub.personal.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jobhub.board.dao.BoardDao;
import com.jobhub.board.dto.BoardDto;
import com.jobhub.board.service.BoardService;
import com.jobhub.board.util.Paging;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.personal.dto.ResumeRequestDto;
import com.jobhub.personal.service.PersonalMemberService;


@Controller
public class PersonalMemberController {

	private static final Logger log 
		= LoggerFactory.getLogger(PersonalMemberController.class);

	@Autowired
	private PersonalMemberService PersonalMemberService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	BoardDao boardDao;
	
	// 로그인 화면 이동
	@RequestMapping(value = "/personal/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {

		log.info("Welcome PersonalMemberController login!");

		return "personal/auth/PersonalLoginForm";
	}

	// 로그인 클릭 시 이동
	@RequestMapping(value = "/personal/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String perId, String perPwd, HttpSession session, Model model) {

		log.info("Welcome PersonalMemberController loginCtr! " + perId + ", " + perPwd);

		PersonalMemberDto personalMemberDto 
			= PersonalMemberService.personalMemberExist(perId, perPwd);

		String viewUrl = "";
		if (personalMemberDto != null) {
			
			int permission = personalMemberDto.getPerPermission();
			
			if (permission < 2) {
				viewUrl = "personal/auth/emailAuthFail";
			} else {
//				회원이 존재하면 세션에 담는다
				session.setAttribute("personalMemberDto", personalMemberDto);
				session.setAttribute("permission", permission);
				viewUrl = "personal/myPage/PersonalMyPage";
			}
			
		} else {
			viewUrl = "personal/auth/LoginFail";
		}

		return viewUrl;
	}

	// 로그아웃
	@RequestMapping(value = "/personal/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {

		log.info("Welcome MemberController logout!");

		session.invalidate(); // 세션 종료

		return "redirect:/home.do";
	}


	// 회원가입
//	일반.do는 단순 페이지 이동
	@RequestMapping(value = "/personal/add.do", method = RequestMethod.GET)
	public String MemberAdd(Model model) {

		log.debug("Welcome PersonalMemberController personalMemberAdd!");

		return "/personal/auth/JoinPersonal";
	}

	@RequestMapping(value = "/personal/addCtr.do", method = RequestMethod.POST)
	public String memberAddCtr(PersonalMemberDto personalMemberDto, Model model) {
		log.debug("Welcome PersonalMemberController memberAddCtr!" + personalMemberDto);

		try {
			PersonalMemberService.personalInsertOne(personalMemberDto);
		} catch (Exception e) {
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
		return "redirect:/personal/login.do";
	}
	
	//아이디찾기 화면으로 이동
	@RequestMapping(value = "/personal/findId.do", method = RequestMethod.GET)
	public String personalFindId(Model model) {

		log.debug("Welcome PersonalMemberController personalFindId!");

		return "/personal/auth/PersonalFindId";
	}
	
	
	//아이디 결과
	@RequestMapping(value = "/personal/findIdCtr.do", method = RequestMethod.POST)
	public String personalFindIdCtr(HttpSession session, PersonalMemberDto personalMemberDto, Model model) {

		log.debug("Welcome PersonalMemberController personalFindIdCtr!");

		try {
			personalMemberDto = PersonalMemberService.personalMemberSearchId(personalMemberDto);
		    model.addAttribute("personalMemberDto", personalMemberDto);
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/personal/auth/PersonalResultId";
	}
	
	//비밀번호찾기 화면으로 이동
	@RequestMapping(value = "/personal/findPwd.do", method = RequestMethod.GET)
	public String personalFindPwd(Model model) {

		log.debug("Welcome PersonalMemberController personalFindPwd!");

		return "/personal/auth/PersonalFindPwd";
	}
	
	//비밀번호 결과
	@RequestMapping(value = "/personal/findPwdCtr.do", method = RequestMethod.POST)
	public String personalFindPwdCtr(HttpSession session, PersonalMemberDto personalMemberDto, Model model) {

		log.debug("Welcome PersonalMemberController personalFindPwdCtr!");

		try {
			personalMemberDto = PersonalMemberService.personalMemberSearchPwd(personalMemberDto);
		    
		    model.addAttribute("personalMemberDto", personalMemberDto);
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/personal/auth/PersonalResultPwd";
	}
	
	
	@RequestMapping(value = "/personal/personalMyPageList.do", method = RequestMethod.GET)
	public String personalMyPage(HttpSession session, Model model) {
		log.info("Welcome PersonalMemberMyPageList");
		
//		PersonalMemberDto personalMemberDto 
//				= PersonalMemberService.personalMyPageList(session);
//		
//		if(personalMemberDto != null) {
//			
//			session.setAttribute("personalMemberDto", personalMemberDto);
//		}
		
		return "personal/myPage/PersonalMyPage";
	}
	
	@RequestMapping(value = "/personal/personalMyPostList.do",
									method = {RequestMethod.GET, RequestMethod.POST})
	public String myPostList(@RequestParam(defaultValue = "1") int curPage, HttpSession session, Model model) {
		log.info("Welcome PersonalMemberMyPost!: {}", curPage);
		Map<String, Object> map = new HashMap<String, Object>();
		int totalCount = boardService.boardSelectTotalCount(map);
		
		Paging boardPaging = new Paging(totalCount, curPage);
		
		int start = boardPaging.getPageBegin();
		int end = boardPaging.getPageEnd();
		
		PersonalMemberDto pmd = (PersonalMemberDto)session.getAttribute("personalMemberDto");
		int perNo = pmd.getPerNo();
		
	    List<BoardDto> boardList = boardService.boardSelectList(start, end, perNo);

	    HashMap<String, Object> pagingMap = new HashMap<>(); 
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("boardPaging", boardPaging);
		
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("pagingMap", pagingMap);
		
		return "/personal/myPage/PersonalMyPost";
	}

	
	@RequestMapping(value = "/personal/nickNameUpdate.do", method = RequestMethod.GET)
	public String nickNameUpdate(HttpSession session, Model model) {
		log.info("Welcome PersonalMemberNickNameUpdate!");
		
		return "personal/myPage/PersonalMyPageNickNameUpdate";
	}
	
	@RequestMapping(value = "/personal/passwordUpdate.do", method = RequestMethod.GET)
	public String passwordUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberPasswordUpdate!");
		
		return "personal/myPage/PersonalMyPagePasswordUpdate";
	}
	
	@RequestMapping(value = "/personal/phoneNumUpdate.do", method = RequestMethod.GET)
	public String phoneNumUpdate(HttpSession session, Model model) {
		log.info("Welcome PersonalMemberPhoneNumUpdate!");
		
		return "personal/myPage/PersonalMyPagePhoneNumUpdate";
	}
	
	@RequestMapping(value = "/personal/emailUpdate.do", method = RequestMethod.GET)
	public String emailUpdate(HttpSession session, Model model) {
		log.info("Welcome PersonalMemberEmailUpdate!");
		
		return "personal/myPage/PersonalMyPageEmailUpdate";
	}
	
	@RequestMapping(value = "/personal/keywordUpdate.do", method = RequestMethod.GET)
	public String keywordUpdate(HttpSession session, Model model) {
		log.info("Welcome PersonalMemberKeywordUpdate!");
		
		return "personal/myPage/PersonalMyPageKeywordUpdate";
	}
	
	
	@RequestMapping(value = "/personal/nickNameUpdateCtr.do", method = RequestMethod.POST)
	public String nickNameUpdateCtr(String perNickname, HttpSession session, Model model) {
		log.info("Welcome PersonalMembernickNameUpdateCtr");
		
		//기존 세션을 가져와서 personalMemberDto에 바뀐 정보를 담아둠
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setPerNickname(perNickname);
		
		try {
			PersonalMemberService.personalMemberNickNameUpdateOne(personalMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("personalMemberDto", personalMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "personal/myPage/PersonalMyPage";
	}
	
	@RequestMapping(value = "/personal/passwordUpdateCtr.do", method = RequestMethod.POST)
	public String passwordUpdateCtr(String perPwd, HttpSession session, Model model) {
		log.info("Welcome PersonalMemberPasswordUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setPerPwd(perPwd);
		
		try {
			PersonalMemberService.personalMemberPasswordUpdateOne(personalMemberDto);
			
			session.setAttribute("personalMemberDto", personalMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "personal/myPage/PersonalMyPage";
	}
	
	@RequestMapping(value = "/personal/phoneNumUpdateCtr.do", method = RequestMethod.POST)
	public String phoneNumUpdateCtr(String perPhoneNum, HttpSession session, Model model) {
		log.info("Welcome PersonalMemberPhoneNumUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setPerPhoneNum(perPhoneNum);
		
		try {
			PersonalMemberService.personalMemberPhoneNumUpdateOne(personalMemberDto);
			
			session.setAttribute("personalMemberDto", personalMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "personal/myPage/PersonalMyPage";
	}
	
	@RequestMapping(value = "/personal/emailUpdateCtr.do", method = RequestMethod.POST)
	public String emailUpdateCtr(String perEmail, HttpSession session, Model model) {
		log.info("Welcome PersonalMemberEmailUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setPerEmail(perEmail);	
		
		try {
			PersonalMemberService.personalMemberEmailUpdateOne(personalMemberDto);
			
			session.setAttribute("personalMemberDto", personalMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "personal/myPage/PersonalMyPage";
	}
	
	@RequestMapping(value = "/personal/keywordUpdateCtr.do", method = RequestMethod.POST)
	public String keywordUpdateCtr(String perKeyword, HttpSession session, Model model) {
		log.info("Welcome PersonalMemberKeywordUpdateCtr");
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		if (perKeyword != null && perKeyword.contains(",")) {
			perKeyword = perKeyword.replace(",", "-");
		}
		
		System.out.println(perKeyword);
		personalMemberDto.setPerKeyword(perKeyword);
		
		try {
			PersonalMemberService.personalMemberKeywordUpdateOne(personalMemberDto);
			
			session.setAttribute("personalMemberDto", personalMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "personal/myPage/PersonalMyPage";
	}

	@RequestMapping(value = "/personal/showResume.do", method = RequestMethod.GET)
	public String showResume(int perNo, HttpSession session, Model model) {
		log.info("Welecom showResume! 회원번호:" + perNo);
		
		Map<String, Object> map = PersonalMemberService.personalMemberShowResume(perNo);
		
		model.addAttribute("map", map);
				
		return "personal/myPage/PersonalShowResume";
	}
	
	@RequestMapping(value = "/personal/resumeUpdate.do", method = RequestMethod.GET)
	public String resumeUpdate(int perNo, HttpSession session, Model model) {
		log.info("Welecom resumeUpdate!");
		Map<String, Object> map = PersonalMemberService.personalMemberShowResume(perNo);
		
		model.addAttribute("map", map);
		
		return "personal/myPage/PersonalResumeUpdate";
	}
	
	@RequestMapping(value = "/personal/resumeAddCtr.do", method = RequestMethod.POST)
	public String PersonalresumeAddCtr(@RequestParam("requestDto") String requestDto 
			, ResumeDto resumeDto, int perNo, HttpSession session, Model model) 
					throws JsonParseException, JsonMappingException, IOException {
		log.info("Welecome PersonalresumeUpdateCtr DTO리스트 : " + requestDto + "\n");
		// JSON 문자열을 Map으로 변환
	    ObjectMapper objectMapper = new ObjectMapper();
	    
	    objectMapper.writeValueAsBytes(requestDto);
	    Map<String, Object> dtoMap = objectMapper.readValue(requestDto, Map.class);
	    
//	    // Map에서 리스트를 꺼내서 사용
	    List<EducationDto> educationDtoList = objectMapper.convertValue(dtoMap.get("educationDtoList")
    			, new TypeReference<List<EducationDto>>() {
	    });
	    
	    List<CareerDto> careerDtoList = objectMapper.convertValue(dtoMap.get("careerDtoList")
    			, new TypeReference<List<CareerDto>>() {
	    });
	    
	    log.info("careerDtoList 리스트 이다." + careerDtoList + "\n");
	    log.info("educationDtoList 리스트 이다." + educationDtoList + "\n");
	       
		try {
			PersonalMemberService.personalResumeAddOne(resumeDto
					, perNo, educationDtoList, careerDtoList);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:./showResume.do?perNo=" + perNo;
	}
	
	@RequestMapping(value = "/personal/resumeUpdateCtr.do", method = RequestMethod.POST)
	public String PersonalresumeUpdateCtr(@RequestParam("requestDto") String requestDto 
			, ResumeDto resumeDto, int perNo, HttpSession session, Model model) 
					throws JsonParseException, JsonMappingException, IOException {
		log.info("Welecome PersonalresumeUpdateCtr DTO리스트 : " + requestDto + "\n");
		// JSON 문자열을 Map으로 변환
	    ObjectMapper objectMapper = new ObjectMapper();
	    
	    objectMapper.writeValueAsBytes(requestDto);
	    Map<String, Object> dtoMap = objectMapper.readValue(requestDto, Map.class);
	    
//	    // Map에서 리스트를 꺼내서 사용
	    List<EducationDto> educationDtoList = objectMapper.convertValue(dtoMap.get("educationDtoList")
    			, new TypeReference<List<EducationDto>>() {
	    });
	    
	    List<CareerDto> careerDtoList = objectMapper.convertValue(dtoMap.get("careerDtoList")
    			, new TypeReference<List<CareerDto>>() {
	    });
	    
	    log.info("careerDtoList 리스트 이다." + careerDtoList + "\n");
	    log.info("educationDtoList 리스트 이다." + educationDtoList + "\n");
	       
		try {
			PersonalMemberService.personalResumeUpdateOne(resumeDto
					, perNo, educationDtoList, careerDtoList);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:./showResume.do?perNo=" + perNo;
	}
	
	@RequestMapping(value = "/personal/showLetter.do", method = RequestMethod.GET)
	public String showLetter(int perNo, HttpSession session, Model model) {
		log.info("Welecom showLetter! 회원번호:" + perNo);
		
		LetterDto letterDto = PersonalMemberService.personalMembershowLetter(perNo);
		
		model.addAttribute("letterDto", letterDto);
				
		return "personal/myPage/PersonalShowLetter";
	}
	
	@RequestMapping(value = "/personal/letterUpdate.do", method = RequestMethod.GET)
	public String LetterUpdate(HttpSession session, Model model) {
		log.info("Welecom LetterUpdate!");
		
		PersonalMemberDto personalMemberDto = (PersonalMemberDto)session.getAttribute("personalMemberDto");

		LetterDto letterDto = PersonalMemberService.personalMembershowLetter(personalMemberDto.getPerNo());
		
		model.addAttribute("letterDto", letterDto);
		
		return "personal/myPage/PersonalLetterUpdate";
	}
	
	@RequestMapping(value = "/personal/letterUpdateCtr.do", method = RequestMethod.POST)
	public String PersonalLetterUpdateCtr(LetterDto letterDto, int perNo, HttpSession session, Model model) {
		log.info("Welecome PersonalLetterUpdateCtr" + letterDto);
		
		try {
			PersonalMemberService.PersonalLetterUpdateOne(letterDto);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:./showLetter.do?perNo=" + perNo;
	}	
	
	@RequestMapping(value = "/personal/registerEmail.do", method = RequestMethod.GET)
	public String emailConfirm(PersonalMemberDto personalMemberDto) {
		System.out.println(personalMemberDto);
		
		PersonalMemberService.personalUpdatePermission(personalMemberDto);
		
		return "/personal/auth/emailAuthSuccess";
	}
	
}// end PersonalMemberController
