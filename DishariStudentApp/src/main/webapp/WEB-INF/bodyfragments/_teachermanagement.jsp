<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%    
     String ctxPath = request.getContextPath();    
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- https://davidwalsh.name/css-cube -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Management</title>

<script type = "text/javascript">
$(document).ready(function(){ 
$('#TeacherEducationForm').submit(function(e){   
	  e.preventDefault();//Not to submit form in classic way.
	     console.log('Working');
	   var str = $('#TeacherEducationForm').serialize();
	   // alert(str);
	   var url ="/test/humanresource/teachereducationformsubmitted";	
    $.ajax({
		  type: 'POST',
		  data: str,
          url : url,
          async: false,
          success: function(json){
                document.getElementById("studentinfodiv").innerHTML = json;                 
         }
     });    
   });
});	 

$(document).ready(function(){ 
	$('#TeacherBasicInfoForm').submit(function(e){   
		  e.preventDefault();//Not to submit form in classic way.
		     console.log('Working');
		   var str = $('#TeacherBasicInfoForm').serialize();
		   // alert(str);
		   var url ="/test/humanresource/teacherbasicinfoformsubmitted";	
	    $.ajax({
			  type: 'POST',
			  data: str,
	          url : url,
	          async: false,
	          success: function(json){
	              //  document.getElementById("studentinfodiv").innerHTML = json;                 
	         }
	     });    
	   });
	});	 

$(document).ready(function(){ 
	$('#TeacherAddressForm').submit(function(e){   
		  e.preventDefault();//Not to submit form in classic way.
		     console.log('Working');
		   var str = $('#TeacherAddressForm').serialize();
		   // alert(str);
		   var url ="/test/humanresource/teacheraddressinfoformsubmitted";	
	    $.ajax({
			  type: 'POST',
			  data: str,
	          url : url,
	          async: false,
	          success: function(json){
	              //  document.getElementById("studentinfodiv").innerHTML = json;                 
	         }
	     });    
	   });
	});	 

$(document).ready(function(){ 
	$('#TeacherExperienceForm').submit(function(e){   
		  e.preventDefault();//Not to submit form in classic way.
		     console.log('Working');
		   var str = $('#TeacherExperienceForm').serialize();
		   var url ="/test/humanresource/teacherexperienceformsubmitted";	
	    $.ajax({
			       type: 'POST',
			       data: str,
	               url : url,
	              async: false,
	            success: function(json){
	                document.getElementById("studentinfodiv").innerHTML = json;                 
	            }
	        });    
	     });
	});	
	
$(document).ready(function(){ 
	$('#TeacherAddressForm').submit(function(e){   
		  e.preventDefault();//Not to submit form in classic way.
		     console.log('Working');
		   var str = $('#TeacherAddressForm').serialize();
		   var url ="/test/humanresource/teacheraddressformsubmitted";	
	    $.ajax({
			       type: 'POST',
			       data: str,
	               url : url,
	              async: false,
	            success: function(json){
	                //document.getElementById("studentinfodiv").innerHTML = json;                 
	            }
	        });    
	     });
	});	 	
	
	window.onload = function(){
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
	}	
</script>


