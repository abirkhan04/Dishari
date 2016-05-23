package com.abir.test;

import java.text.DecimalFormat;

import java.text.NumberFormat;
import java.time.Year;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dishari.student.model.Address;
import com.dishari.student.model.AdmissionInfoForm;
import com.dishari.student.model.Contactinfo;
import com.dishari.student.model.GuardianDetail;
import com.dishari.student.model.OfficeAddressForm;
import com.dishari.student.model.PermanentAddress;
import com.dishari.student.model.PresentAddress;
import com.dishari.student.model.BasicInformation;
import com.dishari.student.model.ProgramOfStudy;
import com.dishari.student.model.StudentAddressForm;
import com.dishari.student.model.StudentInfo;
import com.dishari.student.services.DataService;
/**
 * Handles requests for the application home page.
 * To create app using node.js, Express, mongodb and jade.
 * http://cwbuecheler.com/web/tutorials/2013/node-express-mongo/
 */
@Controller
public class HomeController{		         
	         @Autowired
	         DataService dataService;
	    	         
	         @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	         public String homePage(Model model){
	             return "homePage";
	        }
	 	     	    	         
	        @RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
	        public String contactusPage(Model model) {
	                model.addAttribute("address", "Vietnam");
	                model.addAttribute("phone", "...");
	                model.addAttribute("email", "...");
	                return "contactusPage";
	         }
	    
	        
	         @RequestMapping(value = { "/common" }, method = RequestMethod.GET)
	         public String adminHomePage(Model model,HttpServletRequest req, HttpServletResponse resp) {	
	        	 String url=null;
	        	 if(req.isUserInRole("ROLE_ADMIN")) {
		        	        url = "adminhome";       	
	        	       }else  if(req.isUserInRole("ROLE_USER")) {
		        	        url = "userhome";
	        	   }	        	 
	                return url;
	          }	
	         	         
	          @RequestMapping(value = { "/admissionform" }, method = RequestMethod.GET)
	          public String adminHome(Model model,HttpServletRequest req, HttpServletResponse resp) {		        		 
	                return "adminhome";
	          }	
	         	         
