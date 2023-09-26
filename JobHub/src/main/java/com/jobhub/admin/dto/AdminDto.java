package com.jobhub.admin.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AdminDto {

	private int pNo;
	private String pName;
	private String pId;
	private String pPwd;
	private String pPhoneNum;
	private String pCom;
	private String pNickname;
	private String pProfile;
	private String pEmail;
	private Date pHireDate;
	private String pKeyword;
	private String pTemporarily;
	private int pPermission;
	private Date pCreateDate;
	private Date pModifyDate;
	private Date pConnectionTime;
	private Date pDisconnectionTime;
	
	private int cNo;
	private String cName;
	private String cAdd;
	private String cType;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date cEstDate;
	private String cHomepage;
	private String cIntroduce;
	private String cId;
	private String cPwd;
	private String cCode;
	private String cLicense;
	private String cLogo;
	private String cPrName;
	private String cInChargeName;
	private String cInChargeEmail;
	private String cInChargePhoneNum;
	private String cPrefer;
	private Date cCreDate;
	private Date cModDate;
	private Date connTime;
	private Date disconnTime;
	
	public AdminDto() {
		super();
	}

	public AdminDto(int pNo, String pName, String pId, String pPwd
			, String pPhoneNum, String pCom, String pNickname
			, String pProfile, String pEmail, Date pHireDate, String pKeyword
			, String pTemporarily, int pPermission, Date pCreateDate
			, Date pModifyDate, Date pConnectionTime, Date pDisconnectionTime) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pId = pId;
		this.pPwd = pPwd;
		this.pPhoneNum = pPhoneNum;
		this.pCom = pCom;
		this.pNickname = pNickname;
		this.pProfile = pProfile;
		this.pEmail = pEmail;
		this.pHireDate = pHireDate;
		this.pKeyword = pKeyword;
		this.pTemporarily = pTemporarily;
		this.pPermission = pPermission;
		this.pCreateDate = pCreateDate;
		this.pModifyDate = pModifyDate;
		this.pConnectionTime = pConnectionTime;
		this.pDisconnectionTime = pDisconnectionTime;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getpPwd() {
		return pPwd;
	}

	public void setpPwd(String pPwd) {
		this.pPwd = pPwd;
	}

	public String getpPhoneNum() {
		return pPhoneNum;
	}

	public void setpPhoneNum(String pPhoneNum) {
		this.pPhoneNum = pPhoneNum;
	}

	public String getpCom() {
		return pCom;
	}

	public void setpCom(String pCom) {
		this.pCom = pCom;
	}

	public String getpNickname() {
		return pNickname;
	}

	public void setpNickname(String pNickname) {
		this.pNickname = pNickname;
	}

	public String getpProfile() {
		return pProfile;
	}

	public void setpProfile(String pProfile) {
		this.pProfile = pProfile;
	}

	public String getpEmail() {
		return pEmail;
	}

	public void setpEmail(String pEmail) {
		this.pEmail = pEmail;
	}

	public Date getpHireDate() {
		return pHireDate;
	}

	public void setpHireDate(Date pHireDate) {
		this.pHireDate = pHireDate;
	}

	public String getpKeyword() {
		return pKeyword;
	}

	public void setpKeyword(String pKeyword) {
		this.pKeyword = pKeyword;
	}

	public String getpTemporarily() {
		return pTemporarily;
	}

	public void setpTemporarily(String pTemporarily) {
		this.pTemporarily = pTemporarily;
	}

	public int getpPermission() {
		return pPermission;
	}

	public void setpPermission(int pPermission) {
		this.pPermission = pPermission;
	}

	public Date getpCreateDate() {
		return pCreateDate;
	}

	public void setpCreateDate(Date pCreateDate) {
		this.pCreateDate = pCreateDate;
	}

	public Date getpModifyDate() {
		return pModifyDate;
	}

	public void setpModifyDate(Date pModifyDate) {
		this.pModifyDate = pModifyDate;
	}

	public Date getpConnectionTime() {
		return pConnectionTime;
	}

	public void setpConnectionTime(Date pConnectionTime) {
		this.pConnectionTime = pConnectionTime;
	}

	public Date getpDisconnectionTime() {
		return pDisconnectionTime;
	}

	public void setpDisconnectionTime(Date pDisconnectionTime) {
		this.pDisconnectionTime = pDisconnectionTime;
	}
	
	

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcAdd() {
		return cAdd;
	}

	public void setcAdd(String cAdd) {
		this.cAdd = cAdd;
	}

	public String getcType() {
		return cType;
	}

	public void setcType(String cType) {
		this.cType = cType;
	}

	public Date getcEstDate() {
		return cEstDate;
	}

	public void setcEstDate(Date cEstDate) {
		this.cEstDate = cEstDate;
	}

	public String getcHomepage() {
		return cHomepage;
	}

	public void setcHomepage(String cHomepage) {
		this.cHomepage = cHomepage;
	}

	public String getcIntroduce() {
		return cIntroduce;
	}

	public void setcIntroduce(String cIntroduce) {
		this.cIntroduce = cIntroduce;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getcPwd() {
		return cPwd;
	}

	public void setcPwd(String cPwd) {
		this.cPwd = cPwd;
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public String getcLicense() {
		return cLicense;
	}

	public void setcLicense(String cLicense) {
		this.cLicense = cLicense;
	}

	public String getcLogo() {
		return cLogo;
	}

	public void setcLogo(String cLogo) {
		this.cLogo = cLogo;
	}

	public String getcPrName() {
		return cPrName;
	}

	public void setcPrName(String cPrName) {
		this.cPrName = cPrName;
	}

	public String getcInChargeName() {
		return cInChargeName;
	}

	public void setcInChargeName(String cInChargeName) {
		this.cInChargeName = cInChargeName;
	}

	public String getcInChargeEmail() {
		return cInChargeEmail;
	}

	public void setcInChargeEmail(String cInChargeEmail) {
		this.cInChargeEmail = cInChargeEmail;
	}

	public String getcInChargePhoneNum() {
		return cInChargePhoneNum;
	}

	public void setcInChargePhoneNum(String cInChargePhoneNum) {
		this.cInChargePhoneNum = cInChargePhoneNum;
	}

	public String getcPrefer() {
		return cPrefer;
	}

	public void setcPrefer(String cPrefer) {
		this.cPrefer = cPrefer;
	}

	public Date getcCreDate() {
		return cCreDate;
	}

	public void setcCreDate(Date cCreDate) {
		this.cCreDate = cCreDate;
	}

	public Date getcModDate() {
		return cModDate;
	}

	public void setcModDate(Date cModDate) {
		this.cModDate = cModDate;
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
		return "AdminDto [pNo=" + pNo + ", pName=" + pName + ", pId=" + pId
				+ ", pPwd=" + pPwd + ", pPhoneNum="	+ pPhoneNum
				+ ", pCom=" + pCom + ", pNickname=" + pNickname
				+ ", pProfile=" + pProfile + ", pEmail=" + pEmail
				+ ", pHireDate=" + pHireDate + ", pKeyword=" + pKeyword
				+ ", pTemporarily=" + pTemporarily
				+ ", pPermission=" + pPermission
				+ ", pCreateDate=" + pCreateDate
				+ ", pModifyDate=" + pModifyDate
				+ ", pConnectionTime=" + pConnectionTime 
				+ ", pDisconnectionTime=" + pDisconnectionTime + "]";
	}

	
	
	
}

