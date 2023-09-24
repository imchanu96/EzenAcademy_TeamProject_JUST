package com.jobhub.board.dto;

public class CommentDto {

	private int comNo;
	private String comContent;
	private int comLikeCount;
	private int bNo;
	private int pNo;
	
	public CommentDto() {
		super();
	}

	public CommentDto(int comNo, String comContent, int comLikeCount, int bNo, int pNo) {
		super();
		this.comNo = comNo;
		this.comContent = comContent;
		this.comLikeCount = comLikeCount;
		this.bNo = bNo;
		this.pNo = pNo;
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

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "CommentDto [comNo=" + comNo + ", comContent=" + comContent + ", comLikeCount=" + comLikeCount + ", bNo="
				+ bNo + ", pNo=" + pNo + "]";
	}
	
}
