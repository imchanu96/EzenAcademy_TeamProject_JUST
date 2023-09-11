package com.jobhub.company.dto;

import java.util.Date;

public class CompanyMemberDto {

	private int cNo;
	private String cName;
	private String cAdd;
	private String cType;
	private Date cEstDate;
	private String cHomepage;
	private String cBusDetail;
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
	
	public CompanyMemberDto() {
		super();
	}

	public CompanyMemberDto(int cNo, String cName, String cAdd, String cType, Date cEstDate, String cHomepage,
			String cBusDetail, String cId, String cPwd, String cCode, String cLicense, String cLogo, String cPrName,
			String cInChargeName, String cInChargeEmail, String cInChargePhoneNum, String cPrefer) {
		super();
		this.cNo = cNo;
		this.cName = cName;
		this.cAdd = cAdd;
		this.cType = cType;
		this.cEstDate = cEstDate;
		this.cHomepage = cHomepage;
		this.cBusDetail = cBusDetail;
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

	public String getcBusDetail() {
		return cBusDetail;
	}

	public void setcBusDetail(String cBusDetail) {
		this.cBusDetail = cBusDetail;
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

	@Override
	public String toString() {
		return "CompanyMemberDto [cNo=" + cNo + ", cName=" + cName + ", cAdd=" + cAdd + ", cType=" + cType
				+ ", cEstDate=" + cEstDate + ", cHomepage=" + cHomepage + ", cBusDetail=" + cBusDetail + ", cId=" + cId
				+ ", cPwd=" + cPwd + ", cCode=" + cCode + ", cLicense=" + cLicense + ", cLogo=" + cLogo + ", cPrName="
				+ cPrName + ", cInChargeName=" + cInChargeName + ", cInChargeEmail=" + cInChargeEmail
				+ ", cInChargePhoneNum=" + cInChargePhoneNum + ", cPrefer=" + cPrefer + "]";
	}
	
}