	          @RequestMapping(value= {"/studentadmission" }, method = RequestMethod.GET)
	          public String StudentAdmission(Model model ) {         
	                 return "studentadmission";
	          }
	    	  
	          
	          @RequestMapping(value = { "/basicinfoformsubmit" }, method = RequestMethod.POST) 
	          public @ResponseBody String  AdmissionFormSubmitted(@ModelAttribute BasicInformation basicInformation,HttpServletRequest request, HttpServletResponse response, Model model) {   	        	  
	    	    System.out.println("test");    	   
	    	   //Parsing Student Form and Extracting student  	               	   
	    	    /////////////////////////////////
	    	    ////////// Implementing Database Operation for Student/////    	    	    	    	      	    
	    	    //Generating unique id	
	    	    
	    	    int year = Year.now().getValue();
	    	    String Year = Integer.toString(year).substring(2,4);
	    	    String StudentId = null;
	    	    Long studentId = null;
	    	    String RegistrationNumber= null;
	    	    Long registrationNumber = null;
	    	    
	    	    int Group = 0;
	    	    int serialnumber = 0;
	    	    String group = null;
	    	    String str;
	    	    //Obtaining last serial number	    	   	    	    
	    	    group = basicInformation.getGroupname();
	    	    int numberofrows = 0;
	    	   
	    	    System.out.println(group);
	    	    
	    	    class nestedClass{
	    	      int Group;
	    	      int nestedswitch(String group){
	    	         switch(group){
	    	    		case "science"://001-499
	    	    			Group = 1;
	    	    			break;
	    	    			
	    	    		case "commerce": //501-799
	    	    		    Group = 2;
	    	    		break;
	    	    		
	    	    		case "arts":
	    	    			Group = 3; //801-999
	    	    			break;
	    	    		case "vocational":
	    	    			Group = 4;
	    	    			break;
	    	    		default:
	    	    			break;   	    			
	    	    		}
	    	    	return Group;	
	    	    	}	    	    	
	    	    }
	    	    	    	    
	    	    String Class = basicInformation.getClss();
	    	    System.out.println(Class+group);
	    	    int clss = 0;
	    	    if(group!=null){
	    	         Group = new nestedClass().nestedswitch(group); 
	    	         numberofrows = dataService.getRowsbyClassandGroup(Class,group);
	    	    }
	    	    switch(Class){	    	    
	    	       case "six":
	    	    	   clss = 6;
	    	    	   group = null;
	    	    	   //Obtaining Serial number    	    	   	    	    	   
	    	          break; 	    
	    	       case "seven":
	    	    	    clss = 7;
	    	    	    group = null;
	    	          break;
	    	       case "eight":
	    	    	    clss = 8;
	    	    	    group = null;
	    	           break;
	    	       case "nine": 
	    	    	   //
	    	    	   clss= 9;
	    	    	   if(Group==1){       
	    	    	         serialnumber = numberofrows;// Assuming number of rows will be less than 
	    	    	     }
	    	    	   else if(Group==2)
	    	    	      {	    	    		   
	    	    		      serialnumber = 500+numberofrows;	    	    		   
	    	    	           }
	    	    	           else if(Group==3 || Group == 4){
                            serialnumber = 800+numberofrows;	    	    		   	    	    		   
	    	    	           }else
	    	    	         {   	    		   
	    	    		      System.out.println("Group not inserted");   	    		  
	    	    		  }   	    		   
	    	    	   break;
	    	       case "ten":
	    	    	   clss= 0;
	    	    	   if(Group==1){       
	    	    	         serialnumber = numberofrows;// Assuming number of rows will be less than 
	    	    	     }
	    	    	   else if(Group==2)
	    	    	      {	    	    		   
	    	    		      serialnumber = 500+numberofrows;	    	    		   
	    	    	           }
	    	    	           else if(Group==3 || Group == 4){
                              serialnumber = 800+numberofrows;	    	    		   	    	    		   
	    	    	           }else
	    	    	         {   	    		   
	    	    		      System.out.println("Group not inserted");   	    		  
	    	    		  }   	    		   	    	    	   
	    	    	break;
	    	    	
	    	       case "eleven":
	    	    	   clss = 1;
                        if(Group==1){    	    	       
	    	    	       serialnumber = numberofrows;     // Assuming number of rows will be less than 
	    	    	     }
	    	    	   else if(Group==2)
	    	    	      {	    	    		   
	    	    		      serialnumber = 500+numberofrows;	    	    		   
	    	    	           }
	    	    	           else if(Group==3|| Group==4){
                              serialnumber = 800+numberofrows;	    	    		   	    	    		   
	    	    	           }else
	    	    	         {   	    		   
	    	    		      System.out.println("Group not inserted");   	    		  
	    	    		  }    		  	    	    	    	    	   
	    	    	 break;
	    	    	 
	    	       case "twelve":
	    	    	   clss = 2;
                        if(Group==1){   	    	       
	    	    	              serialnumber = numberofrows+1;     // Assuming number of rows will be less than 
	    	    	        }
	    	    	   else if(Group==2)
	    	    	        {	    	    		   
	    	    		           serialnumber = 501+numberofrows;	    	    		   
	    	    	            }
	    	    	                else if(Group==3||Group == 4){
                                       serialnumber = 801+numberofrows;	    	    		   	    	    		   
	    	    	         }else
	    	    	           {   	    		   
	    	    		      System.out.println("Group not inserted");   	    		  
	    	    		  }   	    		  	    	    	   
	    	    	 break;      	    	 
	    	       default: 
	    	    	    break;	    	    	
	    	    }	    
	    	    //dataService.insertRow(basicInformation);
	    	 	if(group!=null){	    	    	    	         
	    	        //Formatting Unique Id, Roll Number and Registration Number
	    	 		 NumberFormat formatter = new DecimalFormat("000");  
		    	 	 String s = formatter.format(serialnumber+1); 		
	    	         StudentId = Year + Integer.toString(clss)+ s;	
	    	         
	    	         NumberFormat FormatForRegistration = new DecimalFormat("0000");    	        
	    	         String Sr = FormatForRegistration.format(numberofrows+1);
	    	         String YearReg = Year.substring(1,2);
	    	         RegistrationNumber = YearReg+Integer.toString(clss)+Integer.toString(Group)+Sr;
	    	 	  }
	    	 	else{	    	 		
	    	 		String groupname = "NA";
	    	 		System.out.println("Inside group of six");
	    	        numberofrows = dataService.getRowsbyClassandGroup(Class,groupname); 
	    	        //Formatting unique Id , Roll Number and Registration Number	    	                    	             
	    	 	    basicInformation.setGroupname(groupname);
	    	 	    NumberFormat formatter = new DecimalFormat("000");  
	    	 	    String s = formatter.format(numberofrows+1);	    	 	    
	    	 	    StudentId = Year + Integer.toString(clss)+ s;
	    	 	    
	    	 	    NumberFormat FormatForRegistration = new DecimalFormat("0000");
	    	 	    String Sr = FormatForRegistration.format(numberofrows+1);
	    	 	    String YearReg = Year.substring(1,2);
	    	 	    RegistrationNumber = YearReg+Integer.toString(clss)+Sr;
	    	 	  }	
	    	 	
	    	 	studentId = Long.valueOf(StudentId);
	    	 	registrationNumber = Long.valueOf(RegistrationNumber);
	    	 	System.out.println(registrationNumber);	    	 	
	    	 	System.out.println(studentId);
	    	 	basicInformation.setStudentId(studentId);
	    	 	basicInformation.setRegistrationNumber(registrationNumber);
	    	 	dataService.insertRow(basicInformation);		    	    	    	    
	    	    HttpSession session = request.getSession(); 
	    	    session.setAttribute("student", basicInformation);
	    	    // model.addAttribute("basicInformation",basicInformation);
	    	 	
	    	 	// Creating json Object
	    	 	JSONObject jsonObject = new JSONObject();	    	 	
	    	 	str = "<div><table><tr><td align:left>Student Id:  </td>  <td>"+basicInformation.getStudentId()+"</td></tr>"
	    	 			+ "<tr><td align:left>Registration Number: </td><td>"+basicInformation.getRegistrationNumber()+"</td></tr></table></div>";
	    	 	    try{
					    jsonObject.put("studentid",str);
				    }catch (JSONException e) {
					// TODO Auto-generated catch block
					  e.printStackTrace();
				  }	    	 	
	                return str;	            
	            }	    	   
	          
