package com.jobhub.company.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.company.service.CompanyMemberService;
import com.jobhub.company.controller.CompanyMemberController;

@Controller
public class CompanyMemberController {
	
	private static final Logger log 
	= LoggerFactory.getLogger(CompanyMemberController.class);
	
	@Autowired
	private CompanyMemberService companyMemberService;
	
	@RequestMapping(value = "/company/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome CompanyController login!");
		
		return "company/auth/CompanyLoginForm";
	}

}
