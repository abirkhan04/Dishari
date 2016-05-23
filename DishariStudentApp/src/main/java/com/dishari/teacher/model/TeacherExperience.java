package com.dishari.teacher.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;


@Repository
@Entity
@Table(name = "teacherexperience")
public class TeacherExperience{
	
	@Id			
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long  teacherexperience_id;
	
	@Column(name="companyName")
	private String companyName;
	
	@Column(name="yearofexperience")
	private String YearOfExperience;
	
	@Column(name="recognition")
    private String Recognition;
    
    @Column(name="leavingyear")
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