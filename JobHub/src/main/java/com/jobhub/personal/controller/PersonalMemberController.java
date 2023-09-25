package com.jobhub.personal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.personal.service.PersonalMemberService;

@Controller
public class PersonalMemberController {

	private static final Logger log 
		= LoggerFactory.getLogger(PersonalMemberController.class);

	@Autowired
	private PersonalMemberService PersonalMemberService;

	// 로그인 화면 이동
	@RequestMapping(value = "/personal/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {

		log.info("Welcome PersonalMemberController login!");

		return "personal/auth/PersonalLoginForm";
	}

	// 로그인 클릭 시 이동
	@RequestMapping(value = "/personal/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String pId, String pPwd, HttpSession session, Model model) {

		log.info("Welcome PersonalMemberController loginCtr! " + pId + ", " + pPwd);

		PersonalMemberDto personalMemberDto 
			= PersonalMemberService.personalMemberExist(pId, pPwd);

		String viewUrl = "";
		if (personalMemberDto != null) {
			
			int permission = personalMemberDto.getpPermission();
			
//			회원이 존재하면 세션에 담는다
			session.setAttribute("personalMemberDto", personalMemberDto);
			session.setAttribute("permission", permission);
			viewUrl = "personal/myPage/PersonalMyPage";
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

		return "redirect:/personal/login.do";
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
	
	@RequestMapping(value = "/personal/nickNameUpdate.do", method = RequestMethod.GET)
	public String nickNameUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberNickNameUpdate!");
		
		return "personal/myPage/PersonalMyPageNickNameUpdate";
	}
	
	@RequestMapping(value = "/personal/passwordUpdate.do", method = RequestMethod.GET)
	public String passwordUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberPasswordUpdate!");
		
		return "personal/myPage/PersonalMyPagePasswordUpdate";
	}
	
	@RequestMapping(value = "/personal/phoneNumUpdate.do", method = RequestMethod.GET)
	public String phoneNumUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberPhoneNumUpdate!");
		
		return "personal/myPage/PersonalMyPagePhoneNumUpdate";
	}
	
	@RequestMapping(value = "/personal/emailUpdate.do", method = RequestMethod.GET)
	public String emailUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberEmailUpdate!");
		
		return "personal/myPage/PersonalMyPageEmailUpdate";
	}
	
	@RequestMapping(value = "/personal/keywordUpdate.do", method = RequestMethod.GET)
	public String keywordUpdate(HttpSession session, Model model) {
		log.info("Welecom PersonalMemberKeywordUpdate!");
		
		return "personal/myPage/PersonalMyPageKeywordUpdate";
	}
	
	
	@RequestMapping(value = "/personal/nickNameUpdateCtr.do", method = RequestMethod.POST)
	public String nickNameUpdateCtr(String pNickname, HttpSession session, Model model) {
		log.info("Welecome PersonalMembernickNameUpdateCtr");
		
		//기존 세션을 가져와서 personalMemberDto에 바뀐 정보를 담아둠
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setpNickname(pNickname);
		
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
	public String passwordUpdateCtr(String pPwd, HttpSession session, Model model) {
		log.info("Welecome PersonalMemberPasswordUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setpPwd(pPwd);
		
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
	public String phoneNumUpdateCtr(String pPhoneNum, HttpSession session, Model model) {
		log.info("Welecome PersonalMemberPhoneNumUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setpPhoneNum(pPhoneNum);
		
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
	public String emailUpdateCtr(String pEmail, HttpSession session, Model model) {
		log.info("Welecome PersonalMemberEmailUpdateCtr");
		
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setpEmail(pEmail);	
		
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
	public String keywordUpdateCtr(String pKeyword, HttpSession session, Model model) {
		log.info("Welecome PersonalMemberKeywordUpdateCtr");
		PersonalMemberDto personalMemberDto
			= (PersonalMemberDto) session.getAttribute("personalMemberDto");
		personalMemberDto.setpKeyword(pKeyword);
		
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
	public String showResume(int pNo, HttpSession session, Model model) {
		log.info("Welecom showResume! 회원번호:" + pNo);
		
		
		ResumeDto resumeDto = PersonalMemberService.personalMemberShowResume(pNo);
		
		session.setAttribute("resumeDto", resumeDto);
				
		return "personal/myPage/PersonalShowResume";
	}
	
	@RequestMapping(value = "/personal/resumeUpdate.do", method = RequestMethod.GET)
	public String resumeUpdate(HttpSession session, Model model) {
		log.info("Welecom resumeUpdate!");
				
		return "personal/myPage/PersonalResumeUpdate";
	}
	
	@RequestMapping(value = "/personal/resumeUpdateCtr.do", method = RequestMethod.POST)
	public String PersonalresumeUpdateCtr(ResumeDto resumeDto, int pNo, HttpSession session, Model model) {
		log.info("Welecome PersonalresumeUpdateCtr" + resumeDto);
		
		try {
			PersonalMemberService.PersonalresumeUpdateOne(resumeDto);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:./showResume.do?pNo=" + pNo;
	}
	
	@RequestMapping(value = "/personal/showLetter.do", method = RequestMethod.GET)
	public String showLetter(int pNo, HttpSession session, Model model) {
		log.info("Welecom showLetter! 회원번호:" + pNo);
		
		LetterDto letterDto = PersonalMemberService.personalMembershowLetter(pNo);
		
		session.setAttribute("letterDto", letterDto);
				
		return "personal/myPage/PersonalShowLetter";
	}
	
	@RequestMapping(value = "/personal/letterUpdate.do", method = RequestMethod.GET)
	public String LetterUpdate(HttpSession session, Model model) {
		log.info("Welecom LetterUpdate!");
				
		return "personal/myPage/PersonalLetterUpdate";
	}
	
	@RequestMapping(value = "/personal/letterUpdateCtr.do", method = RequestMethod.POST)
	public String PersonalLetterUpdateCtr(LetterDto letterDto, int pNo, HttpSession session, Model model) {
		log.info("Welecome PersonalLetterUpdateCtr" + letterDto);
		
		try {
			PersonalMemberService.PersonalLetterUpdateOne(letterDto);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:./showLetter.do?pNo=" + pNo;
	}	
		
}// end PersonalMemberController
