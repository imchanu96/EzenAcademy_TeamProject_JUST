package com.jobhub.admin.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.admin.service.AdminService;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.PersonalMemberDto;

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
		
		return "admin/auth/AdminLoginForm";
	}
	
	// 로그인 버튼 클릭 시
	@RequestMapping(value = "/admin/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String id, String pwd
			, HttpSession session, Model model) {
		log.info("Welcome AdminController loginCtr!" + id + ", " + pwd);
		
		AdminDto adminDto = adminService.adminExist(id, pwd);
		String viewUrl = "";
		
		if(adminDto != null && adminDto.getPerPermission() == 10) {
//				회원이 존재하면 세션에 담는다
			session.setAttribute("member", adminDto);
			
			adminService.setResume();
			adminService.setRecommendRate();
			
			viewUrl = "redirect:/admin/memberList.do";
		} else {
			model.addAttribute("myMsg", "관리자가 아닙니다.");
			viewUrl = "admin/auth/AdminLoginForm";
		}
		
		return viewUrl;
	}
		
		
	@RequestMapping(value = "/admin/memberList.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String memberList(Model model) {
		// log4j
		log.info("Welcome MemberController list!: {}");
		
//			int totalCount = adminService.memberSelectTotalCount();
//			List<PersonalMemberDto> personalMemberList 
//								= personalMemberList.personalMemberSelectList(); 
//			List<CompanyMemberDto> companyMemList 
//								= companyMemList.companyMemSelectList();
	    List<PersonalMemberDto> personalList = adminService.memberSelectList();

	    model.addAttribute("personalList", personalList);

	    return "admin/MemberList";
	}
	
	@RequestMapping(value = "/admin/companyMemList.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String companyMemberList(Model model) {
		
		log.info("Welcome CompanyMemController");
		
		List<CompanyMemberDto> companyMemList 
								= adminService.companyMemSelectList();
		
		model.addAttribute("companyMemList", companyMemList);
		System.out.println(companyMemList);
		
		return "admin/CompanyMemList";
	}
	
	@RequestMapping(value = "/admin/personalMemberList.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String personalmemberList(Model model) {
		// log4j
		log.info("Welcome PersonalMemberController list!: {}");
		
//			int totalCount = adminService.memberSelectTotalCount();
	      
	    List<PersonalMemberDto> personalList 
	    							= adminService.personalMemberSelectList();

	    model.addAttribute("personalList", personalList);
	    System.out.println(personalList);

	    return "admin/PersonalMemberList";
	}
	
	@RequestMapping(value = "/admin/memberUpdate.do", method = RequestMethod.GET)
	public String memberUpdate(int perNo, Model model) {
		
		log.info("Welcome MemberController memberUpdate");
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("perNo", perNo);
		
		try {
			adminService.memberAllListPersonalUpdateOne(map);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:/admin/memberList.do";
	}
	
	@RequestMapping(value = "/admin/personalUpdate.do", method = RequestMethod.GET)
	public String personalUpdate(int perNo, Model model) {
		
		log.info("Welcome MemberController personalUpdate pNo=" + perNo);
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(perNo);
		map.put("perNo", perNo);
		
		try {
			adminService.personalUpdateOne(map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:/admin/personalMemberList.do";
	}
	
	@RequestMapping(value = "/admin/companyUpdate.do", method = RequestMethod.GET)
	public String companyUpdate(int comNo, Model model) {
		
		log.info("Welcome MemberController companyUpdate" + comNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(comNo);
		map.put("comNo", comNo);
		
		try {
			adminService.companyUpdateOne(map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:/admin/companyMemList.do";
	}
	
	
	
	@RequestMapping(value = "/admin/personalRecommendTotalRateAverageTop.do", method = RequestMethod.GET)
	public String personalRecommendTotalRateAverageTop(String listNumOption, Model model) {
		log.info("listNumOption" + listNumOption);
		log.info("Welcome AdminController "
				+ "personalRecommendTotalRateAverageTop.do 적합도 계산");
		
		List<PersonalMemberDto> personalRecommendRateList
			= adminService.personalRecommendTotalRateAverageTop();
		log.info("personalRecommendRateList 기업 회원 적합도 평균 top : " + personalRecommendRateList);
		
//		model.addAttribute("myMsg", "개인 회원 적합도 평균 top");
		if (listNumOption == null || listNumOption.equals("전체보기")) {
			int listNum = personalRecommendRateList.size();
			System.out.println("listNum" + listNum);
			model.addAttribute("listNum", listNum);
		}else {
			int listNum = Integer.parseInt(listNumOption);
			System.out.println("listNum" + listNum);
			model.addAttribute("listNum", listNum);
		}
		
		model.addAttribute("personalRecommendRateList", personalRecommendRateList);
		return "./admin/PersonalRecommendTotalRateTop";
	}
	
	@RequestMapping(value = "/admin/companyRecommendTotalRateAverageTop.do", method = RequestMethod.GET)
	public String companyRecommendTotalRateAverageTop(String listNumOption, Model model) {
		
		log.info("Welcome AdminController "
				+ "companyRecommendTotalRateAverageTop.do 기업 회원 적합도 평균 top");
		
		
		List<CompanyMemberDto> companyRecommendRateList
			= adminService.companyRecommendTotalRateAverageTop();
		log.info("companyRecommendRateList 기업 회원 적합도 평균 top : " + companyRecommendRateList);
		
//		model.addAttribute("myMsg", "기업 회원 적합도 평균 top");
		
		if (listNumOption == null || listNumOption.equals("전체보기")) {
			int listNum = companyRecommendRateList.size();
			System.out.println("listNum" + listNum);
			model.addAttribute("listNum", listNum);
		}else {
			int listNum = Integer.parseInt(listNumOption);
			System.out.println("listNum" + listNum);
			model.addAttribute("listNum", listNum);
		}
		
		model.addAttribute("companyRecommendRateList", companyRecommendRateList);
		return "./admin/CompanyRecommendTotalRateTop";
	}
		
}
