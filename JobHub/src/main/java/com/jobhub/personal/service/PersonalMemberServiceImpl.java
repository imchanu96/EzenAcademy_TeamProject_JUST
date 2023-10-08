package com.jobhub.personal.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.jobhub.mail.MailHandler;
import com.jobhub.mail.TempKey;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.recommend.dao.RecommendDao;

@Service
public class PersonalMemberServiceImpl implements PersonalMemberService {
	
	private static final Logger log = LoggerFactory.getLogger(PersonalMemberService.class);
	
	@Autowired
	public PersonalMemberDao personalMemberDao;

	@Autowired
	JavaMailSender javaMailSender;
	
	@Autowired
	public RecommendDao recommendDao;
	
	@Override
	public PersonalMemberDto personalMemberExist(String perId, String perPwd) {
		// TODO Auto-generated method stub
		
		return personalMemberDao.personalMemberExist(perId, perPwd);
	}

	@Override
	public void personalInsertOne(PersonalMemberDto personalMemberDto) throws Exception {
		// TODO Auto-generated method stub
		String perTemporarily = new TempKey().getKey(30, false);
		personalMemberDto.setPerTemporarily(perTemporarily);
		
		personalMemberDao.memberInsertOne(personalMemberDto);
		personalMemberDao.personalUpdateTemporarily(personalMemberDto);
		
		MailHandler sendMail = new MailHandler(javaMailSender);
		sendMail.setSubject("[JobHub] 이메일 인증 메일입니다."); //메일제목
		sendMail.setText(
		        "<h1>JobHub 개인 회원 이메일 인증</h1>" +
				"<br>JobHub에 오신것을 환영합니다!" +
				"<br>아래 [이메일 인증 확인]을 눌러주세요." +
				"<br><a href='http://localhost:9080/JobHub/personal/registerEmail.do?perEmail=" 
				+ personalMemberDto.getPerEmail() +
				"&perTemporarily=" + personalMemberDto.getPerTemporarily() +
				"' target='_blank'>이메일 인증 확인</a>");
		sendMail.setFrom("jobhub.just@gmail.com", "JobHub");
		sendMail.setTo(personalMemberDto.getPerEmail());
		sendMail.send();
	}

	@Override
	public int personalMemberSelectOne(int perNo) {
		// TODO Auto-generated method stub
		return personalMemberDao.memberSelectOne(perNo);
	}

	@Override
	public PersonalMemberDto personalMemberSearchId(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberSearchId(personalMemberDto);
	}
	
	@Override
	public PersonalMemberDto personalMemberSearchPwd(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberSearchPwd(personalMemberDto);
	}
	
	@Override
	public void personalMemberNickNameUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.personalMemberNickNameUpdateOne(personalMemberDto);
	}

	@Override
	public void personalMemberPasswordUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.personalMemberPasswordUpdateOne(personalMemberDto);
	}

	@Override
	public void personalMemberPhoneNumUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.personalMemberPhoneNumUpdateOne(personalMemberDto);
	}

	@Override
	public void personalMemberEmailUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.personalMemberEmailUpdateOne(personalMemberDto);
	}

	@Override
	public void personalMemberKeywordUpdateOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.personalMemberKeywordUpdateOne(personalMemberDto);
	}

	@Override
	public Map<String, Object> personalMemberShowResume(int perNo) {
		// TODO Auto-generated method stub
		
		return personalMemberDao.personalMemberShowResume(perNo);
	}


	@Override
	public void personalResumeAddOne(ResumeDto resumeDto
			,int perNo, List<EducationDto> educationDtoList, List<CareerDto>careerDtoList) {
		// TODO Auto-generated method stub
//		System.out.println("이력서 삽입전 : " + resumeDto);
			personalMemberDao.personalResumeAddOne(resumeDto);
			Map<String, Object> resumeMap = personalMemberDao.personalMemberShowResume(perNo);
//			System.out.println("이력서 입력후 resumeDto : " + resumeMap);
		ResumeDto insertResumeDto = (ResumeDto)resumeMap.get("resumeDto");
		
		for (int i = 0; i < educationDtoList.size(); i++) {
			EducationDto educationDto = educationDtoList.get(i);
			educationDto.setResumeNo(insertResumeDto.getResumeNo());
				personalMemberDao.personalMemberEducationAddOne(educationDto);
		}
		
//		System.out.println("\n 경력 리스트 출력 테스트" + careerDtoList);
		for (int i = 0; i < careerDtoList.size(); i++) {
			CareerDto careerDto = careerDtoList.get(i);
			careerDto.setResumeNo(insertResumeDto.getResumeNo());
				personalMemberDao.personalMemberCareerAddOne(careerDto);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("perNo", perNo);
		
		recommendDao.companyRecommendUpdate(map);
	}
	
	@Override
	public void personalResumeUpdateOne(ResumeDto resumeDto
			,int perNo, List<EducationDto> educationDtoList, List<CareerDto>careerDtoList) {
		// TODO Auto-generated method stub
		
		if (resumeDto.getResumeNo() == 0) {
			personalMemberDao.personalResumeAddOne(resumeDto);
			resumeDto = (ResumeDto)personalMemberDao.personalMemberShowResume(perNo);
//			System.out.println("이력서 입력후 resumeDto : " + resumeDto);
		}else {
			personalMemberDao.personalResumeUpdateOne(resumeDto);
		}
		
		
//		System.out.println("\n 학력 리스트 출력 테스트" + educationDtoList);
		
			
		for (int i = 0; i < educationDtoList.size(); i++) {
			EducationDto educationDto = educationDtoList.get(i);
			if (educationDto.getEduNo() == 0) {
				personalMemberDao.personalMemberEducationAddOne(educationDto);
			}else {
				personalMemberDao.personalMemberEducationUpdateOne(educationDto);
			}
		}
		
//		System.out.println("\n 경력 리스트 출력 테스트" + careerDtoList);
		for (int i = 0; i < careerDtoList.size(); i++) {
			CareerDto careerDto = careerDtoList.get(i);
			if (careerDto.getCarNo() == 0) {
				personalMemberDao.personalMemberCareerAddOne(careerDto);
			}else {
				personalMemberDao.personalMemberCareerUpdateOne(careerDto);
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("perNo", perNo);
		
		recommendDao.companyRecommendUpdate(map);
	}

	@Override
	public LetterDto personalMembershowLetter(int perNo) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMembershowLetter(perNo);
	}

	@Override
	public void PersonalLetterUpdateOne(LetterDto letterDto) {
		// TODO Auto-generated method stub
		personalMemberDao.PersonalLetterUpdateOne(letterDto);
	}

//	@Override
//	public PersonalMemberDto personalMyPageList(HttpSession session) {
//		// TODO Auto-generated method stub
//		return PersonalMemberDao.personalMyPageList(session);
//	}
	
	@Override
	public int personalUpdateTemporarily(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalUpdateTemporarily(personalMemberDto);
	}

	@Override
	public int personalUpdatePermission(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalUpdatePermission(personalMemberDto);
	}
	
//	@Override
//	public PersonalMemberDto personalMyPageList(HttpSession session) {
//		// TODO Auto-generated method stub
//		return PersonalMemberDao.personalMyPageList(session);
//	}

}
