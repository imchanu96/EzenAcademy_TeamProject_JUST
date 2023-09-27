package com.jobhub.personal.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PersonalMemberDto {

	private int perNo;
	private String perName;
	private String perId;
	private String perPwd;
	private String perPhoneNum;
	private String perCom;
	private String perNickname;
	private String perProfile;
	private String perEmail;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date perHireDate;
	private String perKeyword;
	private String perTemporarily;
	private int perPermission;
	private Date perCreateDate;
	private Date perModifyDate;
	private Date perConnectionTime;
	private Date perDisconnectionTime;
	
	
	public PersonalMemberDto() {
		super();
	}


	public PersonalMemberDto(int perNo, String perName, String perId
			, String perPwd, String perPhoneNum, String perCom,
			String perNickname, String perProfile, String perEmail
			, Date perHireDate, String perKeyword,
			String perTemporarily, int perPermission, Date perCreateDate
			, Date perModifyDate, Date perConnectionTime, Date perDisconnectionTime) {
		super();
		this.perNo = perNo;
		this.perName = perName;
		this.perId = perId;
		this.perPwd = perPwd;
		this.perPhoneNum = perPhoneNum;
		this.perCom = perCom;
		this.perNickname = perNickname;
		this.perProfile = perProfile;
		this.perEmail = perEmail;
		this.perHireDate = perHireDate;
		this.perKeyword = perKeyword;
		this.perTemporarily = perTemporarily;
		this.perPermission = perPermission;
		this.perCreateDate = perCreateDate;
		this.perModifyDate = perModifyDate;
		this.perConnectionTime = perConnectionTime;
		this.perDisconnectionTime = perDisconnectionTime;
	}


	public int getPerNo() {
		return perNo;
	}


	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}


	public String getPerName() {
		return perName;
	}


	public void setPerName(String perName) {
		this.perName = perName;
	}


	public String getPerId() {
		return perId;
	}


	public void setPerId(String perId) {
		this.perId = perId;
	}


	public String getPerPwd() {
		return perPwd;
	}


	public void setPerPwd(String perPwd) {
		this.perPwd = perPwd;
	}


	public String getPerPhoneNum() {
		return perPhoneNum;
	}


	public void setPerPhoneNum(String perPhoneNum) {
		this.perPhoneNum = perPhoneNum;
	}


	public String getPerCom() {
		return perCom;
	}


	public void setPerCom(String perCom) {
		this.perCom = perCom;
	}


	public String getPerNickname() {
		return perNickname;
	}


	public void setPerNickname(String perNickname) {
		this.perNickname = perNickname;
	}


	public String getPerProfile() {
		return perProfile;
	}


	public void setPerProfile(String perProfile) {
		this.perProfile = perProfile;
	}


	public String getPerEmail() {
		return perEmail;
	}


	public void setPerEmail(String perEmail) {
		this.perEmail = perEmail;
	}


	public Date getPerHireDate() {
		return perHireDate;
	}


	public void setPerHireDate(Date perHireDate) {
		this.perHireDate = perHireDate;
	}


	public String getPerKeyword() {
		return perKeyword;
	}


	public void setPerKeyword(String perKeyword) {
		this.perKeyword = perKeyword;
	}


	public String getPerTemporarily() {
		return perTemporarily;
	}


	public void setPerTemporarily(String perTemporarily) {
		this.perTemporarily = perTemporarily;
	}


	public int getPerPermission() {
		return perPermission;
	}


	public void setPerPermission(int perPermission) {
		this.perPermission = perPermission;
	}


	public Date getPerCreateDate() {
		return perCreateDate;
	}


	public void setPerCreateDate(Date perCreateDate) {
		this.perCreateDate = perCreateDate;
	}


	public Date getPerModifyDate() {
		return perModifyDate;
	}


	public void setPerModifyDate(Date perModifyDate) {
		this.perModifyDate = perModifyDate;
	}


	public Date getPerConnectionTime() {
		return perConnectionTime;
	}


	public void setPerConnectionTime(Date perConnectionTime) {
		this.perConnectionTime = perConnectionTime;
	}


	public Date getPerDisconnectionTime() {
		return perDisconnectionTime;
	}


	public void setPerDisconnectionTime(Date perDisconnectionTime) {
		this.perDisconnectionTime = perDisconnectionTime;
	}


	@Override
	public String toString() {
		return "PersonalMemberDto [perNo=" + perNo + ", perName=" + perName
				+ ", perId=" + perId + ", perPwd=" + perPwd
				+ ", perPhoneNum=" + perPhoneNum + ", perCom=" + perCom
				+ ", perNickname=" + perNickname + ", perProfile=" + perProfile
				+ ", perEmail=" + perEmail + ", perHireDate=" + perHireDate
				+ ", perKeyword=" + perKeyword + ", perTemporarily=" + perTemporarily
				+ ", perPermission=" + perPermission + ", perCreateDate=" + perCreateDate
				+ ", perModifyDate=" + perModifyDate
				+ ", perConnectionTime=" + perConnectionTime
				+ ", perDisconnectionTime=" + perDisconnectionTime + "]";
	}
	
	
	
}
