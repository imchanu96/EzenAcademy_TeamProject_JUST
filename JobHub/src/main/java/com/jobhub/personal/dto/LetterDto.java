package com.jobhub.personal.dto;

public class LetterDto {

	private int LetterNo;
	private String history;
	private String motivation;
	private String character;
	private String goal;
	
	public LetterDto() {
		super();
	}

	public LetterDto(int letterNo, String history, String motivation, String character, String goal) {
		super();
		LetterNo = letterNo;
		this.history = history;
		this.motivation = motivation;
		this.character = character;
		this.goal = goal;
	}

	public int getLetterNo() {
		return LetterNo;
	}

	public void setLetterNo(int letterNo) {
		LetterNo = letterNo;
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

	@Override
	public String toString() {
		return "LetterDto [LetterNo=" + LetterNo + ", history=" + history + ", motivation=" + motivation
				+ ", character=" + character + ", goal=" + goal + "]";
	}
	
}
