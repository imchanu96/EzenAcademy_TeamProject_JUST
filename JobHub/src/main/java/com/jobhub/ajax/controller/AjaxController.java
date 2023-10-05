package com.jobhub.ajax.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobhub.ajax.service.AjaxService;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.review.dto.ReviewDto;

@Controller
public class AjaxController {

	private static final Logger log
	= LoggerFactory.getLogger(AjaxController.class);

	@Autowired
	private AjaxService ajaxService;
	
	@RequestMapping(value = "/company/showPersonalResume.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showPersonalResume(@RequestBody HashMap<String, String> paramMap) {
		
		log.info("Welcome CompanyMemberController showPersonalResume! " + paramMap);
		
		int perNo = Integer.parseInt(paramMap.get("perNo"));
		Map<String, Object> map
			= ajaxService.showPersonalResume(perNo);

		System.out.println(map);
		return map;
	}
	
	@RequestMapping(value = "/company/showPersonalLetter.do", method = RequestMethod.POST)
	@ResponseBody
	public LetterDto showPersonalLetter(@RequestBody HashMap<String, String> paramMap) {
		
		log.info("Welcome CompanyMemberController showPersonalLetter! " + paramMap);
		
		log.info(paramMap.get("perNo"));
		LetterDto letterDto
			= ajaxService.showPersonalLetter(paramMap);

		System.out.println(letterDto);
		
		return letterDto;
	}
	
	@RequestMapping(value = "/review/countPersonalReview.do", method = RequestMethod.POST)
	@ResponseBody
	public int countPersonalReview(@RequestBody HashMap<String, String> paramMap) {
		
		log.info("Welcome ReviewController countPersonalReview! " + paramMap);
		
		int countPersonalReview
			= ajaxService.countPersonalReview(paramMap);
//
		return countPersonalReview;
	}
}
