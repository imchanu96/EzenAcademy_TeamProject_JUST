package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.jobhub.company.dao.CompanyMemberDao;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.mail.MailHandler;
import com.jobhub.mail.TempKey;
import com.jobhub.personal.dao.PersonalMemberDao;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.recommend.dao.RecommendDao;

@Service
public class CompanyMemberServiceImpl implements CompanyMemberService {

	private static final Logger log = LoggerFactory.getLogger(CompanyMemberServiceImpl.class);
	
	@Autowired
	public CompanyMemberDao companyMemberDao;
	@Autowired
	public PersonalMemberDao personalMemberDao;
	@Autowired
	public RecommendDao recommendDao;

	@Autowired
	JavaMailSender javaMailSender;
	
	@Override
	public CompanyMemberDto companyMemberExist(String comCode, String comPwd) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberExist(comCode, comPwd);
	}

	@Override
	public CompanyMemberDto showCompanyInfo(int comNo) {
		// TODO Auto-generated method stub
		return companyMemberDao.showCompanyInfo(comNo);
	}

	
	@Override
	public void companyInsertOne(CompanyMemberDto companyMemberDto) throws Exception{
		// TODO Auto-generated method stub
		
		String comId = new TempKey().getKey(30, false);
		companyMemberDto.setComId(comId);
		
		companyMemberDao.companyInsertOne(companyMemberDto);
		companyMemberDao.companyUpdateId(companyMemberDto);
		
		MailHandler sendMail = new MailHandler(javaMailSender);
		sendMail.setSubject("[JobHub] 이메일 인증 메일입니다."); //메일제목
		sendMail.setText(
		        "<h1>JobHub 기업 회원 이메일 인증</h1>" +
				"<br>JobHub에 오신것을 환영합니다!" +
				"<br>아래 [이메일 인증 확인]을 눌러주세요." +
				"<br><a href='http://localhost:9080/JobHub/company/registerEmail.do?comInChargeEmail=" 
				+ companyMemberDto.getComInChargeEmail() +
				"&comId=" + companyMemberDto.getComId() +
				"' target='_blank'>이메일 인증 확인</a>");
		sendMail.setFrom("mi0park93@gmail.com", "JobHub");
		sendMail.setTo(companyMemberDto.getComInChargeEmail());
		sendMail.send();
	}

	@Override
	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return personalMemberDao.personalInfoList(map);
	}

	@Override
	public CompanyMemberDto companyMemberSearchId(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSearchId(companyMemberDto);
	}

	@Override
	public CompanyMemberDto companyMemberSearchPwd(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyMemberSearchPwd(companyMemberDto);
	}
	
	@Override
	public void companyInfoUpdateOne(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		companyMemberDao.companyInfoUpdateOne(companyMemberDto);
	}

	@Override
	public CompanyMemberDto companyMemberSelectOne(int comNo) {
		// TODO Auto-generated method stub
		
		return companyMemberDao.companyMemberSelectOne(comNo);
	}

	@Override
	public void preferUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		companyMemberDao.preferUpdateOne(map);
		recommendDao.recommendUpdate(map);
		
	}

	@Override
	public int companyUpdateId(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyUpdateId(companyMemberDto);
	}

	@Override
	public int companyUpdatePermission(CompanyMemberDto companyMemberDto) {
		// TODO Auto-generated method stub
		return companyMemberDao.companyUpdatePermission(companyMemberDto);
	}

	
	

}
