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
import com.jobhub.personal.service.PersonalMemberService;

@Controller
public class PersonalMemberController {
	
	private static final Logger log 
	= LoggerFactory.getLogger(PersonalMemberController.class);

	@Autowired
	private PersonalMemberService PersonalMemberService;
	
	@RequestMapping(value = "/personal/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome AdminController login!");
		
		return "personal/auth/PersonalLoginForm";
}

}
