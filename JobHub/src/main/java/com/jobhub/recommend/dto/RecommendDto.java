package com.jobhub.recommend.dto;


import java.util.Date;

public class RecommendDto {

	int recommendNo;
	String recommendPrefer;
	int perNo;
	int comNo;
	String recommendTotalRate;
	Date recommendDate;
	String recommendResult;
	
	public RecommendDto() {
		super();
	}
	

	public RecommendDto(String recommendPrefer, int perNo
			, int comNo, String recommendTotalRate) {
		super();
		this.recommendPrefer = recommendPrefer;
		this.perNo = perNo;
		this.comNo = comNo;
		this.recommendTotalRate = recommendTotalRate;

	}



	public RecommendDto(int recommendNo, String recommendPrefer, int perNo
			, int comNo, String recommendTotalRate
			, Date recommendDate, String recommendResult) {
		super();
		this.recommendNo = recommendNo;
		this.recommendPrefer = recommendPrefer;
		this.perNo = perNo;
		this.comNo = comNo;
		this.recommendTotalRate = recommendTotalRate;
		this.recommendDate = recommendDate;
		this.recommendResult = recommendResult;
	}

	public int getRecommendNo() {
		return recommendNo;
	}

	public void setRecommendNo(int recommendNo) {
		this.recommendNo = recommendNo;
	}

	public String getRecommendPrefer() {
		return recommendPrefer;
	}

	public void setRecommendPrefer(String recommendPrefer) {
		this.recommendPrefer = recommendPrefer;
	}

	public int getPerNo() {
		return perNo;
	}

	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}

	public int getComNo() {
		return comNo;
	}

	public void setComNo(int comNo) {
		this.comNo = comNo;
	}

	public String getRecommendTotalRate() {
		return recommendTotalRate;
	}

	public void setRecommendTotalRate(String recommendTotalRate) {
		this.recommendTotalRate = recommendTotalRate;
	}

	public Date getRecommendDate() {
		return recommendDate;
	}

	public void setRecommendDate(Date recommendDate) {
		this.recommendDate = recommendDate;
	}

	public String getRecommendResult() {
		return recommendResult;
	}

	public void setRecommendResult(String recommendResult) {
		this.recommendResult = recommendResult;
	}

	@Override
	public String toString() {
		return "RecommendDto [recommendNo=" + recommendNo + ", recommendPrefer=" + recommendPrefer
				+ ", perNo=" + perNo + ", comNo=" + comNo + ", recommendTotalRate=" + recommendTotalRate
				+ ", recommendDate=" + recommendDate + ", recommendResult=" + recommendResult + "]";
	}
	
	
	
	
	
}
