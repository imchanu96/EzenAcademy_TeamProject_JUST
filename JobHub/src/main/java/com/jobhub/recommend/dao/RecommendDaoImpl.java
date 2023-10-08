package com.jobhub.recommend.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.recommend.dto.RecommendDto;
import com.jobhub.util.PreferCalculate;

@Repository
public class RecommendDaoImpl implements RecommendDao{

	String personalNamespace = "com.jobhub.personal.";
	String companyNamespace = "com.jobhub.company.";
	String recommendNamespace = "com.jobhub.recommend.";
	String reviewNamespace = "com.jobhub.review.";
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public void personalRecommendUpdate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		int comNo = (int)map.get("comNo");
		String prefer = (String) map.get("prefer");
		CompanyMemberDto companyMemberDto = new CompanyMemberDto();
		companyMemberDto.setComNo(comNo);
		companyMemberDto.setComPrefer(prefer);
		
		List<PersonalMemberDto> personalMemberList
			= sqlSession.selectList(recommendNamespace + "personalMemberList");
		
		Map<String, Object> checkMap = new HashMap<String, Object>();
		checkMap.put("comNo", comNo);
		
		for (PersonalMemberDto personalMemberDto : personalMemberList) {
			checkMap.put("perNo", personalMemberDto.getPerNo());
			System.out.println(checkMap.get("perNo"));
			ResumeDto resumeDto
				= sqlSession.selectOne(recommendNamespace + "personalMemberShowResume", checkMap);
			System.out.println(resumeDto);
			if (resumeDto != null) {
				checkMap.put("resumeNo", resumeDto.getResumeNo());
			}else {
				continue;
			}
			
			
			List<CareerDto> careerDtoList
				= sqlSession.selectList(personalNamespace + "personalMemberShowCareer", checkMap);

			List<EducationDto> educationDtoList
				= sqlSession.selectList(personalNamespace + "personalMemberShowEducation", checkMap);
			
			
			RecommendDto recommendDto = sqlSession.selectOne(recommendNamespace + "checkRecommed", checkMap);
				
			PreferCalculate preferCal = new PreferCalculate(personalMemberDto, resumeDto
					, companyMemberDto, careerDtoList, educationDtoList);
			System.out.println(preferCal);
			
			if (recommendDto == null) {
				System.out.println("insert");
				RecommendDto insertRecommendDto = preferCal.getRecommendDto();
				sqlSession.insert(recommendNamespace + "insertRecommendDto", insertRecommendDto);
			}else if(recommendDto != null){
				System.out.println("update");
				RecommendDto updateRecommendDto = preferCal.getRecommendDto();
				sqlSession.update(recommendNamespace + "updateRecommendDto", updateRecommendDto);
			}
			
		}
		
	}
	
	@Override
	public void companyRecommendUpdate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		int perNo = (int)map.get("perNo");

		PersonalMemberDto personalMemberDto
			= sqlSession.selectOne(recommendNamespace + "personalMemberInfo", map);
		
		
		List<CompanyMemberDto> companyMemberList
		= sqlSession.selectList(recommendNamespace + "companyMemberList");
		
		Map<String, Object> checkMap = new HashMap<String, Object>();
		checkMap.put("perNo", perNo);
		ResumeDto resumeDto
			= sqlSession.selectOne(recommendNamespace + "personalMemberShowResume", checkMap);
		checkMap.put("resumeNo", resumeDto.getResumeNo());
//		System.out.println("이력서 : " + resumeDto);
		
		List<CareerDto> careerDtoList
			= sqlSession.selectList(personalNamespace + "personalMemberShowCareer", checkMap);
	
		List<EducationDto> educationDtoList
			= sqlSession.selectList(personalNamespace + "personalMemberShowEducation", checkMap);
		
		for (CompanyMemberDto companyMemberDto : companyMemberList) {
			checkMap.put("comNo", companyMemberDto.getComNo());
			System.out.println(checkMap.get("comNo"));

			RecommendDto recommendDto
				= sqlSession.selectOne(recommendNamespace + "checkRecommed", checkMap);
			
			PreferCalculate preferCal = new PreferCalculate(personalMemberDto, resumeDto
					, companyMemberDto, careerDtoList, educationDtoList);
//			System.out.println(preferCal);
			
			if (recommendDto == null) {
				System.out.println("insert");
				RecommendDto insertRecommendDto = preferCal.getRecommendDto();
				sqlSession.insert(recommendNamespace + "insertRecommendDto", insertRecommendDto);
			}else if(recommendDto != null){
				System.out.println("update");
				RecommendDto updateRecommendDto = preferCal.getRecommendDto();
				sqlSession.update(recommendNamespace + "updateRecommendDto", updateRecommendDto);
			}
			
		}
		
	}
	
	
	
}
