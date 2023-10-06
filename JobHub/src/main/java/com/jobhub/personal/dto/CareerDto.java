package com.jobhub.personal.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CareerDto {

	private int carNo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date carBeginDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date carEndDate;
	private String carName;
	private String carPosition;
	private String carLocation;
	private String carJob;
	private int resumeNo;
	
	public CareerDto() {
		super();
	}

	public CareerDto(int carNo, Date carBeginDate, Date carEndDate
			, String carName, String carPosition,
			String carLocation, String carJob, int resumeNo) {
		super();
		this.carNo = carNo;
		this.carBeginDate = carBeginDate;
		this.carEndDate = carEndDate;
		this.carName = carName;
		this.carPosition = carPosition;
		this.carLocation = carLocation;
		this.carJob = carJob;
		this.resumeNo = resumeNo;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public Date getCarBeginDate() {
		return carBeginDate;
	}

	public void setCarBeginDate(Date carBeginDate) {
		this.carBeginDate = carBeginDate;
	}

	public Date getCarEndDate() {
		return carEndDate;
	}

	public void setCarEndDate(Date carEndDate) {
		this.carEndDate = carEndDate;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarPosition() {
		return carPosition;
	}

	public void setCarPosition(String carPosition) {
		this.carPosition = carPosition;
	}

	public String getCarLocation() {
		return carLocation;
	}

	public void setCarLocation(String carLocation) {
		this.carLocation = carLocation;
	}

	public String getCarJob() {
		return carJob;
	}

	public void setCarJob(String carJob) {
		this.carJob = carJob;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	@Override
	public String toString() {
		return "CareerDto [carNo=" + carNo + ", carBeginDate=" + carBeginDate
				+ ", carEndDate=" + carEndDate + ", carName=" + carName
				+ ", carPosition=" + carPosition + ", carLocation=" + carLocation
				+ ", carJob=" + carJob + ", resumeNo=" + resumeNo + "]";
	}
	
	
}
