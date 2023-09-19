package com.jobhub.personal.dto;

public class LetterDto {

	private int lNo;
	private String history;
	private String motivation;
	private String character;
	private String goal;
	private int pNo;
	
	public LetterDto() {
		super();
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
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

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public LetterDto(int lNo, String history, String motivation, String character, String goal, int pNo) {
		super();
		this.lNo = lNo;
		this.history = history;
		this.motivation = motivation;
		this.character = character;
		this.goal = goal;
		this.pNo = pNo;
	}

	
}
