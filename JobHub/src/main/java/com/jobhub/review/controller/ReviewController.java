package com.jobhub.review.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jobhub.review.dto.ReviewDto;
import com.jobhub.review.service.ReviewService;

@Controller
public class ReviewController {
	
	private static final Logger log
		= LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
//	test
	@RequestMapping(value = "/review/list.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome ReviewController test!");
		
		return "review/ReviewList";
	}
	
	
	@RequestMapping(value = "/review/add.do", method = RequestMethod.GET)
	public String reviewAdd(Model model) {
		log.info("Welcome ReviewController reviewAdd!");
		
		return "review/ReviewWrite";
	}
	
	@RequestMapping(value = "/review/addCtr.do", method = RequestMethod.POST)
	public String reviewAdd(ReviewDto reviewDto, Model model) {
		log.info("Welcome ReviewController reviewAdd! \r\n" + reviewDto);
		
			try {
				reviewService.reviewInsertOne(reviewDto);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/review/list.do";
	}
	
}










