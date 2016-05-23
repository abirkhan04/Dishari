package com.abir.test;


import javax.json.*;
import javax.servlet.http.HttpServletResponse;
import javax.json.JsonObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dishari.student.model.RoutineSubject;


@Controller
@RequestMapping("/class")
public class ClassController<Gson> {
	
	  @RequestMapping(value={"/management"}, method = RequestMethod.GET)
	  public String classManagement(Model model) {
        
         return "classmanagement";
      }
	  
      @RequestMapping(value={"/routineformsubmitted"},method = RequestMethod.POST)
      public @ResponseBody String routineformsubmitted(@ModelAttribute RoutineSubject routineSubject,HttpServletResponse response){                
         System.out.println("inside routine form submitted");
         
        
         JsonObject json = Json.createObjectBuilder()
             .add("Subject", routineSubject.getSubject())
             .add("Teacher", routineSubject.getTeacher())
             .add("Syllabus",routineSubject.getSyllabus())
             .add("Exam",routineSubject.isExam())
              .build();           
         System.out.println(json.toString());
           
         return json.toString();	  
      }  
}