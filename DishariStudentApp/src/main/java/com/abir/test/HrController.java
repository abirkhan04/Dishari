package com.abir.test;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dishari.student.bo.TeacherEducation;
import com.dishari.student.bo.TeacherExperience;
import com.dishari.student.model.Address;
import com.dishari.student.model.BasicInformation;
import com.dishari.student.model.PermanentAddress;
import com.dishari.student.model.PresentAddress;
import com.dishari.student.model.StudentAddressForm;
import com.dishari.student.services.DataService;
import com.dishari.teacher.model.TeacherBasicInfo;


@Controller
@RequestMapping("/humanresource")
public class HrController{
	
	@Autowired
	DataService dataService;

		
	@RequestMapping(value={"/teacher"}, method = RequestMethod.GET)
	public String TeacherManagement(Model model){		    		     
		return "teachermanagement";
	}
	
	@RequestMapping(value={"/teacherbasicinfoformsubmitted"}, method = RequestMethod.POST)
	public @ResponseBody String TeacherBasicInfoFormSubmitted(Model model, @ModelAttribute TeacherBasicInfo teacherBasicInfo){	
		                                		
		        
		System.out.println("inside teacher basic info");
		dataService.insertRow(teacherBasicInfo);
		        
		        
		return "teacherbasicinfoformsubmitted";
	}		

	
	
	
	
	@RequestMapping(value={"/teacheraddressinfoformsubmitted"}, method = RequestMethod.POST)
	public @ResponseBody String TeacherAddressFormSubmitted(Model model, @ModelAttribute StudentAddressForm teacherAddressForm,HttpServletRequest request){	
		
		HttpSession session = request.getSession();
        System.out.println("Inside address form");
        Address presentAddress = new Address();
        
        TeacherBasicInfo teacherBasicInfo = (TeacherBasicInfo) session.getAttribute("teacher");
        
        // System.out.println(basicInformation.getClassStart());
       // Copying data from Student Address form field to present address
        presentAddress.setHouseNumber(teacherAddressForm.getPrhouseNumber());
        presentAddress.setRoadNumber(teacherAddressForm.getPrroadNumber());
        presentAddress.setSectorNumber(teacherAddressForm.getPrsector());
        presentAddress.setThana(teacherAddressForm.getPrthana());
        presentAddress.setPostCodeNumber(teacherAddressForm.getPrpost());
        presentAddress.setPostname(teacherAddressForm.getPrpostCode());
        presentAddress.setDistrict(teacherAddressForm.getPrdistrict());
        presentAddress.setTeacherBasicInfo(teacherBasicInfo);
       
        presentAddress.setAddresstype("present");
        
        
        //Inserting present Address to database
        dataService.insertRow(presentAddress);
       
        
        if(!teacherAddressForm.getPermanentAddressSimilarity().equalsIgnoreCase("Yes")){	      
       // Copying data from Student Address form field to permanent address    	            
        Address permanentAddress = new Address();
        permanentAddress.setHouseNumber(teacherAddressForm.getPerhouseNumber());
        permanentAddress.setPostCodeNumber(teacherAddressForm.getPerpostCodeNumber());
        permanentAddress.setRoadNumber(teacherAddressForm.getPerroadNumber());
        permanentAddress.setSectorNumber(teacherAddressForm.getPerroadNumber());
        permanentAddress.setThana(teacherAddressForm.getPerthana());
        permanentAddress.setDistrict(teacherAddressForm.getPerdistrict());
        permanentAddress.setTeacherBasicInfo(teacherBasicInfo);	  
        permanentAddress.setAddresstype("permanent");
        dataService.insertRow(permanentAddress);	    				        
		System.out.println("inside teacher basic info");
	//	dataService.insertRow(teacherAddressForm);		        
		return "teacheraddressinofformsubmitted";
	  }
		return "teacheraddressinfoformsubmitted";			
}
		
	@RequestMapping(value={"/teachereducationformsubmitted"}, method = RequestMethod.POST)
	public @ResponseBody String TeacherEducationFormSubmitted(Model model, @ModelAttribute TeacherEducation teacherEducation){	
		         		         	
		         int numberofinputs=0;
		        
		         //Parsing string to specific sets and storing to cachemap
		         String NameofDegree = teacherEducation.getNameofdegree();
		         List<String> nameofDegree = Arrays.asList(NameofDegree.split(","));
		         
		         //Obtaining the number of inputs in the form
		         numberofinputs = nameofDegree.size();	
		         com.dishari.teacher.model.TeacherEducation[] teacherEdu = new com.dishari.teacher.model.TeacherEducation[numberofinputs];
		         String gpaObtained = teacherEducation.getGpaobtained();
		         List<String> gpaobtained = Arrays.asList(gpaObtained.split(","));
		         String InstitutionName = teacherEducation.getInstitutionname();
		         List<String> InstituteName = Arrays.asList(InstitutionName.split(","));
		         String yocofthework = teacherEducation.getYocofthework();
		         List<String> YocoftheWork = Arrays.asList(yocofthework.split(","));      	           
		         //Inserting to model attribute and persisting to database
		        		       	 	        
		         for(int j=0;j<numberofinputs; j++){
		        	 
		            teacherEdu[j] = new com.dishari.teacher.model.TeacherEducation();
		        	teacherEdu[j].setNameofdegree(nameofDegree.get(j));
		            teacherEdu[j].setInstitutionname(InstituteName.get(j));
		            teacherEdu[j].setGpaobtained(InstituteName.get(j));
		            teacherEdu[j].setYocofthework(YocoftheWork.get(j));   
		            
		            try{
		               dataService.insertRow(teacherEdu[j]);
		               }catch(Exception e){
		            	e.printStackTrace();
		            }
		         }		         
		return "teachermanagement";
	}		
	
	
	@RequestMapping(value={"/teacherexperienceformsubmitted"}, method = RequestMethod.POST)
	public @ResponseBody String TeacherExperienceFormSubmitted(Model model, @ModelAttribute TeacherExperience teacherExperience){	
		         		         	
		         int numberofinputs=0;
		         
		         //Parsing string to specific sets and storing to cachemap
		         String CompanyName = teacherExperience.getCompanyName();
		         List<String> companyName = Arrays.asList(CompanyName.split(","));
		         
		         //Obtaining the number of inputs in the form
		         numberofinputs = companyName.size();	
		         System.out.println(numberofinputs);
		         com.dishari.teacher.model.TeacherExperience[] teacherExp = new com.dishari.teacher.model.TeacherExperience[numberofinputs];
		         String leavingYear = teacherExperience.getLeavingYear();
		         List<String> LeavingYear = Arrays.asList(leavingYear.split(","));
		         String recognition = teacherExperience.getRecognition();
		         List<String> Recognition = Arrays.asList(recognition.split(","));
		         String yofexp = teacherExperience.getYearOfExperience();
		         List<String> YofExp = Arrays.asList(yofexp.split(","));      	           
		         //Inserting to model attribute and persisting to database
		        		       	 	        
		         for(int j=0;j<numberofinputs; j++){     	 
		            teacherExp[j] = new com.dishari.teacher.model.TeacherExperience();
		        	teacherExp[j].setCompanyName(companyName.get(j));
		            teacherExp[j].setRecognition(Recognition.get(j));
		            teacherExp[j].setYearOfExperience(YofExp.get(j));
		            teacherExp[j].setLeavingYear(LeavingYear.get(j));     
		             try{
		               dataService.insertRow(teacherExp[j]);
		                     }catch(Exception e)
		                  {
		            	    e.printStackTrace();
		              }
		         }		         
	     return "teachermanagement";
	}	
}