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
@Table(name="teachereducation")
public class TeacherEducation {
	

	@Id			
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long teachereducation_id;
	
	
	@Column(name="nameofdegree")  
	private String nameofdegree;
	
	@Column(name="institutename")
	private String Institutionname;
	
	@Column(name="gpaobtained")
	private String gpaobtained;
	
	@Column(name="yocofthework") // Year of completion of the work
	private String yocofthework;
	
	
	public String getNameofdegree() {
		return nameofdegree;
	}
	
	public void setNameofdegree(String nameofdegree) {
		this.nameofdegree = nameofdegree;
	}
	
	public String getInstitutionname() {
		return Institutionname;
	}
	
	public void setInstitutionname(String institutionname) {
		Institutionname = institutionname;
	}
	
	public String getGpaobtained() {
		return gpaobtained;
	}
	public void setGpaobtained(String gpaobtained) {
		this.gpaobtained = gpaobtained;
	}
	public String getYocofthework() {
		return yocofthework;
	}
	public void setYocofthework(String yocofthework) {
		this.yocofthework = yocofthework;
	}	
}