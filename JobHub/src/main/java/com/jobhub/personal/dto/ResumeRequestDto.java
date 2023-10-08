package com.jobhub.personal.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true) 
public class ResumeRequestDto {

	
	private CareerDto careerDto;
	private EducationDto educationDto;
	private List<CareerDto> careerDtoList;
	private List<EducationDto> educationDtoList;
	
	
	public CareerDto getCareerDto() {
		return careerDto;
	}

	public void setCareerDto(CareerDto careerDto) {
		this.careerDto = careerDto;
	}

	public EducationDto getEducationDto() {
		return educationDto;
	}

	public void setEducationDto(EducationDto educationDto) {
		this.educationDto = educationDto;
	}

	public List<CareerDto> getCareerDtoList() {
		return careerDtoList;
	}

	public void setCareerDtoList(List<CareerDto> careerDtoList) {
		this.careerDtoList = careerDtoList;
	}

	public List<EducationDto> getEducationDtoList() {
		return educationDtoList;
	}

	public void setEducationDtoList(List<EducationDto> educationDtoList) {
		this.educationDtoList = educationDtoList;
	}

	@Override
	public String toString() {
		return "ResumeRequestDto [careerDto=" + careerDto + ", educationDto=" + educationDto
				+ ", careerDtoList=" + careerDtoList + ", educationDtoList=" + educationDtoList + "]";
	}

	
}
