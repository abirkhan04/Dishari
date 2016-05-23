package com.dishari.student.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;


@Repository
@Entity
@Table(name="studentinfo")
public class StudentInfo {
       
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long studentinfoId;
  
  @Column(name="fathername")
  private String fatherName;
  
  @Column(name="fatheroccupation")
  private String foccupation;
  
  @Column(name="mothername")
  private String motherName;
  
  @Column(name="motheroccupation")
  private String moccupation;
  
  
  @Column(name="dateofbirth")
  private Date dob;
  
  
  @Column(name="gender")
  private String Gender;
  
  
  @Column(name="localguardian")
  private String lguardian;
  
  @Column(name="relationwithlocalguardian")
  private String relationwithlocalGuardian;
  
  
  @Column(name="pec")
  private String PEC;
    
  @Column(name="jsc")
  private String JSC;
  
  @Column(name="reference")
  private String References;
  
  
  @Column(name="refpersonname")
  private String refererralpersonName;
  
  
  @Column(name="refpersonmobilenumber")
  private String refpersonmobileNumber;
  
  @Column(name="persontype")
  private String personType;
  
  
  
   
  public String getRefererralpersonName() {
	return refererralpersonName;
}

public void setRefererralpersonName(String refererralpersonName) {
	this.refererralpersonName = refererralpersonName;
}

public String getRefpersonmobileNumber() {
	return refpersonmobileNumber;
}

public void setRefpersonmobileNumber(String refpersonmobileNumber) {
	this.refpersonmobileNumber = refpersonmobileNumber;
}

public String getPersonType() {
	return personType;
}

public void setPersonType(String personType) {
	this.personType = personType;
}

public String getReferences() {
	return References;
  }

  public void setReferences(String references) {
	References = references;
  }

  
  
  
  
  public String getGender() {
	return Gender;
}

public void setGender(String gender) {
	Gender = gender;
}

public String getPEC() {
	return PEC;
}

public void setPEC(String pEC) {
	PEC = pEC;
}

public String getJSC() {
	return JSC;
}

public void setJSC(String jSC) {
	JSC = jSC;
}

public String getSSC() {
	return SSC;
}

public void setSSC(String sSC) {
	SSC = sSC;
}

@Column(name="ssc")
  private String SSC;
  
  	  
  @OneToOne
  @JoinColumn(name="studentId")
  private BasicInformation basicInformation;
  
  



public BasicInformation getBasicInformation() {
	 return basicInformation;
  }

  public void setBasicInformation(BasicInformation basicInformation) {
	  this.basicInformation = basicInformation;
  }

  public Long getStudentinfoId() {
	  return studentinfoId;
  }

  public void setStudentinfoId(Long studentinfoId) {
	 this.studentinfoId = studentinfoId;
  }

  public String getFatherName() {
	return fatherName;
  }

  public void setFatherName(String fatherName){
	this.fatherName = fatherName;
  }

  public String getFoccupation() {
	return foccupation;
  }

  public void setFoccupation(String foccupation){
	this.foccupation = foccupation;
  }

  public String getMotherName() {
	return motherName;
  }

  public void setMotherName(String motherName) {
	this.motherName = motherName;
  }

  public String getMoccupation() {
	return moccupation;
  }

  public void setMoccupation(String moccupation) {
	this.moccupation = moccupation;
  }

  public Date getDob() {
	return dob;
  }

  public void setDob(Date dob) {
	this.dob = dob;
  }


  public String getLguardian() {
	return lguardian;
  }

  public void setLguardian(String lguardian) {
	this.lguardian = lguardian;
  }

  public String getRelationwithlocalGuardian() {
	return relationwithlocalGuardian;
  }

  public void setRelationwithlocalGuardian(String relationwithlocalGuardian) {
	   this.relationwithlocalGuardian = relationwithlocalGuardian;
   }
}