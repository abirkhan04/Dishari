package com.dishari.student.model;

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
@Table(name="programofstudy")
public class ProgramOfStudy{	
      
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private Long programofstudy_id;
   
   @OneToOne
   @JoinColumn(name="studentId")
   private BasicInformation basicInformation;
     
   public BasicInformation getBasicInformation() {
	return basicInformation;
}

public void setBasicInformation(BasicInformation basicInformation) {
	this.basicInformation = basicInformation;
}

@Column(name="subject")
   private String Subject;
      
   public String getSubject(){
	    return Subject;
   }

   public void setSubject(String subject) {
	     Subject = subject;
   }	    	       	      
}