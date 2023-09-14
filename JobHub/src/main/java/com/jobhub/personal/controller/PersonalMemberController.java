package com.jobhub.personal.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.personal.controller.PersonalMemberController;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.service.PersonalMemberService;

@Controller
public class PersonalMemberController {
	
	private static final Logger log 
	= LoggerFactory.getLogger(PersonalMemberController.class);

	@Autowired
	private PersonalMemberService PersonalMemberService;
	
	//로그인 화면 이동
	@RequestMapping(value = "/personal/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		
		log.info("Welcome PersonalMemberController login!");
		
		return "personal/auth/PersonalLoginForm";
	}
	
	//로그인 클릭 시 이동
	@RequestMapping(value = "/personal/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String pId, String pPwd, HttpSession session, Model model) {
		
		log.info("Welcome PersonalMemberController loginCtr! " + pId + ", " + pPwd);
		
		PersonalMemberDto personalmemberDto 
			= PersonalMemberService.personalMemberExist(pId, pPwd);
		
		String viewUrl = "";
		if(personalmemberDto != null) {
//			회원이 존재하면 세션에 담는다
			session.setAttribute("personalmemberDto", personalmemberDto);
			
			viewUrl = "redirect:/personal/myPage/PersonalMyPage.jsp"; 
		}else {
			viewUrl = "personal/auth/LoginFail";
		}
		
		return viewUrl;
	}
	
	//로그아웃
	@RequestMapping(value = "/personal/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		
		log.info("Welcome MemberController logout!");
		
		session.invalidate();
		
		return "personal/auth/PersonalLoginForm";
	}
	
	//회원가입
	@RequestMapping(value = "/personal/add.do", method = RequestMethod.GET)
	public String MemberAdd(Model model) {
		
		log.debug("Welcome MemberController personalMemberAdd!");
		
		return "/personal/auth/JoinPersonal";
	}
	
	
}// end PersonalMemberController
