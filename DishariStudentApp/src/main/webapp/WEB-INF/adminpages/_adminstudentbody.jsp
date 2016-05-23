<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%
	   String ctxPath = request.getContextPath();
       String studentid = (String)session.getAttribute("studentId");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Dashboard</title>
<head>
<!-- CSS files -->
  
<script type="text/javascript">           
           $(document).ready(function(){     
           $('#basicinfoform').submit(function(e){      	  
        	e.preventDefault();  //Not to submit form in classic way.
        	    console.log('Working');
        	var value = "";
        	var str = $('#basicinfoform').serialize();
        	var url = "/test/basicinfoformsubmit";
        	$.ajax({
        		type: 'POST',
        		data: str,
                url: url,
                async: false,
               // contentType: "text",
               // dataType: '',
                success: function(json) {
                  //console.log(json.value);   // needs to match the payload (i.e. json must have {value: "foo"}
                  //value = json.value;
                  //alert(value);
                  document.getElementById("studentinfodiv").innerHTML = json;                 
                }
           });   	
      });

        	
     $('#Studentaddressform').submit(function(e){
           	e.preventDefault();  //Not to submit form in classic way.
           	 console.log('Working');
           	var str = $("#Studentaddressform").serialize();
           	$.ajax({
           	    type:"POST",
           	    data: str,
           	    url: "/test/addressformsubmit",
           	    async: false,
           	    dataType: "json",
           	    success: function(response){
           	          $('#admissionform').html(response);   
           	    }
              });
         }); 
     
   $('#Officeaddressform').submit(function(e){
        	e.preventDefault();  //Not to submit form in classic way.
        	 console.log('Working');
        	var str = $("#Officeaddressform").serialize();
        	$.ajax({
        	    type:"POST",
        	    data: str,
        	    url: "/test/Officeaddressformsubmitted",
        	    async: false,
        	    dataType: "json",
        	    success: function(response){
        	          $('#OfficeAddressform').html(response);   
        	    }
           });
      });   
     
     $('#contactinfoform').submit(function(e){
     	e.preventDefault();  //Not to submit form in classic way.
     	 console.log('Working');
     	var str = $("#contactinfoform").serialize();
     	$.ajax({
     	    type:"POST",
     	    data: str,
     	    url: "/test/contactinfoformsubmitted",
     	    async: false,
     	    dataType: "json",
     	    success: function(response){
     	          $('#contactinfoform').html(response);   
     	      }
          });
     });  
     
     $('#studentidform').submit(function(e){
      	e.preventDefault();  //Not to submit form in classic way.
      	 console.log('Working');
      	var str = $("#studentidform").serialize();
      	$.ajax({
      	    type:"POST",
      	    data: str,
      	    url: "/test/studentidformsubmitted",
      	    async: false,
      	    dataType: "json",
      	    success: function(response){
      	          $('#studentidform').html(response);   
      	        }
           });
      });
       
     $('#admissioninfoform').submit(function(e){
       	 e.preventDefault();  //Not to submit form in classic way.
       	 console.log('Working');
       	 alert(9);
       	var str = $("#admissioninfoform").serialize();
       	$.ajax({
       	    type:"POST",
       	    data: str,
       	    url: "/test/admissioninfoformsubmitted",
       	    async: false,
       	    dataType: "json",
       	    success: function(response){
       	         $('#admissioninfoform').html(response);   
       	        }
            });
       });
     
     $('#StudentinfoForm').submit(function(e){
        	e.preventDefault();  //Not to submit form in classic way.
        	 console.log('Working');
        	var str = $("#StudentinfoForm").serialize();
        	$.ajax({
        	    type:"POST",
        	    data: str,
        	    url: "/test/studentinfoformsubmitted",
        	    async: false,
        	    dataType: "json",
        	    success: function(response){
        	          $('#studentinfoform').html(response);   
        	    }
           });
      });
     
     $('#InstituteAddressForm').submit(function(e){
       	e.preventDefault();  //Not to submit form in classic way.
       	 console.log('Working');
       	var str = $("#InstituteAddressForm").serialize();
       	$.ajax({
       	    type:"POST",
       	    data: str,
       	    url: "/test/instituteaddressformsubmitted",
       	    async: false,
       	    //dataType: "json",
       	    success: function(response){
       	          alert("Success");   
       	        }
            });
       });
       
     
  });
</script>

