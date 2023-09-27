package com.jobhub.company.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CompanyMemberDto {

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
	private String comRev;
	private String comEmp;
	private String comPrName;
	private String comInChargeName;
	private String comInChargeEmail;
	private String comInChargePhoneNum;
	private String comPrefer;
	private int permission;
	private Date comCreDate;
	private Date comModDate;
	private Date connTime;
	private Date disconnTime;
	
	public CompanyMemberDto() {
		super();
	}

	public CompanyMemberDto(int comNo, String comName, String comAdd
			, String comType, Date comEstDate
			, String comHomepage, String comIntroduce
			, String comId, String comPwd, String comCode, String comLicense 
			, String comLogo, String comRev, String comEmp
			, String comPrName, String comInChargeName
			, String comInChargeEmail, String comInChargePhoneNum
			, String comPrefer, int permission, Date comCreDate,
			Date comModDate, Date connTime, Date disconnTime) {
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
		this.comRev = comRev;
		this.comEmp = comEmp;
		this.comPrName = comPrName;
		this.comInChargeName = comInChargeName;
		this.comInChargeEmail = comInChargeEmail;
		this.comInChargePhoneNum = comInChargePhoneNum;
		this.comPrefer = comPrefer;
		this.permission = permission;
		this.comCreDate = comCreDate;
		this.comModDate = comModDate;
		this.connTime = connTime;
		this.disconnTime = disconnTime;
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

	public String getComRev() {
		return comRev;
	}

	public void setComRev(String comRev) {
		this.comRev = comRev;
	}

	public String getComEmp() {
		return comEmp;
	}

	public void setComEmp(String comEmp) {
		this.comEmp = comEmp;
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

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
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
		return "CompanyMemberDto [comNo=" + comNo + ", comName=" + comName + ", comAdd="
				+ comAdd + ", comType=" + comType + ", comEstDate=" + comEstDate
				+ ", comHomepage=" + comHomepage + ", comIntroduce="
				+ comIntroduce + ", comId=" + comId + ", comPwd=" + comPwd
				+ ", comCode=" + comCode + ", comLicense=" + comLicense
				+ ", comLogo=" + comLogo + ", comRev=" + comRev + ", comEmp=" + comEmp
				+ ", comPrName=" + comPrName + ", comInChargeName=" + comInChargeName
				+ ", comInChargeEmail=" + comInChargeEmail
				+ ", comInChargePhoneNum=" + comInChargePhoneNum + ""
				+ ", comPrefer=" + comPrefer + ", permission=" + permission
				+ ", comCreDate=" + comCreDate + ", comModDate=" + comModDate
				+ ", connTime=" + connTime + ", disconnTime=" + disconnTime + "]";
	}
	
	
	
}
