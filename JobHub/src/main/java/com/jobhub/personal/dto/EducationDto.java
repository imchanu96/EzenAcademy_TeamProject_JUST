package com.jobhub.personal.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class EducationDto {
	
    private int eduNo;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date eduBeginDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date eduEndDate;
	private String eduName;
	private String eduMajor;
	private String eduGrade;
	private String eduLocation;
	private String eduGreaduate;
	private int rNo;
	
	public EducationDto() {
		super();
	}

	public EducationDto(int eduNo, Date eduBeginDate, Date eduEndDate
			, String eduName, String eduMajor, String eduGrade,
			String eduLocation, String eduGreaduate, int rNo) {
		super();
		this.eduNo = eduNo;
		this.eduBeginDate = eduBeginDate;
		this.eduEndDate = eduEndDate;
		this.eduName = eduName;
		this.eduMajor = eduMajor;
		this.eduGrade = eduGrade;
		this.eduLocation = eduLocation;
		this.eduGreaduate = eduGreaduate;
		this.rNo = rNo;
	}

	public int getEduNo() {
		return eduNo;
	}

	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}

	public Date getEduBeginDate() {
		return eduBeginDate;
	}

	public void setEduBeginDate(Date eduBeginDate) {
		this.eduBeginDate = eduBeginDate;
	}

	public Date getEduEndDate() {
		return eduEndDate;
	}

	public void setEduEndDate(Date eduEndDate) {
		this.eduEndDate = eduEndDate;
	}

	public String getEduName() {
		return eduName;
	}

	public void setEduName(String eduName) {
		this.eduName = eduName;
	}

	public String getEduMajor() {
		return eduMajor;
	}

	public void setEduMajor(String eduMajor) {
		this.eduMajor = eduMajor;
	}

	public String getEduGrade() {
		return eduGrade;
	}

	public void setEduGrade(String eduGrade) {
		this.eduGrade = eduGrade;
	}

	public String getEduLocation() {
		return eduLocation;
	}

	public void setEduLocation(String eduLocation) {
		this.eduLocation = eduLocation;
	}

	public String getEduGreaduate() {
		return eduGreaduate;
	}

	public void setEduGreaduate(String eduGreaduate) {
		this.eduGreaduate = eduGreaduate;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	@Override
	public String toString() {
		return "EducationDto [eduNo=" + eduNo + ", eduBeginDate=" + eduBeginDate
				+ ", eduEndDate=" + eduEndDate + ", eduName=" + eduName
				+ ", eduMajor=" + eduMajor + ", eduGrade=" + eduGrade
				+ ", eduLocation=" + eduLocation + ", eduGreaduate=" + eduGreaduate
				+ ", rNo=" + rNo + "]";
	}
	
	
}
