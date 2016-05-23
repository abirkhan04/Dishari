package com.dishari.student.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

import com.dishari.teacher.model.TeacherBasicInfo;



@Repository
@Entity
@Table(name="address")
public class Address {

	 @Id			
     @GeneratedValue(strategy = GenerationType.AUTO)
     private Long addressId;
		
	 @Column(name = "housenumber")
	 private String houseNumber;
   	
	 @Column(name = "roadNumber") 
     private String roadNumber;
   
	 
	 @Column(name = "sector") 
     private String sectorNumber;
   
 
	 @Column(name = "post")
	 private String postname;
   
	 @Column(name  = "postCode")
     private String postCodeNumber;
   
	 @Column(name = "thana")
     private String thana;
   
	 
	 public Long getAddressId() {
		return addressId;
	}


	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}	

	
	@Column(name = "district") 
    private String district;
    
	  public String getHouseNumber() {
		return houseNumber;
	}


	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}


	public String getRoadNumber() {
		return roadNumber;
	}


	public void setRoadNumber(String roadNumber) {
		this.roadNumber = roadNumber;
	}


	public String getSectorNumber() {
		return sectorNumber;
	}


	public void setSectorNumber(String sectorNumber) {
		this.sectorNumber = sectorNumber;
	}


	public String getPostname() {
		return postname;
	}


	public void setPostname(String postname) {
		this.postname = postname;
	}


	public String getPostCodeNumber() {
		return postCodeNumber;
	}


	public void setPostCodeNumber(String postCodeNumber) {
		this.postCodeNumber = postCodeNumber;
	}


	public String getThana() {
		return thana;
	}


	public void setThana(String thana) {
		this.thana = thana;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public BasicInformation getStudent() {
		return basicInformation;
	}


	public void setStudent(BasicInformation basicInformation) {
		this.basicInformation = basicInformation;
	}


	public String getAddresstype() {
		return addresstype;
	}


	@Column(name = "addresstype")
    String addresstype = "";
	  
	  
	 public BasicInformation getBasicInformation() {
		return basicInformation;
	}


	public void setBasicInformation(BasicInformation basicInformation) {
		this.basicInformation = basicInformation;
	}


	public void setAddresstype(String addresstype) {
		this.addresstype = addresstype;
	}

	 @ManyToOne
	 @JoinColumn(name="studentId")
	 private BasicInformation basicInformation;		
	 
	 
	 @ManyToOne
	 @JoinColumn(name="teacherid")
	 private TeacherBasicInfo teacherBasicInfo;


	public TeacherBasicInfo getTeacherBasicInfo() {
		return teacherBasicInfo;
	}


	public void setTeacherBasicInfo(TeacherBasicInfo teacherBasicInfo) {
		this.teacherBasicInfo = teacherBasicInfo;
	}
	   
}