package com.jobhub.personal.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ResumeDto {

	private int resumeNo;
	private String resumeName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date resumeBirthday;
	private String resumeEmail;
	private String resumePhoneNum;
	private String resumeAdd;
	private String resumeMarry;
	private String resumeGender;
	private String resumeMilitary;
	private String resumeEduBeginDate;
	private String resumeEduEndDate;
	private String resumeEduName;
	private String resumeEduMajor;
	private String resumeEduLoc;
	private String resumeEduGrade;
	private String resumeEduGraduate;
	private String resumeCareerBeginDate;
	private String resumeCareerEndDate;
	private String resumeCareerName;
	private String resumeCareerPos;
	private String resumeCareerLoc;
	private String resumeCareerJob;
	private String resumeLicenseDate;
	private String resumeLicenseName;
	private String resumeLicenseInst;
	private String resumeLicenseGrade;
	private int perNo;
	
	
	public ResumeDto() {
		super();
	}

	public ResumeDto(int resumeNo, String resumeName, Date resumeBirthday
			, String resumeEmail, String resumePhoneNum, String resumeAdd
			, String resumeMarry, String resumeGender, String resumeMilitary
			, String resumeEduBeginDate, String resumeEduEndDate
			, String resumeEduName, String resumeEduMajor, String resumeEduLoc,
			String resumeEduGrade, String resumeEduGraduate
			, String resumeCareerBeginDate, String resumeCareerEndDate
			, String resumeCareerName, String resumeCareerPos
			, String resumeCareerLoc, String resumeCareerJob
			, String resumeLicenseDate, String resumeLicenseName
			, String resumeLicenseInst, String resumeLicenseGrade, int perNo) {
		super();
		this.resumeNo = resumeNo;
		this.resumeName = resumeName;
		this.resumeBirthday = resumeBirthday;
		this.resumeEmail = resumeEmail;
		this.resumePhoneNum = resumePhoneNum;
		this.resumeAdd = resumeAdd;
		this.resumeMarry = resumeMarry;
		this.resumeGender = resumeGender;
		this.resumeMilitary = resumeMilitary;
		this.resumeEduBeginDate = resumeEduBeginDate;
		this.resumeEduEndDate = resumeEduEndDate;
		this.resumeEduName = resumeEduName;
		this.resumeEduMajor = resumeEduMajor;
		this.resumeEduLoc = resumeEduLoc;
		this.resumeEduGrade = resumeEduGrade;
		this.resumeEduGraduate = resumeEduGraduate;
		this.resumeCareerBeginDate = resumeCareerBeginDate;
		this.resumeCareerEndDate = resumeCareerEndDate;
		this.resumeCareerName = resumeCareerName;
		this.resumeCareerPos = resumeCareerPos;
		this.resumeCareerLoc = resumeCareerLoc;
		this.resumeCareerJob = resumeCareerJob;
		this.resumeLicenseDate = resumeLicenseDate;
		this.resumeLicenseName = resumeLicenseName;
		this.resumeLicenseInst = resumeLicenseInst;
		this.resumeLicenseGrade = resumeLicenseGrade;
		this.perNo = perNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getResumeName() {
		return resumeName;
	}

	public void setResumeName(String resumeName) {
		this.resumeName = resumeName;
	}

	public Date getResumeBirthday() {
		return resumeBirthday;
	}

	public void setResumeBirthday(Date resumeBirthday) {
		this.resumeBirthday = resumeBirthday;
	}

	public String getResumeEmail() {
		return resumeEmail;
	}

	public void setResumeEmail(String resumeEmail) {
		this.resumeEmail = resumeEmail;
	}

	public String getResumePhoneNum() {
		return resumePhoneNum;
	}

	public void setResumePhoneNum(String resumePhoneNum) {
		this.resumePhoneNum = resumePhoneNum;
	}

	public String getResumeAdd() {
		return resumeAdd;
	}

	public void setResumeAdd(String resumeAdd) {
		this.resumeAdd = resumeAdd;
	}

	public String getResumeMarry() {
		return resumeMarry;
	}

	public void setResumeMarry(String resumeMarry) {
		this.resumeMarry = resumeMarry;
	}

	public String getResumeGender() {
		return resumeGender;
	}

	public void setResumeGender(String resumeGender) {
		this.resumeGender = resumeGender;
	}

	public String getResumeMilitary() {
		return resumeMilitary;
	}

	public void setResumeMilitary(String resumeMilitary) {
		this.resumeMilitary = resumeMilitary;
	}

	public String getResumeEduBeginDate() {
		return resumeEduBeginDate;
	}

	public void setResumeEduBeginDate(String resumeEduBeginDate) {
		this.resumeEduBeginDate = resumeEduBeginDate;
	}

	public String getResumeEduEndDate() {
		return resumeEduEndDate;
	}

	public void setResumeEduEndDate(String resumeEduEndDate) {
		this.resumeEduEndDate = resumeEduEndDate;
	}

	public String getResumeEduName() {
		return resumeEduName;
	}

	public void setResumeEduName(String resumeEduName) {
		this.resumeEduName = resumeEduName;
	}

	public String getResumeEduMajor() {
		return resumeEduMajor;
	}

	public void setResumeEduMajor(String resumeEduMajor) {
		this.resumeEduMajor = resumeEduMajor;
	}

	public String getResumeEduLoc() {
		return resumeEduLoc;
	}

	public void setResumeEduLoc(String resumeEduLoc) {
		this.resumeEduLoc = resumeEduLoc;
	}

	public String getResumeEduGrade() {
		return resumeEduGrade;
	}

	public void setResumeEduGrade(String resumeEduGrade) {
		this.resumeEduGrade = resumeEduGrade;
	}

	public String getResumeEduGraduate() {
		return resumeEduGraduate;
	}

	public void setResumeEduGraduate(String resumeEduGraduate) {
		this.resumeEduGraduate = resumeEduGraduate;
	}

	public String getResumeCareerBeginDate() {
		return resumeCareerBeginDate;
	}

	public void setResumeCareerBeginDate(String resumeCareerBeginDate) {
		this.resumeCareerBeginDate = resumeCareerBeginDate;
	}

	public String getResumeCareerEndDate() {
		return resumeCareerEndDate;
	}

	public void setResumeCareerEndDate(String resumeCareerEndDate) {
		this.resumeCareerEndDate = resumeCareerEndDate;
	}

	public String getResumeCareerName() {
		return resumeCareerName;
	}

	public void setResumeCareerName(String resumeCareerName) {
		this.resumeCareerName = resumeCareerName;
	}

	public String getResumeCareerPos() {
		return resumeCareerPos;
	}

	public void setResumeCareerPos(String resumeCareerPos) {
		this.resumeCareerPos = resumeCareerPos;
	}

	public String getResumeCareerLoc() {
		return resumeCareerLoc;
	}

	public void setResumeCareerLoc(String resumeCareerLoc) {
		this.resumeCareerLoc = resumeCareerLoc;
	}

	public String getResumeCareerJob() {
		return resumeCareerJob;
	}

	public void setResumeCareerJob(String resumeCareerJob) {
		this.resumeCareerJob = resumeCareerJob;
	}

	public String getResumeLicenseDate() {
		return resumeLicenseDate;
	}

	public void setResumeLicenseDate(String resumeLicenseDate) {
		this.resumeLicenseDate = resumeLicenseDate;
	}

	public String getResumeLicenseName() {
		return resumeLicenseName;
	}

	public void setResumeLicenseName(String resumeLicenseName) {
		this.resumeLicenseName = resumeLicenseName;
	}

	public String getResumeLicenseInst() {
		return resumeLicenseInst;
	}

	public void setResumeLicenseInst(String resumeLicenseInst) {
		this.resumeLicenseInst = resumeLicenseInst;
	}

	public String getResumeLicenseGrade() {
		return resumeLicenseGrade;
	}

	public void setResumeLicenseGrade(String resumeLicenseGrade) {
		this.resumeLicenseGrade = resumeLicenseGrade;
	}

	public int getPerNo() {
		return perNo;
	}

	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}

	@Override
	public String toString() {
		return "ResumeDto [resumeNo=" + resumeNo + ", resumeName=" + resumeName
				+ ", resumeBirthday=" + resumeBirthday + ", resumeEmail=" + resumeEmail
				+ ", resumePhoneNum=" + resumePhoneNum + ", resumeAdd=" + resumeAdd
				+ ", resumeMarry=" + resumeMarry + ", resumeGender=" + resumeGender
				+ ", resumeMilitary=" + resumeMilitary 
				+ ", resumeEduBeginDate=" + resumeEduBeginDate 
				+ ", resumeEduEndDate=" + resumeEduEndDate + ", resumeEduName=" + resumeEduName
				+ ", resumeEduMajor=" + resumeEduMajor + ", resumeEduLoc=" + resumeEduLoc
				+ ", resumeEduGrade=" + resumeEduGrade + ", resumeEduGraduate="
				+ resumeEduGraduate + ", resumeCareerBeginDate=" + resumeCareerBeginDate
				+ ", resumeCareerEndDate=" + resumeCareerEndDate
				+ ", resumeCareerName=" + resumeCareerName + ", resumeCareerPos=" + resumeCareerPos
				+ ", resumeCareerLoc=" + resumeCareerLoc + ", resumeCareerJob=" + resumeCareerJob
				+ ", resumeLicenseDate=" + resumeLicenseDate
				+ ", resumeLicenseName=" + resumeLicenseName
				+ ", resumeLicenseInst=" + resumeLicenseInst
				+ ", resumeLicenseGrade=" + resumeLicenseGrade + ", perNo=" + perNo + "]";
	}

	
	
}
