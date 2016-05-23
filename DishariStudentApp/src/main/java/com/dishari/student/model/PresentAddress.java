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
public class PresentAddress {
	
        @Id			
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private Long addressId;
	        
	    @Column(name = "flatnumber")
	    private String prflatNumber;
	    
	    
	    @Column(name = "housenumber")
	    private String prhouseNumber;
	    
	    @Column(name = "roadNumber")
	    private String prroadNumber;
	    
	    public Long getAddressId() {
			return addressId;
		}

		public void setAddressId(Long addressId) {
			this.addressId = addressId;
		}

		public BasicInformation getStudent() {
			return basicInformation;
		}

		public void setStudent(BasicInformation basicInformation) {
			this.basicInformation = basicInformation;
		}

		@Column(name = "sector")
	    private String prsector;
	    
	    @Column(name = "post")
	    private String prpost;
	    
	    @Column(name  = "postCode")
	    private String prpostCode;
	    
	    @Column(name = "thana")
	    private String prthana;
	    
	    @Column(name = "district")
	    private String prdistrict;
	   
	    @Column(name="addresstype")
	    private String addresstype;
	    
	    
	    @ManyToOne
	    @JoinColumn(name="studentId")
	    private BasicInformation basicInformation;
	    
	   
		public String getAddresstype() {
		     return addresstype;
	   }

	  public void setAddresstype(String addresstype) {
		     this.addresstype = addresstype;
	   }

		public String getPrflatNumber() {
			return prflatNumber;
		}

		public void setPrflatNumber(String prflatNumber) {
			this.prflatNumber = prflatNumber;
		}

		public String getPrhouseNumber() {
			return prhouseNumber;
		}

		public void setPrhouseNumber(String prhouseNumber) {
			this.prhouseNumber = prhouseNumber;
		}

		public String getPrroadNumber() {
			return prroadNumber;
		}

		public void setPrroadNumber(String prroadNumber) {
			this.prroadNumber = prroadNumber;
		}

		public String getPrsector() {
			return prsector;
		}

		public void setPrsector(String prsector) {
			this.prsector = prsector;
		}

		public String getPrpost() {
			return prpost;
		}

		public void setPrpost(String prpost) {
			this.prpost = prpost;
		}

		public String getPrpostCode() {
			return prpostCode;
		}

		public void setPrpostCode(String prpostCode) {
			this.prpostCode = prpostCode;
		}

		public String getPrthana() {
			return prthana;
		}

		public void setPrthana(String prthana) {
			this.prthana = prthana;
		}

		public String getPrdistrict() {
			return prdistrict;
		}

		public void setPrdistrict(String prdistrict) {
			this.prdistrict = prdistrict;
		}
}