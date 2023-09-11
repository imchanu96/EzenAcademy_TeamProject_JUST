package com.jobhub.board.dto;

import java.util.Date;

public class BoardDto {

	private int bNo;
	private String bTag;
	private String bTitle;
	private String bWriter;
	private String bContent;
	private String bImg;
	private String bVotingCheck;
	private Date bVotingCreDate;
	private Date bVotingModDate;
	private int bLikeCount;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int bNo, String bTag, String bTitle, String bWriter, String bContent, String bImg,
			String bVotingCheck, Date bVotingCreDate, Date bVotingModDate, int bLikeCount) {
		super();
		this.bNo = bNo;
		this.bTag = bTag;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bImg = bImg;
		this.bVotingCheck = bVotingCheck;
		this.bVotingCreDate = bVotingCreDate;
		this.bVotingModDate = bVotingModDate;
		this.bLikeCount = bLikeCount;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTag() {
		return bTag;
	}

	public void setbTag(String bTag) {
		this.bTag = bTag;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbImg() {
		return bImg;
	}

	public void setbImg(String bImg) {
		this.bImg = bImg;
	}

	public String getbVotingCheck() {
		return bVotingCheck;
	}

	public void setbVotingCheck(String bVotingCheck) {
		this.bVotingCheck = bVotingCheck;
	}

	public Date getbVotingCreDate() {
		return bVotingCreDate;
	}

	public void setbVotingCreDate(Date bVotingCreDate) {
		this.bVotingCreDate = bVotingCreDate;
	}

	public Date getbVotingModDate() {
		return bVotingModDate;
	}

	public void setbVotingModDate(Date bVotingModDate) {
		this.bVotingModDate = bVotingModDate;
	}

	public int getbLikeCount() {
		return bLikeCount;
	}

	public void setbLikeCount(int bLikeCount) {
		this.bLikeCount = bLikeCount;
	}

	@Override
	public String toString() {
		return "BoardDto [bNo=" + bNo + ", bTag=" + bTag + ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContent="
				+ bContent + ", bImg=" + bImg + ", bVotingCheck=" + bVotingCheck + ", bVotingCreDate=" + bVotingCreDate
				+ ", bVotingModDate=" + bVotingModDate + ", bLikeCount=" + bLikeCount + "]";
	}
	
}
