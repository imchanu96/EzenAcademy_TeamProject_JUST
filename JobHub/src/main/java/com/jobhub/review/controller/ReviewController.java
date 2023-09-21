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
		
		// 리뷰 전체 갯수 세서, totalCount에 담기
		int totalCount = reviewService.reviewSelectTotalCount();
		
		// Paging 클래스의 reviewPaging 인스턴스를 생성. 이 때, '총 페이지 수', '현재 페이지(기본값: 1)'을 매개변수로 가지고 있다 
		Paging reviewPaging = new Paging(totalCount, curPage);
		
		CompanyMemberDto companyMemberDto = new CompanyMemberDto();
		
		// 페이지에서 보여줄 글 번호의 범위(시작 글 번호 ~ 끝 글 번호)
		int start = reviewPaging.getPageBegin();
		int end = reviewPaging.getPageEnd();
		int cNo = companyMemberDto.getcNo();
		
		// 페이지에서 보여줄 글 번호의 범위에 해당하는 글들을 조회 후, 그 글들의 ReviewDto를 List<> 형태로 만들기
		List<ReviewDto> reviewList = reviewService.reviewSelectList(start, end, cNo);
		// 글 전체를 조회 후, 그 글들의 ReviewDto를 List<> 형태로 만들기(이 ReviewDto에는 별점 관련 정보들만 담겨있다)
		List<ReviewDto> reviewAllList = reviewService.reviewSelectList();
		
		// HashMap<> 타입의 pagingMap 생성
		HashMap<String, Object> pagingMap = new HashMap<>(); 
		// 생성한 pagingMap 해시맵에 아까 세놓은 '리뷰 전체 갯수', '현재 페이지 수 정보'를 매핑한다.
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("reviewPaging", reviewPaging);
		
		// Model에 현재 페이지에서 보여줄 글들의 정보인 'reviewList'와
		// 리뷰 전체 갯수, 현재 페이지 수의 정보를 담은 'pagingMap'을 담는다.
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pagingMap", pagingMap);
		
		// 별점 평균 계산
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