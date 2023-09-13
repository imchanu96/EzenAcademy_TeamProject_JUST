package com.jobhub.review.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobhub.review.service.ReviewService;

@Controller
public class ReviewController {
	
	private static final Logger log
		= LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/review/list.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome ReviewController login!");
		
		return "review/ReviewList";
	}
}
