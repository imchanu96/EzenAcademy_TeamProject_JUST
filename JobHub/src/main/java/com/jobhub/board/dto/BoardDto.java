package com.jobhub.board.dto;

import java.util.Date;

public class BoardDto {

	private int boardNo;
	private String boardTag;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private String boardImg;
	private String boardVotingCheck;
	private Date boardCreDate;
	private Date boardModDate;
	private int boardLikeCount;
	private int boardViews;
	private int perNo;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int boardNo, String boardTag, String boardTitle
			, String boardWriter, String boardContent
			, String boardImg, String boardVotingCheck
			, Date boardCreDate, Date boardModDate, int boardLikeCount,
			int boardViews, int perNo) {
		super();
		this.boardNo = boardNo;
		this.boardTag = boardTag;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.boardContent = boardContent;
		this.boardImg = boardImg;
		this.boardVotingCheck = boardVotingCheck;
		this.boardCreDate = boardCreDate;
		this.boardModDate = boardModDate;
		this.boardLikeCount = boardLikeCount;
		this.boardViews = boardViews;
		this.perNo = perNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTag() {
		return boardTag;
	}

	public void setBoardTag(String boardTag) {
		this.boardTag = boardTag;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardImg() {
		return boardImg;
	}

	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}

	public String getBoardVotingCheck() {
		return boardVotingCheck;
	}

	public void setBoardVotingCheck(String boardVotingCheck) {
		this.boardVotingCheck = boardVotingCheck;
	}

	public Date getBoardCreDate() {
		return boardCreDate;
	}

	public void setBoardCreDate(Date boardCreDate) {
		this.boardCreDate = boardCreDate;
	}

	public Date getBoardModDate() {
		return boardModDate;
	}

	public void setBoardModDate(Date boardModDate) {
		this.boardModDate = boardModDate;
	}

	public int getBoardLikeCount() {
		return boardLikeCount;
	}

	public void setBoardLikeCount(int boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}

	public int getBoardViews() {
		return boardViews;
	}

	public void setBoardViews(int boardViews) {
		this.boardViews = boardViews;
	}

	public int getPerNo() {
		return perNo;
	}

	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}

	@Override
	public String toString() {
		return "BoardDto [boardNo=" + boardNo + ", boardTag=" + boardTag
				+ ", boardTitle=" + boardTitle + ", boardWriter=" + boardWriter
				+ ", boardContent=" + boardContent + ", boardImg=" + boardImg
				+ ", boardVotingCheck=" + boardVotingCheck
				+ ", boardCreDate=" + boardCreDate + ", boardModDate=" + boardModDate
				+ ", boardLikeCount=" + boardLikeCount + ", boardViews=" + boardViews
				+ ", perNo=" + perNo + "]";
	}

	
	
}