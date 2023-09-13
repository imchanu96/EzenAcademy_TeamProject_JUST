package com.jobhub.admin.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.admin.service.AdminService;

@Controller
public class AdminController {

	private static final Logger log 
		= LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	// 로그인 화면으로 이동
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome AdminController login!");
		
		return "admin/AdminLoginForm";
	}
	
	// 로그인 버튼 클릭 시
		@RequestMapping(value = "/admin/loginCtr.do", method = RequestMethod.POST)
		public String loginCtr(String id, String pwd
				, HttpSession session, Model model) {
			log.info("Welcome AdminController loginCtr!" + id + ", " + pwd);
			
			AdminDto adminDto = adminService.adminExist(id, pwd);
			String viewUrl = "";
			
			if(adminDto != null) {
//				회원이 존재하면 세션에 담는다
				session.setAttribute("member", adminDto);
				
//				viewUrl = "redirect:/admin/list.do";
				viewUrl = "admin/BoardList";
			} else {
				viewUrl = "/auth/LoginFail";
			}
			
			return viewUrl;
		}
}
