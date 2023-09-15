package com.jobhub.review.controller;

import java.util.Iterator;
import java.util.List;

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
//	@RequestMapping(value = "/review/list.do", method = RequestMethod.GET)
//	public String login(HttpSession session, Model model) {
//		log.info("Welcome ReviewController test!");
//		
//		return "review/ReviewList";
//	}
	
//	리뷰 리스트 조회
	@RequestMapping(value = "/review/list.do", method = RequestMethod.GET)
	public String reviewList(Model model) {
		// Log4j 
		log.info("Welcome ReviewController list!");
			
		List<ReviewDto> reviewList = reviewService.reviewSelectList();
		
		double avgSum = 0.0;
		double totalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			avgSum += reviewList.get(i).getrAvg();
		}
		totalAvg = (Math.round(avgSum / reviewList.size() * 10.0)) / 10.0;
		
		double salAvgSum = 0.0;
		double salTotalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			salAvgSum += reviewList.get(i).getrSal();
		}
		salTotalAvg = (Math.round(salAvgSum / reviewList.size() * 10.0)) / 10.0;
		
		double welAvgSum = 0.0;
		double welTotalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			welAvgSum += reviewList.get(i).getrWel();
		}
		welTotalAvg = (Math.round(welAvgSum / reviewList.size() * 10.0)) / 10.0;
		
		double envAvgSum = 0.0;
		double envTotalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			envAvgSum += reviewList.get(i).getrEnv();
		}
		envTotalAvg = (Math.round(envAvgSum / reviewList.size() * 10.0)) / 10.0;
		
		double bossAvgSum = 0.0;
		double bossTotalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			bossAvgSum += reviewList.get(i).getrBoss();
		}
		bossTotalAvg = (Math.round(bossAvgSum / reviewList.size() * 10.0)) / 10.0;
		
		double balAvgSum = 0.0;
		double balTotalAvg = 0.0;
		
		for (int i = 0; i < reviewList.size(); i++) {
			balAvgSum += reviewList.get(i).getrBal();
		}
		balTotalAvg = (Math.round(balAvgSum / reviewList.size() * 10.0)) / 10.0;
		
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("totalAvg", totalAvg);
		model.addAttribute("salTotalAvg", salTotalAvg);
		model.addAttribute("welTotalAvg", welTotalAvg);
		model.addAttribute("envTotalAvg", envTotalAvg);
		model.addAttribute("bossTotalAvg", bossTotalAvg);
		model.addAttribute("balTotalAvg", balTotalAvg);
		
		return "review/ReviewList";
	}
	
	
//	리뷰 작성 페이지 열기
	@RequestMapping(value = "/review/add.do", method = RequestMethod.GET)
	public String reviewAdd(Model model) {
		log.info("Welcome ReviewController reviewAdd!");
		
		return "review/ReviewWrite";
	}
	
//	리뷰 제출
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




