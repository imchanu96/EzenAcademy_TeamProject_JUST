package com.jobhub.admin.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.admin.dto.AdminDto;
import com.jobhub.company.dto.CompanyMemberDto;
import com.jobhub.personal.dto.CareerDto;
import com.jobhub.personal.dto.EducationDto;
import com.jobhub.personal.dto.PersonalMemberDto;
import com.jobhub.personal.dto.ResumeDto;

@Repository
public class AdminDaoImpl implements AdminDao{

	String namespace = "com.jobhub.admin.";
	String personalNamespace = "com.jobhub.personal.";
	String companyNamespace = "com.jobhub.company.";
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public AdminDto adminExist(String id, String pwd) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("perId", id);
		paramMap.put("perPwd", pwd);
		
		return sqlSession.selectOne(namespace + "adminExist", paramMap);
	}


	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace + "memberSelectTotalCount");
	}


	@Override
	public void memberAllListPersonalUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "memberAllListPersonalUpdateOne", map);
	}


	@Override
	public void personalUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "personalUpdateOne", map); 
	}


	@Override
	public void companyUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "companyUpdateOne", map);
	}


	@Override
	public List<PersonalMemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "memberSelectList");
	}


	@Override
	public void setResume() {
		// TODO Auto-generated method stub
		Map<String, Object> keyMap = new HashMap<String, Object>();
		List<ResumeDto> resumeList = new ArrayList<ResumeDto>();
		List<PersonalMemberDto> personalMemberList = sqlSession.selectList(namespace + "personalMemberList");
		
		for (int i = 0; i < personalMemberList.size(); i++) {
			int perNo =  (int)personalMemberList.get(i).getPerNo();
			keyMap.put("perNo", perNo);
			ResumeDto resumeDto
				=  sqlSession.selectOne(personalNamespace + "personalMemberShowResume", keyMap);
			if (resumeDto != null) {
				resumeList.add(resumeDto);
			}
		}// 이력서 가져오기
		
		for (int i = 0; i < resumeList.size(); i++) {
			System.out.println("이력서 번호 : " + resumeList.get(i).getResumeNo());
			int resumeNo = resumeList.get(i).getResumeNo();
			keyMap.put("resumeNo", resumeNo);
			List<CareerDto> careerDtoList 
				= sqlSession.selectList(personalNamespace + "personalMemberShowCareer", keyMap);
			System.out.println("careerDtoList 가져옴");
			
			setCareerDto(resumeList.get(i), careerDtoList);
			
			
			List<EducationDto> educationDtoList
				= sqlSession.selectList(personalNamespace + "personalMemberShowEducation", keyMap);
			System.out.println("educationDtoList 가져옴");
		}
		
		 
	}
	
	public void setCareerDto(ResumeDto resumeDto, List<CareerDto> careerDtoList) {
		String[] careerBeginDateArr = resumeDto.getResumeCareerBeginDate().split(",");
		String[] careerEndDateArr = resumeDto.getResumeCareerEndDate().split(",");
		String[] careerNameArr = resumeDto.getResumeCareerName().split(",");
		String[] careerPostionArr = resumeDto.getResumeCareerPos().split(",");
		String[] careerLocationArr = resumeDto.getResumeCareerLoc().split(",");
		String[] careerJobArr = resumeDto.getResumeCareerJob().split(",");
		if (careerDtoList.size() == 0) {
			for (int i = 0; i < careerBeginDateArr.length; i++) {
				CareerDto careerDto = new CareerDto();
				
				careerDto.setResumeNo(resumeDto.getResumeNo());
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date date;
				String careerBeginDate = careerBeginDateArr[i].trim();
				if (careerEndDateArr.length >= i) {
					try {
						date = formatter.parse(careerBeginDate);
						careerDto.setCarBeginDate(date);
					} catch (ParseException e) {
						// TODO Auto-generated catch block

					}
					String careerEndDateDate = careerEndDateArr[i].trim();
					if (careerEndDateDate != "") {
						try {
							date = formatter.parse(careerEndDateDate);
							careerDto.setCarEndDate(date);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					String careerName = careerNameArr[i].trim();
					careerDto.setCarName(careerName);
					String careerPostion = careerPostionArr[i].trim();
					careerDto.setCarPosition(careerPostion);
					String careerLocation = careerLocationArr[i].trim();
					careerDto.setCarLocation(careerLocation);
					String careerJob = careerJobArr[i].trim();
					careerDto.setCarJob(careerJob);
				}
//					System.out.println(careerDto);
				sqlSession.insert(personalNamespace + "personalCareerInsertOne", careerDto);
			}
			
		}
	}
	public void setEducationDto() {
		
	}

	@Override
	public void setRecommendRate() {
		// TODO Auto-generated method stub
		List<PersonalMemberDto> personalMemberList = sqlSession.selectList(namespace + "personalMemberList");
		List<CompanyMemberDto> companyMemberList =sqlSession.selectList(namespace + "companyMemberList");
	}




}