<script type ="text/javascript"> 
    var countexp=0;
    var count =0;
   function addmoreeducationtable(){
	    var tablestr = document.getElementById("educationtable").innerHTML;  
	    var res = tablestr.split("<br>");
	    document.getElementById("educationtable").innerHTML =document.getElementById("educationtable").innerHTML+res[0];
    }
     
   function addmoreexperiencetable(){
 	    var tablestr = document.getElementById("experiencetable").innerHTML;  
 	    var res = tablestr.split("<br>");
 	    document.getElementById("experiencetable").innerHTML =document.getElementById("experiencetable").innerHTML+res[0];
     }  
   
   function addexperiencetable(){
	   var expform  = document.getElementById("TeacherExperienceForm"); 
	   var exptable = document.getElementById("exptable");
	   var nrows = exptable.rows.length;
	   var numberoftablerows = 0;
	  // var nrows = 4;	  
		   countexp = countexp+1;
		   numberoftablerows = nrows/countexp;
		   
	   var Rows = [];      
	     for(var i=0;i<numberoftablerows;i++){ 	 
	      Rows[i] = exptable.insertRow(i+nrows);            
	      ncells  = exptable.rows[i].cells.length;
	      var Cells=[]; 
	      var cellRow = [];
	        for(var j=0;j<ncells; j++){
	            //Copying individual table cells inner HTML             
	        	Cells[j] = exptable.rows[i].cells[j];  
	            cellRow[j] = Rows[i].insertCell(j);
	            cellRow[j].innerHTML = Cells[j].innerHTML;
	            //alert(Cells[j].innerHTML); 
	        }    
	     }	        
     }
   
  
   function deleteexperiencetable(){	  
	   var j =0;
	   var exptable = document.getElementById("exptable");
	   var nrows = exptable.rows.length;  
	   var numberoftablerows = nrows/(countexp+1);	
	   for(j=0;j<numberoftablerows;j++){  
	          exptable.deleteRow(numberoftablerows*countexp);       
	       }
	     countexp = countexp-1;   
    }
       
   function addeducationtable(){ 
	   var eduform = document.getElementById("TeacherEducationForm"); 
	   var edutable = document.getElementById("edutable");
	   var nrows = edutable.rows.length;
	   var numberoftablerows = 0;
	  
		   count = count+1;
		   numberoftablerows = nrows/count;		   	
	   
	   var Rows = [];      
	     for(var i=0;i<numberoftablerows;i++){ 	 
	      Rows[i] = edutable.insertRow(i+nrows);            
	      ncells = edutable.rows[i].cells.length;
	      var Cells=[]; 
	      var cellRow=[];
	        for(var j=0;j<ncells; j++){
	            //Copying individual table cells inner HTML             
	        	Cells[j] = edutable.rows[i].cells[j];  
	            cellRow[j] = Rows[i].insertCell(j);
	            cellRow[j].innerHTML = Cells[j].innerHTML;
	           // alert(Cells[j].innerHTML); 
	        }    
	     }	        
     }
   
   function deleteeducationtable(){	  
	   var j =0;
	   var edutable = document.getElementById("edutable");
	   var nrows = edutable.rows.length;
	   
	   var numberoftablerows = nrows/(count+1);	
	   for(j=0;j<numberoftablerows;j++){  
		      //alert(numberoftablerows);
	          edutable.deleteRow(numberoftablerows*count);       
	       }
	     count = count-1;   
      }
   var lastcheckboxsize = 0; 
   function addslot(){	   
	   // Need to make this generalized 
	   var box = null;
	   var row = null;
	   var box = $("input:checked");  
	   
	   var totalsize = box.size();	 
	   var l = totalsize - lastcheckboxsize;
	    lastcheckboxsize = totalsize;
	   //alert(l);
     	   
	   var row= $("#termsconditiontable tr.checkboxes");
	       row.css('background-color','red');
	   if(row.size()<2){    
	        var ind = row.index()+1;
	         }
	     else
	      {
	    	//alert("hre");
		    var ind = row[row.size()-1].rowIndex+1;		   
	   }
	   
	   //alert(ind);	   
	   var table = row.parent().parent();   
	      
	   rows = []; 
	   for(var j=ind;j<(ind+l);j++){
	      rows[j-ind] = table[0].insertRow(j);     
	      rows[j-ind].setAttribute("class","addedtimeslot"); 
	     // alert("test");
	      cell0 = rows[j-ind].insertCell(0);
	      cell0.innerHTML = "<label>Insert Time slot" +box[j-ind].value+ "</label>"
	      cell1 = rows[j-ind].insertCell(1);
	      cell1.innerHTML ="<input type=\"date\" name=\"timestart\">"+"to"+"<input type=\"date\" name=\"timeend\">";	
	    }   
    }
   
    
    function addtimesection(){
    	
	   var selectrowindex = 0;
	   var tradded = [];
	   var rows = $('tr',table);
	   var tr = $("#termsconditiontable tr.timeslotday");
	   var table = $("#termsconditiontable tr.timeslotday").parent();
	   var tradded = $('#termsconditiontable tr.addedtimeslot');
	  // alert(tradded.size());  
	  // alert(tradded[0].rowIndex);
	  // alert(tradded[1].rowIndex);
	   var addedrowindex =0;
	   
	   if(tradded.size()<2){
	        addedrowindex = tradded.index();
	    //    alert(addedrowindex);
	   }	   
	   else
	        {	   
		    addedrowindex = tradded[tradded.size()-1].rowIndex;
	     }
	   
	   var rows = $('tr',table);
	      //   alert(tr.size());
	   if(tr.size()==1){
	         selectrowindex = tr.index();
	     }
	   else{
		   selectrowindex = tr[tr.size()-1].rowIndex;		 
	   }
	   
	  var row0 = table[0].insertRow(addedrowindex+1);
	    
	  var row1 = table[0].insertRow(addedrowindex+2);
	      row1.setAttribute("class","checkboxes");
	      
	 row0.innerHTML = rows[selectrowindex].innerHTML;
	 row1.innerHTML = rows[selectrowindex+1].innerHTML;	 
  }  
    
    function handleClick(cb){		
   	 var name = $(cb).attr('name');
   	 var checked = $(cb).is(':checked');
   	 //alert(checked);  	
   	    if(checked==true)		
   		   $('#time'+name).show();		     
   		  else
   	  	    $('#time'+name).hide();	   
   	 }	 	   
     
