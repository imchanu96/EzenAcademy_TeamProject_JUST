package com.jobhub.company.service;

import java.util.List;
import java.util.Map;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.review.dto.ReviewDto;

public interface CompanyMemberService {

	public CompanyMemberDto companyMemberExist(String cCode, String cPwd);

	public void companyInsertOne(CompanyMemberDto companyMemberDto);

	public List<PersonalMemberDto> personalInfoList(Map<String, Object> map);
	
}
