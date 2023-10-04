package com.jobhub.personal.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.board.dto.BoardDto;
import com.jobhub.mail.MailHandler;
import com.jobhub.mail.TempKey;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;

@Service
public class PersonalMemberServiceImpl implements PersonalMemberService {
	
	private static final Logger log = LoggerFactory.getLogger(PersonalMemberService.class);
	
	@Autowired
	public PersonalMemberDao personalMemberDao;

	@Override
	public PersonalMemberDto personalMemberExist(String perId, String perPwd) {
		// TODO Auto-generated method stub
		
		return personalMemberDao.personalMemberExist(perId, perPwd);
	}

	@Override
	public void personalInsertOne(PersonalMemberDto personalMemberDto) {
		// TODO Auto-generated method stub
		personalMemberDao.memberInsertOne(personalMemberDto);
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
	public void PersonalresumeUpdateOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		personalMemberDao.PersonalresumeUpdateOne(resumeDto);
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

	@Override
	public int personalMemberMyPostListSelectTotalCount() {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberMyPostListSelectTotalCount();
	}

	@Override
	public List<BoardDto> personalMemberMyPostList(int start, int end) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalMemberMyPostList(start, end);
	}

	@Override
	public void personalMemberFindPwd(String perEmail, String perId) {
		// TODO Auto-generated method stub
		
		String perTemporarily = new TempKey().getKey(6, false);
//		String perPwd = BCrypt.hashpw(perTemporarily, BCrypt.gensalt());	
		
//		personalMemberDao.personalMemberFindPwd(perEmail, perId, perPwd);
		
//		MailHandler sendMail = new MailHandler(mailSender);
//		sendMail.setSubject("[JobHub 임시 비밀번호 안내 메일입니다.]");
//		sendMail.setText(
//				"<h1>JobHub 임시 비밀번호 발급</h1>" 
//				+ "<br/>" + perId + "님" 
//				+ "<br/>비밀번호 찾기를 통한 임시 비밀번호입니다." 
//				+ "<br/>임시 비밀번호:	<h2>" + perTemporarily + "</h2>" 
//				+ "<br/>로그인 후 비밀번호 변경을 해주세요."
//				+ "<a href='http://localhost:9080/JobHub/personal/login.do'>로그인 페이지</a>");
//		
//		sendMail.setFrom("mi0park93@gmail.com", "JobHub");
//		sendMail.setTo(perEmail);
//		sendMail.send();
	}

//	@Override
//	public PersonalMemberDto personalMyPageList(HttpSession session) {
//		// TODO Auto-generated method stub
//		return PersonalMemberDao.personalMyPageList(session);
//	}

}