<script type = "text/javascript">
     function showcell(){
    	 $('#stmobilenumber2').show();
	         
      }
     function showcellfs(){
    	 $('#fsmobilenumber2').show();
	         
      }
     function showcellms(){
    	 $('#msmobilenumber2').show();
	         
      }
     function showcelllg(){
    	 $('#lgmobilenumber2').show();	         
       }               
     function handleClick(cb){		
    	 var name = $(cb).attr('name');
    	 var checked = $(cb).is(':checked');
    	 //alert(checked);  	
    	    if(checked==true)		
    		   $('#'+name).show();		     
    		  else
    	  	    $('#'+name).hide();	   
    	 }	 	    
</script>

<script type="text/javascript">
            window.onload = function(){           	 
                               document.getElementById('references').addEventListener('change',function(){
                	           var sel = document.getElementById('references');   
                               var sv = sel.options[sel.selectedIndex].value;   
                                   if(sv == "person"){
                                             //alert(sv);
                        	                 document.getElementById('persondetail').style.display = "block";
                                       } 
                                      else{
                        	                 document.getElementById('persondetail').style.display = "none";
                            }                                                                 
                    }); 
                                                        
                       //based on class
                     var found = 0;   
                    document.getElementById('class').addEventListener('change',function(){
                    	        
                    	         var selectedClass =  document.getElementById('class');
               	                 var selectedClassValue = selectedClass.options[selectedClass.selectedIndex].value;
               	                 var table = document.getElementById("admissionTable");
             	        	     var tableRow = $("td").filter(function() {
             	        	           return $(this).text() == "Institution Name";
             	        	         }).closest("tr");   
             	        	     var index = tableRow.index();           	        	     
             	   
             	                 if(selectedClassValue == "six" ||  selectedClassValue == "seven"  ||  selectedClassValue== "eight"){           	        	              	                
               	        	     var groupRow = $("td").filter(function() {
               	            		   if($(this).text()== "Group"){
               	            			  found=1; 		  
               	            		    }           	            		   
          	        	                return $(this).text() == "Group";
          	        	              }).closest("tr");  
               	                     if(found==1){
               	            	        var indexgroup = groupRow.index(); 
                 	        	            table.deleteRow(indexgroup);
                 	        	            found = 0;
                 	        	         }
                                   } 
               	                   else{
               	        	    //  document.getElementById('upper').style.display = "block";  
               	        	  //  alert("found="+found);
               	        	    if(found==0){
               	        	    var row = table.insertRow(index+1);           	        	   
               	        	    row.innerHTML="<td ><label>Group</label></td><td>"+
               	                              "<select id=\"group\" name=\"groupname\" class=\"input-medium\">"+
                                              "<option value=\"science\">Science</option>"+
                                              "<option value=\"arts\">Arts</option>"+                      
                                              "<option value=\"commerce\">Commerce</option>"+
                                              "<option value=\"vocational\">Vocational</option>"+
                                              "</select>"+                 
                                              "</td>"+           
                                              "<td><label>Fourth Subject</label></td>"+
                                              "<td><input name=\"fourthSubject\" class=\"input-medium\" type=\"text\" /></td>"
                                              "<td><label>Optional Subject</label></td>"
                                              "<td><input name=\"optionalSubject\"  class=\"input-medium\" type=\"text\"/></td>";
               	                    found = 1;       
               	        	        }
               	                 }	    
                          });  
                         document.getElementById('permanentAddress').addEventListener('change',function(){
                	         var pa =  document.getElementById('permanentAddress');
           	                 var pavalue = pa.options[pa.selectedIndex].value;
           	          if(pavalue == "yes"){
           	        	       // alert("nine");      	        	
           	        	           $('.padiv').hide();
                                   } 
           	                 else{
           	                      $('.padiv').show();
           	               }
                  });       
                         
                   document.getElementById('designation').addEventListener('change',function(){
                	   var designation = document.getElementById('designation');
                	   var designationValue = designation.options[designation.selectedIndex].value;
                	     if(designationValue == "other"){
                	    	   // document.getElementById('desinputrow').style.display = "block";
                	    	   //alert('test');
                	    	     $('.desinputrow').show();
                	     }      
                	     else{
                	    	   $('.desinputrow').hide();
                	     }
                    });  
                   document.getElementById('Subject').addEventListener('change',function(){
        	           var sel = document.getElementById('Subject');   
                       var sv = sel.options[sel.selectedIndex].value;   
                         if(sv == "allsubject"){
                                //alert(sv);
                                //  document.getElementByClass('selectSubject').style.display = "none";
                	                 $('.selectSubject').hide();
                               } 
                              else{
                            	    $('.selectSubject').show();
                	             //  document.getElementByClass('persondetail').style.display = "block";
                    }                                                                 
            });     
       }
     </script>
  
  <script>
     var clickNumber = 0;     
     function retrieveSchoolName(){
    	 //alert("3");
    	 clickNumber = clickNumber+1;
    	 if(clickNumber%2==1){
    	 $.ajax({
     	    type:"GET",
     	    //data: str,
     	    url:"/test/retrieveschoolname",
     	    cache: false,
     	    async: false,
     	   // dataType: "json",
     	    success:function(response){
     	       $('#InstituteName').html(response);
     	            // alert(json);
     	            // response = null;
     	       }
           }); 
         }    	 
       }    
 </script>
     
