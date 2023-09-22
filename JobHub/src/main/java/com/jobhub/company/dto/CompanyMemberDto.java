package com.jobhub.company.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CompanyMemberDto {

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
	private int permission;
	private Date cCreDate;
	private Date cModDate;
	private Date connTime;
	private Date disconnTime;
	
	public CompanyMemberDto() {
		super();
	}

	public CompanyMemberDto(int cNo, String cName, String cAdd, String cType, Date cEstDate, String cHomepage,
			String cIntroduce, String cId, String cPwd, String cCode, String cLicense, String cLogo, String cPrName,
			String cInChargeName, String cInChargeEmail, String cInChargePhoneNum, String cPrefer, int permission,
			Date cCreDate, Date cModDate, Date connTime, Date disconnTime) {
		super();
		this.cNo = cNo;
		this.cName = cName;
		this.cAdd = cAdd;
		this.cType = cType;
		this.cEstDate = cEstDate;
		this.cHomepage = cHomepage;
		this.cIntroduce = cIntroduce;
		this.cId = cId;
		this.cPwd = cPwd;
		this.cCode = cCode;
		this.cLicense = cLicense;
		this.cLogo = cLogo;
		this.cPrName = cPrName;
		this.cInChargeName = cInChargeName;
		this.cInChargeEmail = cInChargeEmail;
		this.cInChargePhoneNum = cInChargePhoneNum;
		this.cPrefer = cPrefer;
		this.permission = permission;
		this.cCreDate = cCreDate;
		this.cModDate = cModDate;
		this.connTime = connTime;
		this.disconnTime = disconnTime;
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

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
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
		return "CompanyMemberDto [cNo=" + cNo + ", cName=" + cName + ", cAdd=" + cAdd + ", cType=" + cType
				+ ", cEstDate=" + cEstDate + ", cHomepage=" + cHomepage + ", cIntroduce=" + cIntroduce + ", cId=" + cId
				+ ", cPwd=" + cPwd + ", cCode=" + cCode + ", cLicense=" + cLicense + ", cLogo=" + cLogo + ", cPrName="
				+ cPrName + ", cInChargeName=" + cInChargeName + ", cInChargeEmail=" + cInChargeEmail
				+ ", cInChargePhoneNum=" + cInChargePhoneNum + ", cPrefer=" + cPrefer + ", permission=" + permission
				+ ", cCreDate=" + cCreDate + ", cModDate=" + cModDate + ", connTime=" + connTime + ", disconnTime="
				+ disconnTime + "]";
	}
}
