package com.jobhub.recommend.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.admin.controller.AdminController;
import com.jobhub.admin.service.AdminService;
import com.jobhub.recommend.service.RecommendService;

@Controller
public class RecommendController {

	private static final Logger log 
	= LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private RecommendService RecommendService;

	
	// 로그인 화면으로 이동
		@RequestMapping(value = "/recommend/login.do", method = RequestMethod.GET)
		public String recommend(HttpSession session, Model model) {
			log.info("Welcome AdminController login!");
			
			return "#";
		}
	
}