<style>
<style type="text/css">
    .list-group-item {
    	border: none;
   }
   
table { 
    table-layout: fixed;
   }

#wrapper{
      resize: horizontal
   }

#admissionform{
       position: relative; 
       margin-left:-380px;
       width: 70%;
       resize: horizontal; 
       margin-top:100px;   
   }
   
#selectstudentid{
        position: relative; 
        margin-left:-380px;
        width: 70%;
        resize: horizontal;  
        margintop:100px;  
   }


.content p {
    margin: 0;
    padding: 2px; /*Whatever desired number */
}


#persondetail>td
{
    padding-top : 1em;
}

#list-items {
	font-size: 16px;
	text-decoration: none;
}

#list-items:HOVER{
    background: wheat;
}


td{
    cell-padding: 2px;
}
td label{
    text-align:left;
    display:block;
    width:184px;
    margin-left:2px;
}



   </style>
</head>

<body>           
        <div id="admissionbutton" class = "studentdiv" style = "display:none;">         
             <button type="button" class="btn btn-primary btn-block" style="margin-left:-300px;" onClick = "$('.studentdiv').filter('div').filter('#admissionform').show();$('.studentdiv').filter('div').not('#admissionform').hide();">Add Student</button><br>       
             <button type="button" class="btn btn-primary btn-block" style="margin-left:-300px;" onClick = "$('.studentdiv').filter('div').filter('#selectstudentid').show();$('.studentdiv').filter('div').not('#selectstudentid').hide();">Add other information</button>                                  
        </div>              
        <div id="selectstudentid" class = "studentdiv" style= "display:none;">
<!--              <form id = "studentidform" modelAttribute = "studentid"> -->
<!--               <table  cellpadding="10px"> -->
<!--                 <tr>  -->
<!--                  <td><label> Please insert student id </label></td> -->
<!--                  <td></td>  -->
<!--                 </tr> -->
<!--                 <tr>  -->
<!--                  <td>  -->
<!--                        <input type= "text" name="id" class="input-medium">  -->
<!--                    </td><td></td> -->
<!--                  </tr> -->
<!--                  <tr> -->
<!--                  <td></td> -->
<!--                  <td>   -->
<!--                       <input type="Submit" class="btn btn-primary btn-lg" value="submit"/> -->
<!--                  </td>                -->
<!--                  <tr> -->
<!--                 </table> -->
<!--               </form>                        -->
  <div class="container">
    <div class="accordion" id="searchAccordion">
      <div class="accordion-group">

       <div class="accordion-group">
        <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseTwo">Student's info</a>
          </div>
            <div id="collapseTwo" class="accordion-body collapse">
               <div class="accordion-inner"  >
                <form id="StudentinfoForm" class="form-inline"  modelAttribute="studentInfo">             
                 <table>                     
                  <tr>                
                     <td><label>Father's Name</label></td>
                     <td><input name="fatherName" class="input-medium" type="text" /></td>
                       <td><label>Father's Occupation</label></td>
                      <td>
                       <select id="foccupation" name="foccupation" class= "input-medium">
                          <option value="business">Business</option>
                          <option value="service">In Service</option>                      
                          <option value="outofcountry">Staying abroad</option>
                          <option value="outofcountry">Retired Person</option>
                      </select>
                    </td>
                  </tr>
                                   
                  <tr>                
                      <td><label>Mother's Name</label></td>
                      <td><input name="motherName" class="input-medium" type="text" /></td>   
                      <td><label>Mother's Occupation</label></td>
                        <td>
                       <select id="moccupation" name="moccupation" class = "input-medium">
                             <option value="hosuewife">House wife</option>
                            <option value="business">Business</option>
                            <option value="service">In Service</option>                      
                             <option value="outofcountry">Staying abroad</option>
                             <option value="outofcountry">Retired Person</option>
                      </select>               
                    </td>                    
                  </tr>              
                  <tr>   
                     <td><label>Date of Birth</label></td>
                     <td><input name="dob" class="input-medium" type="text"/></td>                       
                  </tr>                                  
                               
                   <tr>
                         <td> <label>Gender</label></td>
                         <td> 
                         <select name= "Gender" class= "input-medium">
                           <option value="male">Male</option>
                           <option value="female">Female</option>
                           <option value="transgender"> Trans-gender</option>                                         
                         </select>
                         </td>
                  </tr>   
                 
                   <tr>                
                        <td><label>Local Guardian</label></td>
                        <td><input name="lguardian" class="input-medium" type="text" /></td>
                        <td><label>Relationship</label></td>
                        <td><input name="relationwithlocalGuardian" class="input-medium" type="text" /></td>   
                   </tr>                                                                                                      
                    <tr>   
                         <td><label>Previous Result (GPA)</label></td>
