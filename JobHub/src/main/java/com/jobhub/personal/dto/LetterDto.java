package com.jobhub.personal.dto;

public class LetterDto {

	private int letterNo;
	private String history;
	private String motivation;
	private String character;
	private String goal;
	private int perNo;
	
	public LetterDto() {
		super();
	}

	public LetterDto(int letterNo, String history, String motivation
				, String character, String goal, int perNo) {
		super();
		this.letterNo = letterNo;
		this.history = history;
		this.motivation = motivation;
		this.character = character;
		this.goal = goal;
		this.perNo = perNo;
	}

	public int getLetterNo() {
		return letterNo;
	}

	public void setLetterNo(int letterNo) {
		this.letterNo = letterNo;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}

	public String getMotivation() {
		return motivation;
	}

	public void setMotivation(String motivation) {
		this.motivation = motivation;
	}

	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public int getPerNo() {
		return perNo;
	}

	public void setPerNo(int perNo) {
		this.perNo = perNo;
	}

	@Override
	public String toString() {
		return "LetterDto [letterNo=" + letterNo + ", history=" + history
				+ ", motivation=" + motivation + ", character=" + character
				+ ", goal=" + goal + ", perNo=" + perNo + "]";
	}

	
	
}
