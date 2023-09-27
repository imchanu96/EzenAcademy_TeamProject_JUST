package com.jobhub.admin.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AdminDto {

	private int perNo;
	private String perName;
	private String perId;
	private String perPwd;
	private String perPhoneNum;
	private String perCom;
	private String perNickname;
	private String perProfile;
	private String perEmail;
	private Date perHireDate;
	private String perKeyword;
	private String perTemporarily;
	private int perPermission;
	private Date perCreateDate;
	private Date perModifyDate;
	private Date perConnectionTime;
	private Date perDisconnectionTime;
	
	private int comNo;
	private String comName;
	private String comAdd;
	private String comType;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date comEstDate;
	private String comHomepage;
	private String comIntroduce;
	private String comId;
	private String comPwd;
	private String comCode;
	private String comLicense;
	private String comLogo;
	private String comPrName;
	private String comInChargeName;
	private String comInChargeEmail;
	private String comInChargePhoneNum;
	private String comPrefer;
	private Date comCreDate;
	private Date comModDate;
	private Date connTime;
	private Date disconnTime;
	
	public AdminDto() {
		super();
	}
	
	

	public AdminDto(int perNo, String perName, String perId, String perPwd
			, String perPhoneNum, String perCom, String perNickname, String perProfile
			, String perEmail, Date perHireDate , String perKeyword
			, String perTemporarily, int perPermission, Date perCreateDate
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


	

	public AdminDto(int comNo, String comName, String comAdd, String comType
			, Date comEstDate, String comHomepage, String comIntroduce, String comId
			, String comPwd, String comCode , String comLicense, String comLogo
			, String comPrName, String comInChargeName, String comInChargeEmail
			, String comInChargePhoneNum, String comPrefer, Date comCreDate
			, Date comModDate, Date connTime, Date disconnTime) {
		super();
		this.comNo = comNo;
		this.comName = comName;
		this.comAdd = comAdd;
		this.comType = comType;
		this.comEstDate = comEstDate;
		this.comHomepage = comHomepage;
		this.comIntroduce = comIntroduce;
		this.comId = comId;
		this.comPwd = comPwd;
		this.comCode = comCode;
		this.comLicense = comLicense;
		this.comLogo = comLogo;
		this.comPrName = comPrName;
		this.comInChargeName = comInChargeName;
		this.comInChargeEmail = comInChargeEmail;
		this.comInChargePhoneNum = comInChargePhoneNum;
		this.comPrefer = comPrefer;
		this.comCreDate = comCreDate;
		this.comModDate = comModDate;
		this.connTime = connTime;
		this.disconnTime = disconnTime;
	}



	public AdminDto(int perNo, String perName, String perId, String perPwd
			, String perPhoneNum, String perCom, String perNickname, String perProfile
			, String perEmail, Date perHireDate, String perKeyword
			, String perTemporarily, int perPermission, Date perCreateDate
			, Date perModifyDate, Date perConnectionTime, Date perDisconnectionTime
			, int comNo, String comName, String comAdd, String comType, Date comEstDate
			, String comHomepage, String comIntroduce, String comId, String comPwd
			, String comCode, String comLicense, String comLogo, String comPrName
			, String comInChargeName, String comInChargeEmail, String comInChargePhoneNum
			, String comPrefer, Date comCreDate, Date comModDate, Date connTime
			, Date disconnTime) {
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
		this.comNo = comNo;
		this.comName = comName;
		this.comAdd = comAdd;
		this.comType = comType;
		this.comEstDate = comEstDate;
		this.comHomepage = comHomepage;
		this.comIntroduce = comIntroduce;
		this.comId = comId;
		this.comPwd = comPwd;
		this.comCode = comCode;
		this.comLicense = comLicense;
		this.comLogo = comLogo;
		this.comPrName = comPrName;
		this.comInChargeName = comInChargeName;
		this.comInChargeEmail = comInChargeEmail;
		this.comInChargePhoneNum = comInChargePhoneNum;
		this.comPrefer = comPrefer;
		this.comCreDate = comCreDate;
		this.comModDate = comModDate;
		this.connTime = connTime;
		this.disconnTime = disconnTime;
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



	public int getComNo() {
		return comNo;
	}



	public void setComNo(int comNo) {
		this.comNo = comNo;
	}



	public String getComName() {
		return comName;
	}



	public void setComName(String comName) {
		this.comName = comName;
	}



	public String getComAdd() {
		return comAdd;
	}



	public void setComAdd(String comAdd) {
		this.comAdd = comAdd;
	}



	public String getComType() {
		return comType;
	}



	public void setComType(String comType) {
		this.comType = comType;
	}



	public Date getComEstDate() {
		return comEstDate;
	}



	public void setComEstDate(Date comEstDate) {
		this.comEstDate = comEstDate;
	}



	public String getComHomepage() {
		return comHomepage;
	}



	public void setComHomepage(String comHomepage) {
		this.comHomepage = comHomepage;
	}



	public String getComIntroduce() {
		return comIntroduce;
	}



	public void setComIntroduce(String comIntroduce) {
		this.comIntroduce = comIntroduce;
	}



	public String getComId() {
		return comId;
	}



	public void setComId(String comId) {
		this.comId = comId;
	}



	public String getComPwd() {
		return comPwd;
	}



	public void setComPwd(String comPwd) {
		this.comPwd = comPwd;
	}



	public String getComCode() {
		return comCode;
	}



	public void setComCode(String comCode) {
		this.comCode = comCode;
	}



	public String getComLicense() {
		return comLicense;
	}



	public void setComLicense(String comLicense) {
		this.comLicense = comLicense;
	}



	public String getComLogo() {
		return comLogo;
	}



	public void setComLogo(String comLogo) {
		this.comLogo = comLogo;
	}



	public String getComPrName() {
		return comPrName;
	}



	public void setComPrName(String comPrName) {
		this.comPrName = comPrName;
	}



	public String getComInChargeName() {
		return comInChargeName;
	}



	public void setComInChargeName(String comInChargeName) {
		this.comInChargeName = comInChargeName;
	}



	public String getComInChargeEmail() {
		return comInChargeEmail;
	}



	public void setComInChargeEmail(String comInChargeEmail) {
		this.comInChargeEmail = comInChargeEmail;
	}



	public String getComInChargePhoneNum() {
		return comInChargePhoneNum;
	}



	public void setComInChargePhoneNum(String comInChargePhoneNum) {
		this.comInChargePhoneNum = comInChargePhoneNum;
	}



	public String getComPrefer() {
		return comPrefer;
	}



	public void setComPrefer(String comPrefer) {
		this.comPrefer = comPrefer;
	}



	public Date getComCreDate() {
		return comCreDate;
	}



	public void setComCreDate(Date comCreDate) {
		this.comCreDate = comCreDate;
	}



	public Date getComModDate() {
		return comModDate;
	}



	public void setComModDate(Date comModDate) {
		this.comModDate = comModDate;
	}



	public Date getConnTime() {
		return connTime;
	}



	public void setConnTime(Date connTime) {
		this.connTime = connTime;
	}



	public Date getDisconnTime() {
		return disconnTime;
	}



	public void setDisconnTime(Date disconnTime) {
		this.disconnTime = disconnTime;
	}



	@Override
	public String toString() {
		return "AdminDto [perNo=" + perNo + ", perName=" + perName + ", perId=" + perId
				+ ", perPwd=" + perPwd + ", perPhoneNum=" + perPhoneNum
				+ ", perCom=" + perCom + ", perNickname=" + perNickname
				+ ", perProfile=" + perProfile + ", perEmail=" + perEmail
				+ ", perHireDate=" + perHireDate + ", perKeyword=" + perKeyword 
				+ ", perTemporarily=" + perTemporarily + ", perPermission="
				+ perPermission + ", perCreateDate=" + perCreateDate
				+ ", perModifyDate=" + perModifyDate
				+ ", perConnectionTime=" + perConnectionTime
				+ ", perDisconnectionTime=" + perDisconnectionTime
				+ ", comNo=" + comNo + ", comName=" + comName + ", comAdd=" + comAdd
				+ ", comType=" + comType + ", comEstDate=" + comEstDate
				+ ", comHomepage=" + comHomepage + ", comIntroduce=" + comIntroduce
				+ ", comId=" + comId + ", comPwd=" + comPwd + ", comCode=" + comCode
				+ ", comLicense=" + comLicense + ", comLogo=" + comLogo
				+ ", comPrName=" + comPrName + ", comInChargeName=" + comInChargeName
				+ ", comInChargeEmail=" + comInChargeEmail
				+ ", comInChargePhoneNum=" + comInChargePhoneNum 
				+ ", comPrefer=" + comPrefer + ", comCreDate=" + comCreDate
				+ ", comModDate=" + comModDate
				+ ", connTime=" + connTime + ", disconnTime=" + disconnTime + "]";
	}

	
}

