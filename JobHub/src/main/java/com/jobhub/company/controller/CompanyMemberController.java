package com.jobhub.company.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.company.service.CompanyMemberService;
import com.jobhub.personal.dto.PersonalMemberDto;

@Controller
public class CompanyMemberController {
	
	private static final Logger log
		= LoggerFactory.getLogger(CompanyMemberController.class);
	
	@Autowired
	private CompanyMemberService companyMemberService;
	
	@RequestMapping(value = "/company/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome CompanyMemberController login!");
		
		return "company/auth/CompanyLoginForm";
	}
	
	//로그인 클릭 시 이동
		@RequestMapping(value = "/company/loginCtr.do", method = RequestMethod.POST)
		public String loginCtr(String cCode, String cPwd, HttpSession session, Model model) {
			
			log.info("Welcome CompanyMemberController loginCtr! " + cCode + ", " + cPwd);
			
			CompanyMemberDto companyMemberDto 
				= companyMemberService.companyMemberExist(cCode, cPwd);
			
			String viewUrl = "";
			if(companyMemberDto != null) {
//				회원이 존재하면 세션에 담는다
				
				int permission = companyMemberDto.getPermission();
				
				session.setAttribute("companyMemberDto", companyMemberDto);
				session.setAttribute("permission", permission);
				viewUrl = "company/myPage/CompanyMyPage";
			}else {
				viewUrl = "personal/auth/LoginFail";
			}
			
			return viewUrl;
		}

	
	@RequestMapping(value = "/company/add.do", method = RequestMethod.GET)
	public String MemberAdd(Model model) {
		
		log.debug("Welcome CompanyMemberController companyMemberAdd!");
		
		return "/company/auth/JoinCompany";
	}
	
	@RequestMapping(value = "/company/addCtr.do", method = RequestMethod.POST)
	public String memberAddCtr(CompanyMemberDto companyMemberDto, Model model) {
		log.debug("Welcome CompanyMemberController companyMemberAddCtr!" + companyMemberDto);
		
		try {
			companyMemberService.companyInsertOne(companyMemberDto);
		} catch (Exception e) {
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
		return "redirect:/company/login.do";
	}
	
	@RequestMapping(value = "/company/searchPerson.do", method = RequestMethod.GET)
	public String memberAddCtr() {
		log.debug("Welcome CompanyMemberController searchPerson!");
		
		return "company/search/SearchPerson";
	}
	
	@RequestMapping(value = "/company/personalInfoList.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String memberList(int cNo, String talentScore, String careerScore, String educationScore
			, String licenseScore, String search, String searchText, Model model) {
		// log4j
//		log.info("Welcome personalInfoController list!: {}");
		log.info("기업 번호" +cNo + "인재 점수" + talentScore + "경력" + careerScore 
					+ "학력" +educationScore + "자격증" +licenseScore + search + searchText);
		
//		int totalCount = adminService.memberSelectTotalCount();
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("cNo", cNo);
	    map.put("talentScore", talentScore);
	    map.put("careerScore", careerScore);
	    map.put("educationScore", educationScore);
	    map.put("licenseScore", licenseScore);
	    map.put("search", search);
//	    searchText = " %" + searchText + "%";
	    map.put("searchText", searchText);
		
	    List<PersonalMemberDto> personalInfoList = companyMemberService.personalInfoList(map);

	    model.addAttribute("personalInfoList", personalInfoList);

	    return "company/search/SearchPerson";
	}
	
	@RequestMapping(value = "/company/cInChargeNameUpdate.do", method = RequestMethod.GET)
	public String cInChargeNameUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercInChargeNameUpdate!");
		
		return "company/myPage/CompanyMyPageInchargeNameUpdate";
	}
	
	@RequestMapping(value = "/company/cInChargeEmailUpdate.do", method = RequestMethod.GET)
	public String cInChargeEmailUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercInChargeEmailUpdate!");
		
		return "company/myPage/CompanyMyPageInChargeEmailUpdate";
	}
	
	@RequestMapping(value = "/company/cInChargePhoneNumUpdate.do", method = RequestMethod.GET)
	public String cInChargePhoneUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercInChargePhoneUpdate!");
		
		return "company/myPage/CompanyMyPageInChargePhoneNumUpdate";
	}
	
	@RequestMapping(value = "/company/cNameUpdate.do", method = RequestMethod.GET)
	public String cNameUpdateUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercNameUpdateUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyNameUpdate";
	}
	
	@RequestMapping(value = "/company/cAddUpdate.do", method = RequestMethod.GET)
	public String cAddUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercAddUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyAddUpdate";
	}
	
	@RequestMapping(value = "/company/cTypeUpdate.do", method = RequestMethod.GET)
	public String cTypeUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercTypeUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyTypeUpdate";
	}
	
	@RequestMapping(value = "/company/cEstDateUpdate.do", method = RequestMethod.GET)
	public String cEstDateUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercEstDateUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyEstDateUpdate";
	}
	
	@RequestMapping(value = "/company/cHomepageUpdate.do", method = RequestMethod.GET)
	public String cHomepageUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercHomepageUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyHomepageUpdate";
	}
	
	@RequestMapping(value = "/company/cIntroduceUpdate.do", method = RequestMethod.GET)
	public String cIntroduceUpdate(HttpSession session, Model model) {
		log.info("Welecom CompanyMembercIntroduceUpdate!");
		
		return "company/myPage/CompanyMyPageCompanyBusDetailUpdate";
	}
	
	@RequestMapping(value = "/company/cInChargeNameCtr.do", method = RequestMethod.POST)
	public String cInChargeNameUpdateCtr(String cInChargeName, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercInChargeNameUpdateCtr");
		
		//기존 세션을 가져와서 personalMemberDto에 바뀐 정보를 담아둠
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcInChargeName(cInChargeName);
		
		try {
			companyMemberService.companyMembercInChargeNameUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	@RequestMapping(value = "/company/cInChargeEmaildateCtr.do", method = RequestMethod.POST)
	public String cInChargeEmailUpdateCtr(String cInChargeEmail, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercInChargeEmailUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcInChargeEmail(cInChargeEmail);
		
		try {
			companyMemberService.companyMembercInChargeEmailUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
			return "company/myPage/CompanyMyPage";
		}
	
	@RequestMapping(value = "/company/cInChargePhoneNumUpdateCtr.do", method = RequestMethod.POST)
	public String cInChargePhoneNumUpdateCtr(String cInChargePhoneNum, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercInChargePhoneNumUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcInChargePhoneNum(cInChargePhoneNum);
		
		try {
			companyMemberService.companyMembercInChargePhoneNumUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
			return "company/myPage/CompanyMyPage";
		}
	
	@RequestMapping(value = "/company/cNameUpdateCtr.do", method = RequestMethod.POST)
	public String cNameUpdateCtr(String cName, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercNameUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcName(cName);
		
		try {
			companyMemberService.companyMembercNameUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	
	@RequestMapping(value = "/company/cAddUpdateCtr.do", method = RequestMethod.POST)
	public String cAddUpdateCtr(String cAdd, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercAddUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcAdd(cAdd);
		
		try {
			companyMemberService.companyMembercAddUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	@RequestMapping(value = "/company/cTypeUpdateCtr.do", method = RequestMethod.POST)
	public String cTypeUpdateCtr(String cType, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercTypeUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcType(cType);
		
		try {
			companyMemberService.companyMembercTypeUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	@RequestMapping(value = "/company/cEstDateUpdateCtr.do", method = RequestMethod.POST)
	public String cEstDateUpdateCtr(@DateTimeFormat(pattern = "yyyy-MM-dd")Date cEstDate
			, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercEstDateUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcEstDate(cEstDate);
		
		try {
			companyMemberService.companyMembercEstDateUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
			return "company/myPage/CompanyMyPage";
		}
	
	
	
	@RequestMapping(value = "/company/cHomepageUpdateCtr.do", method = RequestMethod.POST)
	public String cHomepageUpdateCtr(String cHomepage, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercHomepageUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcHomepage(cHomepage);
		
		try {
			companyMemberService.companyMembercHomepageUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	@RequestMapping(value = "/company/cIntroduceUpdateCtr.do", method = RequestMethod.POST)
	public String cIntroduce(String cIntroduce, HttpSession session, Model model) {
		log.info("Welecome CompanyMembercTypeUpdateCtr");
		
		CompanyMemberDto companyMemberDto
			= (CompanyMemberDto) session.getAttribute("companyMemberDto");
		companyMemberDto.setcIntroduce(cIntroduce);
		
		try {
			companyMemberService.companyMembercIntroduceUpdateOne(companyMemberDto);
			
			//담아둔 personalMemberDto의 바뀐 정보를 세션에 다시 덮어쓰기
			session.setAttribute("companyMemberDto", companyMemberDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "company/myPage/CompanyMyPage";
	}
	
	
}