	            @RequestMapping(value = {"/addressformsubmit"},method = RequestMethod.POST)
	            public @ResponseBody StudentAddressForm StudentAddressFormSubmitted(@ModelAttribute StudentAddressForm studentAddressForm, HttpServletRequest request)
	               {
	    	           HttpSession session = request.getSession();
	    	           System.out.println("Inside address form");
			           PresentAddress presentAddress = new PresentAddress();
			           BasicInformation basicInformation = (BasicInformation) session.getAttribute("student");
	    	         // System.out.println(basicInformation.getClassStart());
	    	          // Copying data from Student Address form field to present address
	    	           presentAddress.setPrhouseNumber(studentAddressForm.getPrhouseNumber());
	                   presentAddress.setPrflatNumber(studentAddressForm.getPrflatNumber());
	                   presentAddress.setPrroadNumber(studentAddressForm.getPrroadNumber());
	                   presentAddress.setPrsector(studentAddressForm.getPrsector());
	                   presentAddress.setPrthana(studentAddressForm.getPrthana());
	                   presentAddress.setPrpost(studentAddressForm.getPrpost());
	                   presentAddress.setPrpostCode(studentAddressForm.getPrpostCode());
	                   presentAddress.setPrdistrict(studentAddressForm.getPrdistrict());
	                   presentAddress.setStudent(basicInformation);
	                   presentAddress.setAddresstype("present");
	                   
	                   
	    	           //Inserting present Address to database
	                   dataService.insertRow(presentAddress);
	                  
	                   
	                   if(!studentAddressForm.getPermanentAddressSimilarity().equalsIgnoreCase("Yes")){	      
	    	          // Copying data from Student Address form field to permanent address    	            
	                   PermanentAddress permanentAddress = new PermanentAddress();
	                   permanentAddress.setPerhouseNumber(studentAddressForm.getPerhouseNumber());
	                   permanentAddress.setPerpostNumber(studentAddressForm.getPerpostNumber());
	                   permanentAddress.setPerpostCodeNumber(studentAddressForm.getPerpostCodeNumber());
	                   permanentAddress.setPerroadNumber(studentAddressForm.getPerroadNumber());
	                   permanentAddress.setPersectorNumber(studentAddressForm.getPerroadNumber());
	                   permanentAddress.setPerthana(studentAddressForm.getPerthana());
	                   permanentAddress.setPerdistrict(studentAddressForm.getPerdistrict());
	                   permanentAddress.setStudent(basicInformation);	                         
	                   dataService.insertRow(permanentAddress);	 
	                   }
	                   return studentAddressForm;   	  
	                }
	           
