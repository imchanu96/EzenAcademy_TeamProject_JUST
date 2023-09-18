package com.jobhub.company.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.company.service.CompanyMemberService;
import com.jobhub.personal.dto.PersonalMemberDto;

@Controller
public class CompanyMemberController {
	
	private static final Logger log
		= LoggerFactory.getLogger(CompanyMemberController.class);
	
	@Autowired
	private CompanyMemberService companyMemberService;
	
	@RequestMapping(value = "/company/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome CompanyMemberController login!");
		
		return "company/auth/CompanyLoginForm";
	}
	
	//로그인 클릭 시 이동
		@RequestMapping(value = "/company/loginCtr.do", method = RequestMethod.POST)
		public String loginCtr(String cCode, String cPwd, HttpSession session, Model model) {
			
			log.info("Welcome CompanyMemberController loginCtr! " + cCode + ", " + cPwd);
			
			CompanyMemberDto companymemberDto 
				= companyMemberService.companyMemberExist(cCode, cPwd);
			
			String viewUrl = "";
			if(companymemberDto != null) {
//				회원이 존재하면 세션에 담는다
				session.setAttribute("companymemberDto", companymemberDto);
				
				viewUrl = "company/search/SearchPerson";
			}else {
				viewUrl = "personal/auth/LoginFail";
			}
			
			return viewUrl;
		}

	
	@RequestMapping(value = "/company/add.do", method = RequestMethod.GET)
	public String MemberAdd(Model model) {
		
		log.debug("Welcome CompanyMemberController companyMemberAdd!");
		
		return "/company/auth/JoinCompany";
	}
	
	@RequestMapping(value = "/company/addCtr.do", method = RequestMethod.POST)
	public String memberAddCtr(CompanyMemberDto companyMemberDto, Model model) {
		log.debug("Welcome CompanyMemberController companyMemberAddCtr!" + companyMemberDto);
		
		try {
			companyMemberService.companyInsertOne(companyMemberDto);
		} catch (Exception e) {
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
		return "redirect:/company/login.do";
	}
	
	@RequestMapping(value = "/company/personalInfoList.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String memberList(Model model) {
		// log4j
		log.info("Welcome personalInfoController list!: {}");
		
//		int totalCount = adminService.memberSelectTotalCount();
	      
	    List<PersonalMemberDto> personalInfoList = companyMemberService.personalInfoList();
	    
	    model.addAttribute("personalInfoList", personalInfoList);

	    return "company/search/SearchPerson";
	}
}
