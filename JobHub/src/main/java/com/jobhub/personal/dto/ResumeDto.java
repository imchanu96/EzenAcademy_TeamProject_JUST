package com.jobhub.personal.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ResumeDto {

	private int rNo;
	private String rName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rBirthday;
	private String rEmail;
	private String rPhoneNum;
	private String rAdd;
	private String rMarry;
	private String rGender;
	private String rMilitary;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rEduBeginDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rEduEndDate;
	private String rEduName;
	private String rEduMajor;
	private String rEduLoc;
	private String rEduGrade;
	private String rEduGraduate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rCareerBeginDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rCareerEndDate;
	private String rCareerName;
	private String rCareerPos;
	private String rCareerLoc;
	private String rCareerJob;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rLicenseDate;
	private String rLicenseName;
	private String rLicenseInst;
	private String rLicenseGrade;
	private int pNo;
	
	public ResumeDto() {
		super();
	}

	public ResumeDto(int rNo, String rName, Date rBirthday, String rEmail, String rPhoneNum, String rAdd, String rMarry,
			String rGender, String rMilitary, Date rEduBeginDate, Date rEduEndDate, String rEduName, String rEduMajor,
			String rEduLoc, String rEduGrade, String rEduGraduate, Date rCareerBeginDate, Date rCareerEndDate,
			String rCareerName, String rCareerPos, String rCareerLoc, String rCareerJob, Date rLicenseDate,
			String rLicenseName, String rLicenseInst, String rLicenseGrade, int pNo) {
		super();
		this.rNo = rNo;
		this.rName = rName;
		this.rBirthday = rBirthday;
		this.rEmail = rEmail;
		this.rPhoneNum = rPhoneNum;
		this.rAdd = rAdd;
		this.rMarry = rMarry;
		this.rGender = rGender;
		this.rMilitary = rMilitary;
		this.rEduBeginDate = rEduBeginDate;
		this.rEduEndDate = rEduEndDate;
		this.rEduName = rEduName;
		this.rEduMajor = rEduMajor;
		this.rEduLoc = rEduLoc;
		this.rEduGrade = rEduGrade;
		this.rEduGraduate = rEduGraduate;
		this.rCareerBeginDate = rCareerBeginDate;
		this.rCareerEndDate = rCareerEndDate;
		this.rCareerName = rCareerName;
		this.rCareerPos = rCareerPos;
		this.rCareerLoc = rCareerLoc;
		this.rCareerJob = rCareerJob;
		this.rLicenseDate = rLicenseDate;
		this.rLicenseName = rLicenseName;
		this.rLicenseInst = rLicenseInst;
		this.rLicenseGrade = rLicenseGrade;
		this.pNo = pNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public Date getrBirthday() {
		return rBirthday;
	}

	public void setrBirthday(Date rBirthday) {
		this.rBirthday = rBirthday;
	}

	public String getrEmail() {
		return rEmail;
	}

	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}

	public String getrPhoneNum() {
		return rPhoneNum;
	}

	public void setrPhoneNum(String rPhoneNum) {
		this.rPhoneNum = rPhoneNum;
	}

	public String getrAdd() {
		return rAdd;
	}

	public void setrAdd(String rAdd) {
		this.rAdd = rAdd;
	}

	public String getrMarry() {
		return rMarry;
	}

	public void setrMarry(String rMarry) {
		this.rMarry = rMarry;
	}

	public String getrGender() {
		return rGender;
	}

	public void setrGender(String rGender) {
		this.rGender = rGender;
	}

	public String getrMilitary() {
		return rMilitary;
	}

	public void setrMilitary(String rMilitary) {
		this.rMilitary = rMilitary;
	}

	public Date getrEduBeginDate() {
		return rEduBeginDate;
	}

	public void setrEduBeginDate(Date rEduBeginDate) {
		this.rEduBeginDate = rEduBeginDate;
	}

	public Date getrEduEndDate() {
		return rEduEndDate;
	}

	public void setrEduEndDate(Date rEduEndDate) {
		this.rEduEndDate = rEduEndDate;
	}

	public String getrEduName() {
		return rEduName;
	}

	public void setrEduName(String rEduName) {
		this.rEduName = rEduName;
	}

	public String getrEduMajor() {
		return rEduMajor;
	}

	public void setrEduMajor(String rEduMajor) {
		this.rEduMajor = rEduMajor;
	}

	public String getrEduLoc() {
		return rEduLoc;
	}

	public void setrEduLoc(String rEduLoc) {
		this.rEduLoc = rEduLoc;
	}

	public String getrEduGrade() {
		return rEduGrade;
	}

	public void setrEduGrade(String rEduGrade) {
		this.rEduGrade = rEduGrade;
	}

	public String getrEduGraduate() {
		return rEduGraduate;
	}

	public void setrEduGraduate(String rEduGraduate) {
		this.rEduGraduate = rEduGraduate;
	}

	public Date getrCareerBeginDate() {
		return rCareerBeginDate;
	}

	public void setrCareerBeginDate(Date rCareerBeginDate) {
		this.rCareerBeginDate = rCareerBeginDate;
	}

	public Date getrCareerEndDate() {
		return rCareerEndDate;
	}

	public void setrCareerEndDate(Date rCareerEndDate) {
		this.rCareerEndDate = rCareerEndDate;
	}

	public String getrCareerName() {
		return rCareerName;
	}

	public void setrCareerName(String rCareerName) {
		this.rCareerName = rCareerName;
	}

	public String getrCareerPos() {
		return rCareerPos;
	}

	public void setrCareerPos(String rCareerPos) {
		this.rCareerPos = rCareerPos;
	}

	public String getrCareerLoc() {
		return rCareerLoc;
	}

	public void setrCareerLoc(String rCareerLoc) {
		this.rCareerLoc = rCareerLoc;
	}

	public String getrCareerJob() {
		return rCareerJob;
	}

	public void setrCareerJob(String rCareerJob) {
		this.rCareerJob = rCareerJob;
	}

	public Date getrLicenseDate() {
		return rLicenseDate;
	}

	public void setrLicenseDate(Date rLicenseDate) {
		this.rLicenseDate = rLicenseDate;
	}

	public String getrLicenseName() {
		return rLicenseName;
	}

	public void setrLicenseName(String rLicenseName) {
		this.rLicenseName = rLicenseName;
	}

	public String getrLicenseInst() {
		return rLicenseInst;
	}

	public void setrLicenseInst(String rLicenseInst) {
		this.rLicenseInst = rLicenseInst;
	}

	public String getrLicenseGrade() {
		return rLicenseGrade;
	}

	public void setrLicenseGrade(String rLicenseGrade) {
		this.rLicenseGrade = rLicenseGrade;
	}
	public int getpNo() {
		return rNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "ResumeDto [rNo=" + rNo + ", rName=" + rName + ", rBirthday=" + rBirthday + ", rEmail=" + rEmail
				+ ", rPhoneNum=" + rPhoneNum + ", rAdd=" + rAdd + ", rMarry=" + rMarry + ", rGender=" + rGender
				+ ", rMilitary=" + rMilitary + ", rEduBeginDate=" + rEduBeginDate + ", rEduEndDate=" + rEduEndDate
				+ ", rEduName=" + rEduName + ", rEduMajor=" + rEduMajor + ", rEduLoc=" + rEduLoc + ", rEduGrade="
				+ rEduGrade + ", rEduGraduate=" + rEduGraduate + ", rCareerBeginDate=" + rCareerBeginDate
				+ ", rCareerEndDate=" + rCareerEndDate + ", rCareerName=" + rCareerName + ", rCareerPos=" + rCareerPos
				+ ", rCareerLoc=" + rCareerLoc + ", rCareerJob=" + rCareerJob + ", rLicenseDate=" + rLicenseDate
				+ ", rLicenseName=" + rLicenseName + ", rLicenseInst=" + rLicenseInst + ", rLicenseGrade="
				+ rLicenseGrade + ", pNo=" + pNo + "]";
	}
	
}