	           @RequestMapping(value = {"/Officeaddressformsubmitted"},method = RequestMethod.POST)
	           public @ResponseBody Address OfficeAddressFormSubmitted(@ModelAttribute OfficeAddressForm officeAddressForm, HttpServletRequest request)
	             {
	    	           HttpSession session = request.getSession();
	    	           System.out.println("Inside address form");
			           Address address = new Address();
			           GuardianDetail guardianDetail = new GuardianDetail();
			           BasicInformation basicInformation = (BasicInformation) session.getAttribute("student");
	    	          
	    	            // Copying data from Office Address form field to present address
	    	           address.setHouseNumber(officeAddressForm.getHouseNumber());
	    	           address.setRoadNumber(officeAddressForm.getRoadNumber());
	    	           address.setDistrict(officeAddressForm.getDistrict()); 
	    	           address.setPostname(officeAddressForm.getPost());
	    	           address.setPostCodeNumber(officeAddressForm.getPostNumber()); 
	    	           address.setSectorNumber(officeAddressForm.getSector());
	    	           address.setThana(officeAddressForm.getThana());
	    	           address.setAddresstype("fathersOfficeAddress");
	    	           address.setStudent(basicInformation);
	    	           dataService.insertRow(address);     	           
	    	           
	    	           guardianDetail.setDesignation(officeAddressForm.getDesignation());
	    	           guardianDetail.setOfficeName(officeAddressForm.getOfficename());
	    	           guardianDetail.setRelationship(officeAddressForm.getRelationship());
	    	           guardianDetail.setStudent(basicInformation);	    	        	    	           	                  
	                   dataService.insertRow(guardianDetail);	                   	                   	                   
	              return address;   	  
	         }     
	           
	           
	           @RequestMapping(value = {"/contactinfoformsubmitted"},method = RequestMethod.POST)
	           public @ResponseBody Contactinfo ContactinfoFormSubmitted(@ModelAttribute Contactinfo contactinfo, HttpServletRequest request)
	             {
	    	           HttpSession session = request.getSession();
	    	           System.out.println("Inside address form");
			           Address address = new Address();    
			           BasicInformation basicInformation = (BasicInformation) session.getAttribute("student");	    	        	    	          	    	          	                         	                  
	                   dataService.insertRow(contactinfo);	                                	                   
	                return contactinfo;   	  
	           }   
	           	           
	           @RequestMapping(value = {"/studentidformsubmitted"},method = RequestMethod.POST)
	           public @ResponseBody ModelAndView StudentidFormSubmitted(@ModelAttribute  Long  studentid, HttpServletRequest request)
	                {
	        	       ModelAndView model = null;
	    	           HttpSession session = request.getSession();    	           	    	            	           
	    	           //Retrieving Student information from student id
	    	           BasicInformation basicInformation = dataService.getStudentRowbyId(studentid);    	        
	    	   		   model.addObject(basicInformation);	    	   		   
	                   //dataService.insertRow(mode);			                
	                   return model;   	  
	             }  
	           
