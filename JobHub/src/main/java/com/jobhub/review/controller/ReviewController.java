package com.jobhub.review.controller;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.review.util.Paging;
import com.jobhub.review.util.CompanyMemberPaging;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.review.dto.ReviewDto;
import com.jobhub.review.service.ReviewService;

@Controller
public class ReviewController {
	
	private static final Logger log
		= LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
//	기업 리스트 조회
	@RequestMapping(value = "/review/companyMemberList.do", 
			method = {RequestMethod.GET, RequestMethod.POST})
		public String companyMemberList(@RequestParam(defaultValue = "1") int curPage, Model model) {
 
			log.info("Welcome ReviewController companyMemberList!: {}", curPage);

			int totalCount = reviewService.companyMemberSelectTotalCount();

			CompanyMemberPaging companyMemberPaging = new CompanyMemberPaging(totalCount, curPage);
			
			int start = companyMemberPaging.getPageBegin();
			int end = companyMemberPaging.getPageEnd();
			
			List<CompanyMemberDto> companyMemberList = reviewService.companyMemberSelectList(start, end);
			
			HashMap<String, Object> pagingMap = new HashMap<>(); 
			pagingMap.put("totalCount", totalCount);
			pagingMap.put("companyMemberPaging", companyMemberPaging);
			
			model.addAttribute("companyMemberList", companyMemberList);
			model.addAttribute("pagingMap", pagingMap);
			
			return "review/CompanyMemberList";
		}
	
//	리뷰 리스트 조회
	@RequestMapping(value = "/review/list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewList(@RequestParam(defaultValue = "1") int curPage, Model model) {

		log.info("Welcome ReviewController list!: {}", curPage);
		
		int totalCount = reviewService.reviewSelectTotalCount();
		
		Paging reviewPaging = new Paging(totalCount, curPage);
		
		int start = reviewPaging.getPageBegin();
		int end = reviewPaging.getPageEnd();
		
		List<ReviewDto> reviewList = reviewService.reviewSelectList(start, end);
		List<ReviewDto> reviewAllList = reviewService.reviewSelectList();
		
		HashMap<String, Object> pagingMap = new HashMap<>(); 
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("reviewPaging", reviewPaging);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pagingMap", pagingMap);
		
		double avgSum = 0.0;
		double totalAvg = 0.0;
		
		double salAvgSum = 0.0;
		double salTotalAvg = 0.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			salAvgSum += reviewAllList.get(i).getrSal();
		}
		salTotalAvg = (Math.round(salAvgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		double welAvgSum = 0.0;
		double welTotalAvg = 0.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			welAvgSum += reviewAllList.get(i).getrWel();
		}
		welTotalAvg = (Math.round(welAvgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		double envAvgSum = 0.0;
		double envTotalAvg = 0.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			envAvgSum += reviewAllList.get(i).getrEnv();
		}
		envTotalAvg = (Math.round(envAvgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		double bossAvgSum = 0.0;
		double bossTotalAvg = 0.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			bossAvgSum += reviewAllList.get(i).getrBoss();
		}
		bossTotalAvg = (Math.round(bossAvgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		double balAvgSum = 0.0;
		double balTotalAvg = 0.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			balAvgSum += reviewAllList.get(i).getrBal();
		}
		balTotalAvg = (Math.round(balAvgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		for (int i = 0; i < reviewAllList.size(); i++) {
			avgSum += reviewAllList.get(i).getrAvg();
		}
		totalAvg = (Math.round(avgSum / reviewAllList.size() * 10.0)) / 10.0;
		
		
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