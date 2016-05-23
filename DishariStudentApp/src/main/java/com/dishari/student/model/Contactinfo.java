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
@Table(name="contactinfo")
public class Contactinfo {        	
	@Id			
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long contactId;
	 
	@Column(name = "stmobilenumber1")
	public String stmobilenumber1;
	
	@Column(name = "stmobilenumber2")
	public String stmobilenumber2;
	
	
	@Column(name = "fsmobilenumber1")
	public String fsmobilenumber1;
	
	@Column(name = "fsmobilenumber2")
	public String fsmobilenumber2;
	
	
	@Column(name = "msmobilenumber1")
	public String msmobilenumber1;
	
	@Column(name = "msmobilenumber2")
	public String msmobilenumber2;
	
	@Column(name = "lgmobilenumber1")
	public String lgmobilenumber1;
	
	@Column(name = "lgmobilenumber2")
	public String lgmobilenumber2;
	
	
	@ManyToOne
	@JoinColumn(name="STUDENT_ID")
	private BasicInformation basicInformation;
	
	
	
	
	public String getStmobilenumber1() {
		return stmobilenumber1;
	}
	public void setStmobilenumber1(String stmobilenumber1) {
		this.stmobilenumber1 = stmobilenumber1;
	}
	public String getStmobilenumber2() {
		return stmobilenumber2;
	}
	public void setStmobilenumber2(String stmobilenumber2) {
		this.stmobilenumber2 = stmobilenumber2;
	}
	public String getFsmobilenumber1() {
		return fsmobilenumber1;
	}
	public void setFsmobilenumber1(String fsmobilenumber1) {
		this.fsmobilenumber1 = fsmobilenumber1;
	}
	public String getFsmobilenumber2() {
		return fsmobilenumber2;
	}
	public void setFsmobilenumber2(String fsmobilenumber2) {
		this.fsmobilenumber2 = fsmobilenumber2;
	}
	public String getMsmobilenumber1() {
		return msmobilenumber1;
	}
	public void setMsmobilenumber1(String msmobilenumber1) {
		this.msmobilenumber1 = msmobilenumber1;
	}
	public String getMsmobilenumber2() {
		return msmobilenumber2;
	}
	public void setMsmobilenumber2(String msmobilenumber2) {
		this.msmobilenumber2 = msmobilenumber2;
	}
	public String getLgmobilenumber1() {
		return lgmobilenumber1;
	}
	public void setLgmobilenumber1(String lgmobilenumber1) {
		this.lgmobilenumber1 = lgmobilenumber1;
	}
	public String getLgmobilenumber2() {
		return lgmobilenumber2;
	}
	public void setLgmobilenumber2(String lgmobilenumber2) {
		this.lgmobilenumber2 = lgmobilenumber2;
	}	
}