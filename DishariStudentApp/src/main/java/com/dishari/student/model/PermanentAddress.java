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



@Repository
@Entity
@Table(name="studentaddress")
public class PermanentAddress {
	
	@Id			
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long addressId;
	
	
	@Column(name = "housenumber")
	private String perhouseNumber;
   
	
	 @Column(name = "roadNumber") 
    private String perroadNumber;
   
	 
	 @Column(name = "sector") 
    private String persectorNumber;
   
 
	 @Column(name = "post")
	 private String perpost;
   
	 @Column(name  = "postCode")
     private String perpostCodeNumber;
   
	 @Column(name = "thana")
    private String perthana;
   
	 
	 @Column(name = "district") 
    private String perdistrict;
    
	  @Column(name = "addresstype")
    final String addresstype = "permanent";
	  
	  
	 @ManyToOne
	 @JoinColumn(name="studentId")
	 private BasicInformation basicInformation;
	  

	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	public String getPerpost() {
		return perpost;
	}

	public void setPerpost(String perpost) {
		this.perpost = perpost;
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

	public String getPerhouseNumber(){
		return perhouseNumber;
	}

	public void setPerhouseNumber(String perhouseNumber) {
		this.perhouseNumber = perhouseNumber;
	}

	public String getPerroadNumber() {
		return perroadNumber;
	}

	public void setPerroadNumber(String perroadNumber) {
		this.perroadNumber = perroadNumber;
	}

	public String getPersectorNumber() {
		return persectorNumber;
	}

	public void setPersectorNumber(String persectorNumber) {
		this.persectorNumber = persectorNumber;
	}

	public String getPerpostNumber() {
		return perpost;
	}

	public void setPerpostNumber(String perpostNumber) {
		this.perpost = perpost;
	}

	public String getPerpostCodeNumber() {
		return perpostCodeNumber;
	}

	public void setPerpostCodeNumber(String perpostCodeNumber) {
		this.perpostCodeNumber = perpostCodeNumber;
	}

	public String getPerthana() {
		return perthana;
	}

	public void setPerthana(String perthana) {
		this.perthana = perthana;
	}

	public String getPerdistrict() {
		return perdistrict;
	}
	
	public void setPerdistrict(String perdistrict) {
		this.perdistrict = perdistrict;
	}		
}