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
@Table(name="teacherbasicinfo")
public class TeacherBasicInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long TeacherBasicInfoId;
	
	
	@Column(name = "firstname")
	private String firstName;
	
	@Column(name="lastname")
	private String lastName;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="gender")
	private String gender;
	
	
	@Column(name = "reference")
	private String references;
	
		
	public Long getTeacherBasicInfoId() {
		return TeacherBasicInfoId;
	}
	public void setTeacherBasicInfoId(Long teacherBasicInfoId) {
		TeacherBasicInfoId = teacherBasicInfoId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getReferences() {
		return references;
	}
	public void setReferences(String references) {
		this.references = references;
	}			
}