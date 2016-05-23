package com.dishari.student.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;


@Repository
@Entity
@Table(name="guardiandetail")
public class GuardianDetail {
    
	 @Id
     @Column(name = "guardian_id")
	 public long Guardian_id;
	
	 @Column(name = "relationship")
	 public String Relationship;	
	
	 @Column(name = "officename")
	 public String OfficeName;
	
	 public long getGuardian_id() {
		return Guardian_id;
	}

	public void setGuardian_id(long guardian_id) {
		Guardian_id = guardian_id;
	}

	public String getRelationship() {
		return Relationship;
	}

	public void setRelationship(String relationship) {
		Relationship = relationship;
	}

	public String getOfficeName() {
		return OfficeName;
	}

	public void setOfficeName(String officeName) {
		OfficeName = officeName;
	}

	public String getDesignation() {
		return Designation;
	}

	public void setDesignation(String designation) {
		Designation = designation;
	}

	public BasicInformation getStudent() {
		return basicInformation;
	}

	public void setStudent(BasicInformation basicInformation) {
		this.basicInformation = basicInformation;
	}

	 @Column(name = "designation")
	 public String Designation;
		
	 @ManyToOne
	 @JoinColumn(name="STUDENT_ID")
	 private BasicInformation basicInformation;	 
}