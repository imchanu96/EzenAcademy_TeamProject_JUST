package com.jobhub.board.dto;

public class CommentDto {

	private int comNo;
	private String comContent;
	private int comLikeCount;
	private int boardNo;
	private int perNo;
	
	public CommentDto() {
		super();
	}

	public CommentDto(int comNo, String comContent, int comLikeCount, int boardNo, int perNo) {
		super();
		this.comNo = comNo;
		this.comContent = comContent;
		this.comLikeCount = comLikeCount;
		this.boardNo = boardNo;
		this.perNo = perNo;
	}

	public int getComNo() {
		return comNo;
	}

	public void setComNo(int comNo) {
		this.comNo = comNo;
	}

	public String getComContent() {
		return comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public int getComLikeCount() {
		return comLikeCount;
	}

	public void setComLikeCount(int comLikeCount) {
		this.comLikeCount = comLikeCount;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getPerNo() {
		return perNo;
	}

	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}

	@Override
	public String toString() {
		return "CommentDto [comNo=" + comNo + ", comContent=" + comContent + ", comLikeCount=" + comLikeCount + ", bNo="
				+ boardNo + ", perNo=" + perNo + "]";
	}
	
}
