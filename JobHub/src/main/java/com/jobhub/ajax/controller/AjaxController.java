package com.jobhub.ajax.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobhub.ajax.service.AjaxService;
import com.jobhub.personal.dto.ResumeDto;

@Controller
public class AjaxController {

	private static final Logger log
	= LoggerFactory.getLogger(AjaxController.class);

	@Autowired
	private AjaxService ajaxService;
	
	@RequestMapping(value = "/company/showPersonalResume.do", method = RequestMethod.POST)
	@ResponseBody
	public ResumeDto showPersonalResume(@RequestBody HashMap<String, String> paramMap) {
		
		log.info("Welcome CompanyMemberController showPersonalResume! " + paramMap);
		
		log.info(paramMap.get("pNo"));
		ResumeDto resumeDto 
			= ajaxService.showPersonalResume(10);
//
		return resumeDto;
	}
}
