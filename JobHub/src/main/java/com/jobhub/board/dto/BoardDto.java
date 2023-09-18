package com.jobhub.board.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BoardDto {

	private int bNo;
	private String bTag;
	private String bTitle;
	private String bWriter;
	private String bContent;
	private String bImg;
	private String bVotingCheck;
	private Date bCreDate;
	private Date bModDate;
	private int bLikeCount;
	private int bViews;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int bNo, String bTag, String bTitle, String bWriter, String bContent, String bImg,
			String bVotingCheck, Date bCreDate, Date bModDate, int bLikeCount, int bViews) {
		super();
		this.bNo = bNo;
		this.bTag = bTag;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bImg = bImg;
		this.bVotingCheck = bVotingCheck;
		this.bCreDate = bCreDate;
		this.bModDate = bModDate;
		this.bLikeCount = bLikeCount;
		this.bViews = bViews;
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

	public Date getbCreDate() {
		return bCreDate;
	}

	public void setbCreDate(Date bCreDate) {
		this.bCreDate = bCreDate;
	}

	public Date getbModDate() {
		return bModDate;
	}

	public void setbModDate(Date bModDate) {
		this.bModDate = bModDate;
	}

	public int getbLikeCount() {
		return bLikeCount;
	}

	public void setbLikeCount(int bLikeCount) {
		this.bLikeCount = bLikeCount;
	}

	public int getbViews() {
		return bViews;
	}

	public void setbViews(int bViews) {
		this.bViews = bViews;
	}

	@Override
	public String toString() {
		return "BoardDto [bNo=" + bNo + ", bTag=" + bTag + ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContent="
				+ bContent + ", bImg=" + bImg + ", bVotingCheck=" + bVotingCheck + ", bCreDate=" + bCreDate
				+ ", bModDate=" + bModDate + ", bLikeCount=" + bLikeCount + ", bViews=" + bViews + "]";
	}
	
}