<!--                          <td align="right"><label> PEC </label></td> -->
                         <td><input name="PEC" class="input-medium" type="text" value = "PEC : " placeholder = "PEC"/></td>  
<!--                          <td align="right"><label>JSC</label></td>                        -->
</tr>
                        <tr>
                        <td><label></label></td>
                         <td><input name="JSC" class="input-medium" type="text"  value="JSC :" placeholder="JSC" /></td>
<!--                          <td align="right"><label>SSC</label></td> -->
                        </tr>
                        <tr>
                           <td><label></label></td>
                           <td><input name="SSC" class="input-medium" type="text" value="SSC :" placeholder="SSC"/></td>
                      </tr>                                                            
                      <tr>
                        <td><label>References</label></td> 
                        <td>
                        <select id="references" name="References" class = "input-medium">
                            <option value="facebook">Facebook</option>
                            <option value="person">Person</option>                      
                            <option value="liflet">Liflet</option>
                            <option value="walladd">Wall Add</option>
                            <option value="dishtv">Dish TV Add</option>
                            <option value="directly">Directly</option> 
                         </select>                 
                        </td>
                     </tr>
                  
                     <tr id="persondetail" style = "display:none" colspan = "2" style = "position:relative">              
                               <td><label>Person Name</label></td>
                               <td><input name="refererralpersonName" class="input-medium" type="text"/></td> 
                               <td><label>Mobile Number</label></td>
                               <td><input name="refpersonmobileNumber" class="input-medium" type="text" /></td> 
                               <td><label>Person Type</label></td>
                            <td>
                          <select id="persontype" name="personType" class = "input-medium">
                          <option value="student">Student</option>
                          <option value="guardian">Guardian</option>
                          <option value="teacher">Teacher</option>      
                          <option value="exstudent">Ex-student</option>
                          <option value="exguardian">Ex-teacher</option>
                          <option value="exteacher">Ex-guardian</option>      
                          </select>                 
                          </td>
                       </tr>         
                          <tr>
                             <td><label class="Button"></label></td> 
                             <td><input type="submit" id="ibutton"  value="save"/></td>
                        </tr>                                                                                           
                 </table>    
               </form>
              </div>
            </div>
         </div>     
      
      <div class="accordion-group">
        <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseThree"> Student's Address</a>
      </div>
      <div id="collapseThree" class="accordion-body collapse">
               <div class="accordion-inner"  >
                <form id="Studentaddressform" class="form-inline"  modelAttribute="StudentAddressForm">             
                                
                   <div>
                        <p>Preseent Address </p> 
                   </div>              
                  
                   <table>                                     
                   <tr>  
                       <td><label>Flat/Floor</label></td>
                       <td><input name="prflatNumber" class="input-medium" type="text"/></td>       
                       <td><label>House Number</label></td>
                       <td><input name="prhouseNumber" class="input-medium" type="text"/></td>                                
                 </tr>          
                 <tr> 
                      <td><label>Road Name/Number</label></td>
                      <td><input name="prroadNumber" class="input-medium" type="text" /></td>                 
                      <td><label>Sector/Village</label></td>
                       <td><input name="prsector" class="input-medium" type="text" /></td>   
                  </tr>    
                  <tr>
                        <td><label>Post </label></td>
                        <td><input name="prpost" class="input-medium" type="text" /></td>
                         <td><label>Post Code </label></td>
                         <td><input name="prpostCode" class="input-medium" type="text" /></td>
                   </tr>                         
                   <tr> 
                         <td><label>Thana/Upazilla</label></td>
                         <td><input name="prthana" class="input-medium" type="text" /></td>   
                         <td><label>District</label></td>
                         <td><input name="prdistrict" class="input-medium" type="text"/></td>                         
                   </tr>                                                                                                                    
                   <tr>
                   <td>Permanent Address</td>
                   </tr>          
                   <tr>
                        <td> Is permanent address same ?  </td>  
                            <td>  <select id="permanentAddress" name= "permanentAddressSimilarity" class="input-medium">
                                         <option value = ""> Select Value </option> 
                                        <option value = "yes"> Yes </option>
                                        <option value = "no">No</option>
                             </select>
                             </td> 
                   </tr>
                 
                   <tr  class = "padiv">             
                         <td><label>House Number</label></td>
                          <td><input name="perhouseNumber" class="input-medium" type="text"/></td>                     
                     </tr>         
                 <tr class = "padiv"> 
                  <td><label>Road Name/Number</label></td>
                     <td><input name="perroadNumber" class="input-medium" type="text" /></td>                 
                     <td><label>Sector/Village</label></td>
                     <td><input name="persectorNumber" class="input-medium" type="text" /></td>
                     
                 </tr>
         
                   <tr  class = "padiv">
                     <td><label>Post </label></td>
                     <td><input name="perpostNumber" class="input-medium" type="text" /></td>
                     <td><label>Post Code </label></td>
                     <td><input name="perpostCodeNumber" class="input-medium" type="text" /></td>
                   </tr>                           
                   <tr class = "padiv"> 
                        <td><label>Thana/Upazilla</label></td>
                        <td><input name="perthana" class="input-medium" type="text" /></td>   
                        <td><label>District</label></td>
                       <td><input name="perdistrict" class="input-medium" type="text"/></td>                                            
                   </tr>                                                                                            
                    <tr>
                            <td><label class="Button"></label></td> 
                            <td><input type="submit" id="ibutton"  value="save"/></td>
                        </tr>                                
                 </table>    
               </form>
              </div>
            </div>
         </div>      
         <div class="accordion-group">
          <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"   data-parent="#searchAccordion" href="#collapseFour">Guardian Office Address</a>
          </div>
         <div id="collapseFour" class="accordion-body collapse">
                   <div class="accordion-inner" >
             <form id="Officeaddressform" class="form-inline"  modelAttribute="OfficeAddressForm">            
                <table>
                     <tr>
                            <td><label> Relationship</label></td>
                            <td><select name = "relationship" class = "input-medium">
                                         <option value= "father">Father</option>
                                          <option value = "mother"> Mother</option>
                                          <option value= "lguardian"> Local Guardian </option>
                                  </select>
                         </td> 
                     <tr>
                     <tr>     
                     <td><label>Designation</label></td>
                     <td><select  id = "designation" name="designation" class="input-medium" type="text">
                                    <option value ="managingdirector">Managing director</option>
                                    <option value = "director"> Director </option>
                                    <option value = "manager">Manager</option>    
                                    <option value = "agm">AGM</option> 
                                    <option value = "accountant">Accountant</option> 
                                    <option value="proprietor"> Proprietor</option>      
                                    <option value = "other">Other</option>                                                        
                             </select>
                     </td>                             
                     <!--  <td class = "desinputrow" style = "display:none"><label>Designation type</label></td>-->
                     <td class = "desinputrow" style = "display:none"><input name="designationtype" class="input-medium" type="text" placeholder = "Type Other designation " /></td> 
                    </tr>                     
                    <tr>                   
                          <td><label> Office name</label></td>
                         <td><input name = "officename" class = "input-medium"  type = "text"/></td> 
                         <td><label>House Number</label></td>
                     <td><input name="houseNumber" class="input-medium" type="text"/></td> 
                     </tr>                
                <tr> 
                       <td><label>Post Office</label></td>
                     <td><input name="post" class="input-medium" type="text" /></td>         
                      <td><label>Post Office Number</label></td>
                     <td><input name="postNumber" class="input-medium" type="text" /></td>                                   
                 </tr>
        
           
                 <tr>
                     <td><label>Road Name/Number</label></td>
                     <td><input name="roadNumber" class="input-medium" type="text" /></td>                 
                     <td><label>Sector/Village</label></td>
                     <td><input name="sector" class="input-medium" type="text" /></td>
                     </td>   
                 </tr>
                                                  
          
                 <tr>
                     <td><label>Thana/Upazilla</label></td>
                     <td><input name="thana" class="input-medium" type="text" />    
                     <td><label>District</label></td>
                     <td><input name="district" class="input-medium" type="text"/></td>                       
                    
                   </tr>                                  
                                       

                   <tr>
                     <td><label class="Button"></label></td> 
                     <td><input type="submit" id="ibutton"  value="save"/></td>
                   </tr>                         
                 </table>    
                 </form>
                </div>
               </div>
               </div>
              </div>
              
          <div class="accordion-group">
          <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"   data-parent="#searchAccordion" href="#collapseSeven" onClick ="retrieveSchoolName()"> Institute Address</a>
          </div>
         <div id="collapseSeven" class="accordion-body collapse">
                   <div class="accordion-inner" >
               <div id = InstituteName>          
                  Here will be institute name;
               </div>   
                <br>
                <br>   
             <form id="InstituteAddressForm" class="form-inline"  modelAttribute="address">            
                <table>                                 
                    <tr>                                       
                         <td><label>House Number</label></td>
                         <td><input name="houseNumber" class="input-medium" type="text"/></td> 
                     </tr>      
                <tr> 
                       <td><label>Post Office</label></td>
                     <td><input name="postname" class="input-medium" type="text" /></td>         
                      <td><label>Post Office Number</label></td>
                     <td><input name="postCodeNumber" class="input-medium" type="text" /></td>                                   
                 </tr>   
                 <tr>
                     <td><label>Road Name/Number</label></td>
                     <td><input name="roadNumber" class="input-medium" type="text" /></td>                 
                     <td><label>Sector/Village</label></td>
                     <td><input name="sectorNumber" class="input-medium" type="text" /></td>
                     </td>   
                 </tr>        
                 <tr>
                     <td><label>Thana/Upazilla</label></td>
                     <td><input name="thana" class="input-medium" type="text" />    
                     <td><label>District</label></td>
                     <td><input name="district" class="input-medium" type="text"/></td>                                          
                   </tr>                                  
                                       

                   <tr>
                     <td><label class="Button"></label></td> 
                     <td><input type="submit" id="ibutton"  value="save"/></td>
                   </tr>                         
                 </table>    
                 </form>
                </div>
               </div>
               </div>
              </div>              
            </div>
           </div>
         </div>                            
   <!-- Menu Toggle Script -->           
   <div id="admissionform" class="studentdiv" style="display: none;">
              <div class="container">
    <div class="accordion" id="searchAccordion">
      <div class="accordion-group">
      <div class="accordion-group">
          <div class="accordion-heading">
           <a class="accordion-toggle" data-toggle="collapse"   data-parent="#searchAccordion" href="#collapseOne">Basic Information</a>
        </div>
        
         <div id="collapseOne" class="accordion-body collapse in">
            <div class="accordion-inner"  >
             <form id="basicinfoform" class="form-inline"  modelAttribute="basicInformation">   
                <table id = "admissionTable">      
                <tr>             
                     <td><label>Student Name</label></td>
                     <td><input name="familyName" class="input-medium" type="text" required/></td> 
                     <td><label>Nick Name</label></td>
                     <td><input name="nickName" class="input-medium" type="text" /></td>     
                 </tr>
                
                                             
                 
                    <tr>
                      <td><label>Institution Name</label></td>
                      <td><input name="institutionName" class="input-medium" type="text" /></td>
                      <td><label>Class</label></td>
                      <td>
                          <select id="class" name="Clss" class="input-medium">
                               <option value="six">Six</option>
                               <option value="seven">Seven</option>                      
                               <option value="eight">Eight</option>
                               <option value="nine">Nine</option>
                               <option value="ten"> Ten </option>
                               <option value="eleven">Eleven</option>
                                <option value="twelve"> Twelve</option>   
                            </select>                 
                     </td>             
                     </tr>  
                                                                      
                          <tr>     
                               <td><label> Class Section</label></td>
                               <td><input name="section" class="input-medium" type="text"/></td>               
                          </tr>                 
                          <tr>            
                               <td><label>Class Roll</label></td>
                               <td><input name="classroll" class="input-medium" type="text" /></td>
                               <td><label>Class Time</label></td>
                               <td><input name="schooltime" class="input-medium" type="text"/></td>             
                          </tr>     
                          <tr>
                               <td><label class="Button"></label></td> 
                               <td><input type="submit" id="ibutton"  value="save"/></td>
                          </tr>                                               
                     </table>    
                 </form>
              </div>
           </div>
      </div>         
              <div class="accordion-group">
               <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#searchAccordion" href="#collapseFive">Contact Info</a>
               </div>
                         
               <div id="collapseFive" class="accordion-body collapse">
               <div class="accordion-inner"  >
                  <form id="contactinfoform" class="form-inline"  modelAttribute="contactinfo">          
                     <table>    
                     <tr>             
                         <td><label>Student Mobile Number</label></td>
                         <td><input name="stmobilenumber1" class="input-medium" type="text"/></td>
                         <td><input id="stmobilenumber2" name="stmobilenumber2" class="input-medium" type="text" style = "display:none"/></td>                                         
                         <td><input type = "button" value="Add more number" onclick = "showcell();"></td>                     
                     </tr>         
                     <tr>                
                         <td><label>Father's Mobile Number</label></td>
                         <td><input name="fsmobilenumber1" class="input-medium" type="text" /></td>  
                         <td><input id="fsmobilenumber2" name="fsmobilenumber2" class="input-medium" type="text" style = "display:none"/></td>                                         
                         <td><input type = "button" value= "Add more number" onclick = "showcellfs();"></td>  
                     </tr> 
                     <tr>                
                         <td><label>Mother's Mobile Number</label></td>
                         <td><input name="msmobilenumber1" class="input-medium" type="text" /></td>  
                         <td><input id="msmobilenumber2" name="msmobilenumber2" class="input-medium" type="text" style = "display:none"/></td>                                         
                         <td><input type = "button" value= "Add more number" onclick = "showcellms();"></td>  
                     </tr>        
                     <tr>                
                        <td><label>Local Guardian's Mobile Number</label></td>
                        <td><input name="lgmobilenumber1" class="input-medium" type="text" /></td>  
                        <td><input id="lgmobilenumber2" name="lgmobilenumber2" class="input-medium" type="text" style = "display:none"/></td>                                         
                        <td><input type = "button" value= "Add more number" onclick = "showcelllg();"></td>  
                     </tr>
                                                                
                     <tr>
                       <td><label class="Button"></label></td> 
                       <td><input type="submit" id="ibutton" value="save"/></td>
                     </tr>                           
                    </table>    
                   </form>
                 </div>
                </div>
                </div>                     
               <div class="accordion-group">
               <div class="accordion-heading">
                 <a class="accordion-toggle" data-toggle="collapse" data-parent="#searchAccordion" href="#collapseSix">Admission Information</a>
               </div>                        
               <div id="collapseSix" class="accordion-body collapse">
               <div class="accordion-inner"  >
                     <div id="studentinfodiv">
                           this is test div for studdent info              
                     </div>                                                
                     <form id="admissioninfoform" class="form-inline"  modelAttribute="admissioninfoForm">          
                       <table>                         
                          <tr>
                                  <td><label>Program of Study</label></td>
                          </tr>
                          <tr>
                                   <td><label>Subject:</label></td>                         
                                   <td>
                                      <select id="Subject" name="subject" class= "input-medium">
                                            <option value ="selectsubject">Select subject</option>
                                            <option value ="allsubject">All Subject</option>                                           
                                      </select>
                                     </td> 
                                                                                                                    
                           <tr class="selectSubject">                         
                                   <td><input type="checkbox" name="Bengali" value= "bengali" onclick='handleClick(this);'> Bengali </input></td><br>
                                   <td><input id = "Bengali" name="bengaliPayment" type="text" class= "input-medium" style='display:none'></td>          
                                   <td><input type="checkbox" name="English" value="english" onclick='handleClick(this);'> English </input></td><br>  
                                   <td><input id= "English" name= "englishPayment" type="text" class="input-medium" style='display:none'></td>                                                                                  
                           </tr>
                                                                      
                           <tr class="selectSubject">
                               <td><input type="checkbox" name="Chemistry" value= "chemistry" onclick = 'handleClick(this);'>Chemistry </input></td><br> 
                                <td><input id = "Chemistry" name="chemistryPayment" type="text" class= "input-medium" style='display:none'></td>                             
                               <td><input type="checkbox" name="Physics" value= "physics" onclick='handleClick(this)'> Physics </input></td><br>
                               <td><input id= "Physics" name= "physicsPayment" type="text" class="input-medium" style='display:none'></td>                              
                            </tr>
                            
                            <tr class = "selectSubject">                                
                                 <td> <input type="checkbox" name="Math" value= "Math" onclick='handleClick(this)'> Math </input></td>
                                 <td><input id = "Math" name="mathPayment" type="text" class= "input-medium" style='display:none'></td>  
                                 <td> <input type="checkbox" name="HigherMath" value= "highermath" onclick = 'handleClick(this)';> Higher Math </input></td>
                                 <td><input id= "HigherMath" name="highermathPayment" type="text" class="input-medium" style='display:none'></td>
                            </tr>
                            
                            <tr class="selectSubject">
                                <td><input type="checkbox" name="Biology" value= "biology" onclick='handleClick(this)';> Biology </input></td>
                                <td><input id = "Biology" name="biologyPayment" type="text" class= "input-medium" style='display:none'></td>  
                                <td> <input type="checkbox" name="ICT" value= "ict" onclick = 'handleClick(this);'>ICT</input></td>
                                <td><input id = "ICT" name="ictPayment" type="text" class= "input-medium" style='display:none'></td> 
                            </tr>
                                                  
                            <tr class = "selectSubject">                             
                                 <td> <input type="checkbox" name="Accounting" value= "accounting"  onclick='handleClick(this);'> Accounting </input></td>
                                 <td> <input id = "Accounting" name="accountingPayment" type="text" class= "input-medium" style='display:none'></td>
                                 <td> <input type="checkbox" name="Finance" value= "finance" onclick='handleClick(this);'> Finance </input></td>
                                 <td> <input id = "Finance" name="financePayment" type="text" class= "input-medium" style='display:none'></td>
                            </tr>                                                                                                                                                                                                                                                                                               
                            <tr>
                                 <td><label>Payment </label>
                                 <td><label>Admission </label></td>
                                 <td><input type="text" name="admissionfee" class="input-medium"/></td>
                            </tr>                           
                            <tr> 
                            <td></td>
                            <td><label>Monthly  </label></td>  
                            <td><input type="text" name="monthlyfee"  class = "input-medium" value= ""/></td>   
                            </tr>
                            <tr> 
                                <td></td>
                                <td><label>Model Test </label></td>  
                                <td><input type="text" name="modeltestfee" class="input-medium" value= ""/></td>   
                            </tr>
                            <tr> 
                            <td>
                            </td>
                                <td><label>Model Test  (Before Test) </label></td>  
                                <td><input type="text" name="modeltestbeforetest" class="input-medium" value= ""/></td>   
                            </tr>
                            <tr> 
                                <td></td>
                                <td><label>Model Test (After Test) </label></td>  
                            <td><input type="text" name="modeltestaftertest"  class="input-medium" value= ""/></td>   
                            </tr>
                            <tr> 
                              <td></td>
                              <td><label>Book </label></td>  
                              <td><input type="text" name="bookfee" class="input-medium" value= ""/></td>   
                         </tr>
                         <tr> 
                            <td></td>
                            <td><label>Other charges</label></td>  
                            <td><input type="text" name="othercharges" class="input-medium" value= ""/></td>   
                         </tr>                    
                         <tr>
                                <td><label> Coaching Shift</label></td>
                                <td><input type="radio" name= "shift" value="morning"/>Morning</td>
                                <td><input type="radio" name= "shift" value="day"/>Day</td>
                                <td><input type="radio" name= "shift" value="evening"/>Evening</td>                          
                         </tr> 
                         <tr>
                             <td><label> Batch Number</label></td>
                             <td>
                                 <select id="batch" name="batch" class="input-medium">
                                        <option value="1">1</option>
                                        <option value="2" >2</option>
                                        <option value="3"> 3</option>
                                        <option value="other">Other</option>
                                 </select> 
                             </td>
<!--                              <td> -->
<!--                                  <input type="text" name="batchname"  class="input-medium"></input> -->
<!--                              </td>                                                    -->
                         </tr>                                                                      
                         <tr>
                             <td><label>Class Start</label></td>
                             <td><input name="startDate" class="input-medium" type="text" /></td>   
                         </tr>                                                
                         <tr>                                                                                                                                                           
                             <td><label class="Button"></label></td> 
                             <td><input type="submit" id="ibutton" value="save"/></td>
                         </tr>                           
                        </table>    
                      </form>
                    </div>
                   </div>
                 </div>                                                        
                </div>
               </div>                  
              </div>  
             </div>                              
            <div id="paymentinfo" class="studentdiv" style="display:none"> 
                  Hello! This is payemnt div! This is a payment form. 
                   Open admission form  <a href="/test/admissionForm"> in pdf format.</a>    
           </div>                          
   </body>
</html>