</script>


</head>
   <body>
     <div id="teacherContainer" style="position:absolute; margin-left:30%;">     
       <div id="teachermanagementbutton" class="teacherdiv" style="display:none;">         
             <button type="button" class="btn btn-primary btn-block" onClick = "$('.teacherdiv').filter('div').filter('#newrecruitement').show();$('.teacherdiv').filter('div').not('#newrecruitement').hide();">Add New Teacher</button><br>       
        <!-- <button type="button" class="btn btn-primary btn-block" onClick = "$('.teacherdiv').filter('div').filter('#selectstudentid').show();$('.studentdiv').filter('div').not('#selectstudentid').hide();">Add Other Information</button>  -->
       </div>
                   
   <div id="newrecruitement" class="teacherdiv" style= "display:none;margin-left: -75%;">
     <div class="container">
       <div class="accordion" id="searchAccordion">
         <div class="accordion-group">
           <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseTwo">Teacher Basic Information</a>
             </div>                
             <div id="collapseTwo" class="accordion-body collapse">
               <div class="accordion-inner">
                <form id="TeacherBasicInfoForm" class="form-inline"  modelAttribute="teacherBasicInfo">             
                 <table>                     
                    <tr>                
                       <td><label>First Name</label></td>
                       <td><input name="firstName" class="input-medium" type="text" /></td>
                       <td><label>Last Name</label></td>
                       <td><input name="lastName" class="input-medium" type="text" /></td>
                    </tr>                                  
                    <tr>   
                        <td><label>Date of Birth</label></td>
                        <td><input name="dob" class="input-medium" type="text"/></td>                       
                    </tr>                                                              
                    <tr>
                         <td><label>Gender</label></td>
                         <td><input name="gender" class="input-medium" type="text"/></td>
                    </tr>                                                                                                                                                                                       
                     <tr>
                        <td><label>References</label></td> 
                        <td>
                        <select id="references" name="references" class = "input-medium">
                            <option value="facebook">Facebook</option>
                            <option value="person">Person</option>                      
                            <option value="liflet">Liflet</option>
                            <option value="walladd">Wall Add</option>
                            <option value="dishtv">Dish TV Add</option>
                            <option value="directly">Directly</option> 
                         </select>                 
                        </td>
                     </tr>                
                     <tr id="persondetail" style = "display:none" colspan="2" style = "position:relative">              
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
         <div class="accordion-group">
         <div class="accordion-heading">
           <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseFive">Educational Background</a>
       </div>                
       <div id="collapseFive" class="accordion-body collapse">
               <div class="accordion-inner"  >
    
                <form id="TeacherEducationForm" class="form-inline"  modelAttribute="teacherEducation">                  
                 <div id="educationtable"> 
                    <table id= "edutable">                     
                         <tr>                
                         <td><label>Name of Degree</label></td>
                         <td><input name="nameofdegree" class="input-medium" type="text" /></td>
                         <td><label>GPA/Division</label></td>
                         <td><input name="gpaobtained" class="input-medium" type="text" /></td>
                         </tr>                                  
                         <tr>   
                         <td><label>Name of the Institution</label></td>
                         <td><input name="Institutionname" class="input-medium" type="text"/></td>                       
                         </tr>                                                              
                         <tr>
                         <td><label>Year of Completion of the work</label></td>
                         <td><input name="yocofthework" class="input-medium" type="text"/></td>
                         </tr>             
                         <tr>
                         <td><label class="Button"></label></td>                               
                         </tr>                                                                                           
                        </table>  
                      </div>                   
                       <input type="submit" id="ibutton" value="save"/>   
                      </form>
                    <br>
                 </div>                       
                       <button type="button" class="btn btn-primary btn-block" value="Add Entry" onclick="addeducationtable();">Add Entry</button><br>
                       <button type="button" class="btn btn-primary btn-block" value="Delete Entry" onclick="deleteeducationtable();">Delete Entry</button><br>      
                </div>
            </div>
            
         <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseSix">Experience Detail</a>
         </div>                
         <div id="collapseSix" class="accordion-body collapse">
               <div class="accordion-inner"  >
               <div id="experiencetable">     
                <form id="TeacherExperienceForm" class="form-inline"  modelAttribute="TeacherExperience">                  
                 <table id="exptable">                     
                      <tr>                
                          <td><label>Company Name</label></td>
                          <td><input name="companyName" class="input-medium" type="text" /></td>
                          <td><label>Year of experience</label></td>
                          <td><input name="YearOfExperience" class="input-medium" type="text" /></td>
                       </tr>                                  
                       <tr>   
                         <td><label>Recognition/achievement</label></td>
                         <td><input name="Recognition" class="input-medium" type="text"/></td>                       
                       </tr>                                                              
                       <tr>
                         <td><label>Year of leaving</label></td>
                         <td><input name="LeavingYear" class="input-medium" type="text"/></td>
                        </tr>             
                          <tr>
                             <td><label class="Button"></label></td>                                       
                        </tr>                                                                                           
                        </table>                    
                       <input type="submit" id="ibutton" value="save"/>   
                       </form>
                     <br>
                  </div>                       
                        <button type="button" class="btn btn-primary btn-block" value="Add Experience" onclick="addexperiencetable();">Add Experience</button><br>  
                  <button type="button" class="btn btn-primary btn-block" value="Delete Experience" onclick="deleteexperiencetable();">Delete Experience</button><br>     
              </div>
         </div>
               
        <div class="accordion-group">
        <div class="accordion-heading">
             <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseThree"> Address</a>
        </div> 
        <div id="collapseThree" class="accordion-body collapse">
               <div class="accordion-inner"  >
                <form id="TeacherAddressForm" class="form-inline"  modelAttribute="studentAddressForm">                                           
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
             <a class="accordion-toggle" data-toggle="collapse"  data-parent="#searchAccordion" href="#collapseSeven"> Terms & Condition</a>
          </div> 
          <div id="collapseSeven" class="accordion-body collapse">
          <div class="accordion-inner">
            <div id="formcontainer" style="margin-top: -300px">
                   <form  id="termsandconditionform" class="form-inline"  modelAttribute="">                                           
                     <table id = "termsconditiontable">     
                          <tr><td><label>Recruitment Date</label></td><td><input id="RecruitmentDate" type="date" value=""></td></tr>
                          <tr><td><label>Time schedule:</label> </td><td><button type="button" class="btn btn-primary" onclick="addtimesection();">Add time section</button></td></tr>
                          <tr class="timeslotday"><td>Saturday</td>
                                   <td><input type="checkbox" name="satmorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timesatmorning" name= "timesatmorning" type="time" class="input-medium" style='display:none'/></td> 
                                   <td><input type="checkbox" name="satday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timesatday" name= "timesatday" type="time" class="input-medium" style='display:none'/></td>
                                   <td><input type="checkbox" name="satevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timesatevening" name= "timesatevening" type="time" class="input-medium" style='display:none'/></td>
                          </tr>                      
                          
                           <tr class="timeslotday"><td>Sunday </td>
                                   <td><input type="checkbox" name="sunmorning" value="sunmorning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timesunmorning" name= "timesunmorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="sunday" value="sunday" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timesunday" name= "timesunday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="sunevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timesunevening" name= "timesunevening" type="time" class="input-medium" style='display:none'></td>
                             </tr>                          
                             <tr class="timeslotday"><td>Monday </td>
                                   <td><input type="checkbox" name="monmorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timemonmorning" name= "timemonmorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="monday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timemonday" name= "timemonday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="monevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timemonevening" name= "timemonevening" type="time" class="input-medium" style='display:none'></td>
                             </tr>
                              <tr class="timeslotday"><td>TuesDay</td>
                                   <td><input type="checkbox" name="tuesmorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timettuesmorning" name= "timetuesmorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="tuesday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timetuesday" name= "timetuesday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="tuesevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timetuesevening" name= "timetuesevening" type="time" class="input-medium" style='display:none'></td>
                              </tr>        
                               <tr class="timeslotday"><td>Wednesday</td><td><input type="checkbox" name="wedmorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timewedmorning" name= "timewedmorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="wedday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timewedday" name= "timewedday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="wedevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timewedevening" name= "timewedevening" type="time" class="input-medium" style='display:none'></td>
                               </tr>     
                                   
                              <tr class="timeslotday"><td>Thursday</td><td><input type="checkbox" name="thursmorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timethursmorning" name= "timethursmorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="thursday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timethursday" name= "timethursday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="thursevening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timethursevening" name= "timethursevening" type="time" class="input-medium" style='display:none'></td>              
                                </tr>
           
                                <tr class="timeslotday"><td>Friday</td><td><input type="checkbox" name="frimorning" value="morning" onclick='handleClick(this);'> Morning </input></td><br>  
                                   <td><input id= "timefrimorning" name= "timefrimorning" type="time" class="input-medium" style='display:none'></td> 
                                   <td><input type="checkbox" name="friday" value="day" onclick='handleClick(this);'> Day </input></td><br>  
                                   <td><input id= "timefriday" name= "timefriday" type="time" class="input-medium" style='display:none'></td>
                                   <td><input type="checkbox" name="frievening" value="evening" onclick='handleClick(this);'> Evening </input></td><br>  
                                   <td><input id= "timefrievening" name= "timefrievening" type="time" class="input-medium" style='display:none'></td>  
                                 </tr>
                                 
                                <tr><td><label> Payment Option:</label></td>
                                 <td>
                                 <select name="teacherpaymentoption">
                                   <option value="Weekly">Weekly</option>
                                   <option value="Bi-weekly">Bi-Weekly </option>
                                   <option value="monthly"> Monthly</option>      
                                 </select>             
                                 </td>
                                 <td><label> Teacher Payment Amount:</label></td>                  
                                 <td><input type="text" name="teacherpaymentamount" value=""></td>  
                                </tr>          
                                 <tr><td><label> Subject:</label> </td>
                                    <td>
                                      <select name="teachersubjct">
                                            <option value="bengali">Benglali</option>
                                            <option value="english">English </option>
                                            <option value="physics"> Physics</option> 
                                            <option value="chemistry"> Chemstry</option>
                                            <option value="math"> Math</option>                                    
                                            <option value="Biology">Biology</option>                                   
                                      </select>    
                                    </td>
                                <tr>
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
  </body>
</html>