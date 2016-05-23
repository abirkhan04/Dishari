package com.dishari.student.bo;


public class TeacherExperience { 
	private String companyName;
	private String YearOfExperience;
    private String Recognition;
    private String LeavingYear;
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getYearOfExperience() {
		return YearOfExperience;
	}
	public void setYearOfExperience(String yearOfExperience) {
		YearOfExperience = yearOfExperience;
	}
	public String getRecognition() {
		return Recognition;
	}
	public void setRecognition(String recognition) {
		this.Recognition = recognition;
	}
	public String getLeavingYear() {
		return LeavingYear;
	}
	public void setLeavingYear(String leavingYear) {
		LeavingYear = leavingYear;
	}  		
}