	            @RequestMapping(value = {"/admissioninfoformsubmitted"}, method = RequestMethod.POST)
	            public @ResponseBody AdmissionInfoForm admissioninfoFormSubmitted(@ModelAttribute AdmissionInfoForm admissioninfoForm,HttpServletRequest request) throws Exception{
	             // Parsing admission Info form and inserting relevant data to relevant table=	
	            	     HttpSession session = request.getSession();
	            	     System.out.println("Inside program of study");
	        	         ProgramOfStudy programOfStudy = new ProgramOfStudy();
	        	         programOfStudy.setSubject(admissioninfoForm.getSubject()); 
	        	         BasicInformation basicInformation = (BasicInformation)session.getAttribute("student");
	        	         programOfStudy.setBasicInformation(basicInformation);
	        	         //Inserting program of study              
	                     dataService.insertRow(programOfStudy);       	       	        	          	        	                   
	                 return admissioninfoForm;
	             }
	            
	            @RequestMapping(value = {"/studentinfoformsubmitted"}, method = RequestMethod.POST)
	            public @ResponseBody StudentInfo studentinfoFormSubmitted(@ModelAttribute StudentInfo studentInfo,HttpServletRequest request) throws Exception{
	             // Parsing admission Info form and inserting relevant data to relevant table=	
	            	 HttpSession session = request.getSession();
	            	 BasicInformation basicInformation = (BasicInformation)session.getAttribute("student");
	            	 studentInfo.setBasicInformation(basicInformation);    	 
	            	// System.out.println(studentInfo.getReferences()+"test");
	        	     //Inserting program of study              	                 
	            	 dataService.insertRow(studentInfo);       	       	        	          	        	                   
	                 return studentInfo;
	             }	            
	            
	            @RequestMapping(value = {"/instituteaddressformsubmitted"}, method = RequestMethod.POST)
	            public @ResponseBody Address InstituteAddressFormSubmitted(@ModelAttribute Address address,HttpServletRequest request) throws Exception{
	             // Parsing admission Info form and inserting relevant data to relevant table=	
	            	 HttpSession session = request.getSession();
	            	 BasicInformation basicInformation = (BasicInformation)session.getAttribute("student");
	            	 address.setBasicInformation(basicInformation);         	 
	            	 address.setAddresstype("School");            	 
	            	// System.out.println(studentInfo.getReferences()+"test");
	        	     //Inserting program of study              	                 
	            	 dataService.insertRow(address);       	       	        	          	        	                   
	                 return address;
	             }
	            
	           	       	           	           	            
	             @RequestMapping(value = "/admissionForm", method = RequestMethod.GET)
	             public ModelAndView ViewResume(Model model) throws Exception{
	                 // create some sample dat	    	       
	                 return new ModelAndView("viewform");
	             }
	             
	             @RequestMapping(value = {"/retrieveschoolname"}, method = RequestMethod.GET)
		         public @ResponseBody String Retrieveschoolname(@ModelAttribute StudentInfo studentInfo,HttpServletRequest request) throws Exception{
		                 // Parsing admission Info form and inserting relevant data to relevant table=	
		            	 HttpSession session = request.getSession();
		            	 String InstituteName = null;
		            	 String str = null;
		            	 BasicInformation basicInformation = (BasicInformation)session.getAttribute("student");
		            	 System.out.println("test");		            	 
		            	 System.out.println(studentInfo.getReferences()+"test");
		        	     //Inserting program of study 
		            	 try{
		                    InstituteName = basicInformation.getInstitutionName();		
		            	 }catch(Exception e)
		            	 {
		            		e.printStackTrace(); 
		            	 }		            	 
		            	 str = "<div><table><tr><td>Institute Name: </td>  <td>"+InstituteName+"</td></tr></p></div>";		            	 
		            return str;
	          }  
        }