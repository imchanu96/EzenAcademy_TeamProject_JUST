package com.jobhub.review.dto;

import java.util.Date;

public class ReviewDto {

	private int rNo;
	private String rTitle;
	private String rContent;
	private int rSal;
	private int rWel;
	private int rEnv;
	private int rBoss;
	private int rBal;
	private String rGood;
	private String rBad;
	private String rAvg;
	private Date rCreDate;
	private Date rModDate;
	
	public ReviewDto() {
		super();
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getrSal() {
		return rSal;
	}

	public void setrSal(int rSal) {
		this.rSal = rSal;
	}

	public int getrWel() {
		return rWel;
	}

	public void setrWel(int rWel) {
		this.rWel = rWel;
	}

	public int getrEnv() {
		return rEnv;
	}

	public void setrEnv(int rEnv) {
		this.rEnv = rEnv;
	}

	public int getrBoss() {
		return rBoss;
	}

	public void setrBoss(int rBoss) {
		this.rBoss = rBoss;
	}

	public int getrBal() {
		return rBal;
	}

	public void setrBal(int rBal) {
		this.rBal = rBal;
	}

	public String getrGood() {
		return rGood;
	}

	public void setrGood(String rGood) {
		this.rGood = rGood;
	}

	public String getrBad() {
		return rBad;
	}

	public void setrBad(String rBad) {
		this.rBad = rBad;
	}

	public String getrAvg() {
		return rAvg;
	}

	public void setrAvg(String rAvg) {
		this.rAvg = rAvg;
	}

	public Date getrCreDate() {
		return rCreDate;
	}

	public void setrCreDate(Date rCreDate) {
		this.rCreDate = rCreDate;
	}

	public Date getrModDate() {
		return rModDate;
	}

	public void setrModDate(Date rModDate) {
		this.rModDate = rModDate;
	}

	@Override
	public String toString() {
		return "ReviewDto [rNo=" + rNo + ", rTitle=" + rTitle + ", rContent=" + rContent + ", rSal=" + rSal + ", rWel="
				+ rWel + ", rEnv=" + rEnv + ", rBoss=" + rBoss + ", rBal=" + rBal + ", rGood=" + rGood + ", rBad="
				+ rBad + ", rAvg=" + rAvg + ", rCreDate=" + rCreDate + ", rModDate=" + rModDate + "]";
	}
}
