package com.jobhub.review.dto;

import java.util.Date;

public class ReviewDto {

	private int reviewNo;
	private String reviewTitle;
	private String reviewContent;
	private int reviewSal;
	private int reviewWel;
	private int reviewEnv;
	private int reviewBoss;
	private int reviewBal;
	private String reviewGood;
	private String reviewBad;
	private double reviewAvg;
	private Date reviewCreDate;
	private Date reviewModDate;
	private int reviewPNo;
	private int reviewCNo;
	
	public ReviewDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewDto(int reviewNo, String reviewTitle, String reviewContent
			, int reviewSal, int reviewWel, int reviewEnv, int reviewBoss
			, int reviewBal, String reviewGood, String reviewBad, double reviewAvg
			, Date reviewCreDate, Date reviewModDate, int reviewPNo, int reviewCNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewSal = reviewSal;
		this.reviewWel = reviewWel;
		this.reviewEnv = reviewEnv;
		this.reviewBoss = reviewBoss;
		this.reviewBal = reviewBal;
		this.reviewGood = reviewGood;
		this.reviewBad = reviewBad;
		this.reviewAvg = reviewAvg;
		this.reviewCreDate = reviewCreDate;
		this.reviewModDate = reviewModDate;
		this.reviewPNo = reviewPNo;
		this.reviewCNo = reviewCNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getReviewSal() {
		return reviewSal;
	}

	public void setReviewSal(int reviewSal) {
		this.reviewSal = reviewSal;
	}

	public int getReviewWel() {
		return reviewWel;
	}

	public void setReviewWel(int reviewWel) {
		this.reviewWel = reviewWel;
	}

	public int getReviewEnv() {
		return reviewEnv;
	}

	public void setReviewEnv(int reviewEnv) {
		this.reviewEnv = reviewEnv;
	}

	public int getReviewBoss() {
		return reviewBoss;
	}

	public void setReviewBoss(int reviewBoss) {
		this.reviewBoss = reviewBoss;
	}

	public int getReviewBal() {
		return reviewBal;
	}

	public void setReviewBal(int reviewBal) {
		this.reviewBal = reviewBal;
	}

	public String getReviewGood() {
		return reviewGood;
	}

	public void setReviewGood(String reviewGood) {
		this.reviewGood = reviewGood;
	}

	public String getReviewBad() {
		return reviewBad;
	}

	public void setReviewBad(String reviewBad) {
		this.reviewBad = reviewBad;
	}

	public double getReviewAvg() {
		return reviewAvg;
	}

	public void setReviewAvg(double reviewAvg) {
		this.reviewAvg = reviewAvg;
	}

	public Date getReviewCreDate() {
		return reviewCreDate;
	}

	public void setReviewCreDate(Date reviewCreDate) {
		this.reviewCreDate = reviewCreDate;
	}

	public Date getReviewModDate() {
		return reviewModDate;
	}

	public void setReviewModDate(Date reviewModDate) {
		this.reviewModDate = reviewModDate;
	}

	public int getReviewPNo() {
		return reviewPNo;
	}

	public void setReviewPNo(int reviewPNo) {
		this.reviewPNo = reviewPNo;
	}

	public int getReviewCNo() {
		return reviewCNo;
	}

	public void setReviewCNo(int reviewCNo) {
		this.reviewCNo = reviewCNo;
	}

	@Override
	public String toString() {
		return "ReviewDto [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewSal=" + reviewSal
				+ ", reviewWel=" + reviewWel + ", reviewEnv=" + reviewEnv
				+ ", reviewBoss=" + reviewBoss + ", reviewBal=" + reviewBal
				+ ", reviewGood=" + reviewGood + ", reviewBad=" + reviewBad
				+ ", reviewAvg=" + reviewAvg + ", reviewCreDate=" + reviewCreDate
				+ ", reviewModDate=" + reviewModDate + ", reviewPNo=" + reviewPNo
				+ ", reviewCNo=" + reviewCNo + "]";
	}
	
	

	
}