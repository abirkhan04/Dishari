package com.dishari.student.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


//import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Repository;


@Repository
@Entity
@Table(name="basicinformation")
public class BasicInformation{					
	
    @Id			
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
        
    @Column(name="registrationnumber")
    private Long RegistrationNumber;
         

	public Long getRegistrationNumber() {
		return RegistrationNumber;
	}

	public void setRegistrationNumber(Long registrationNumber) {
		RegistrationNumber = registrationNumber;
	}

	@Column(name="studentId")
    private Long StudentId;
	

	public Long getStudentId() {
		return StudentId;
	}

	public void setStudentId(Long studentId) {
		StudentId = studentId;
	}

	@Column(name="familyname")
	private String familyName;

	@Column(name="nickname")
	private String nickName;
		
	@Column(name="institutionname")
	private String institutionName;
	
	public String getNickName() {
		return nickName;
	}

    public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getInstitutionName() {
		return institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public String getOptionalSubject() {
		return optionalSubject;
	}

	public void setOptionalSubject(String optionalSubject) {
		this.optionalSubject = optionalSubject;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}
  

	public String getClassroll() {
		return classroll;
	}

	public void setClassroll(String classroll) {
		this.classroll = classroll;
	}


	public String getFourthSubject() {
		return fourthSubject;
	}

	public void setFourthSubject(String fourthSubject) {
		this.fourthSubject = fourthSubject;
	}


	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	
	@Column(name = "groupname")
	private String groupname;
	
	@Column(name="class")
	private String Clss;
	
	


	public String getClss() {
		return Clss;
	}

	public void setClss(String clss) {
		Clss = clss;
	}

	@Column(name="optionalSubject")
	private String optionalSubject;
	
	@Column(name="section")
	private String section;

	
	@Column(name="classRoll")
	private String classroll;
	
	@Column(name="fourthSubject")
    private String fourthSubject;
      		
	public Long getId() {
		return id;
	    }
	public void setId(Long id) {
		this.id = id;
	     }	
	public String getFamilyName(){
		return familyName;
	   }  
    public void setFamilyName(String familyName) {
		      this.familyName = familyName;
	}
}