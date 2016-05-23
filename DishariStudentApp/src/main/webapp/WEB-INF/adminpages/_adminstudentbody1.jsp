<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Dashboard</title>
<head>
<!-- CSS files -->
<link rel="stylesheet"
	href="<%=ctxPath%>/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css"
    href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css">	
<link rel="stylesheet"
	href="<%=ctxPath%>/css/simple-sidebar.css"/>		
<link rel="stylesheet"
	href="<%=ctxPath%>/css/bootstrap-theme.min.css" />
<link rel="stylesheet"
	href="<%=ctxPath%>/css/app-custom.style.css" />	
<link rel="stylesheet"
	href="<%=ctxPath%>/css/navbar-custom.style.css" />	

<!-- JavaScript files -->
<script type="text/javascript"
	src="<%=ctxPath%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=ctxPath%>/js/jquery.js"></script>	
<script type="text/javascript"
	src="<%=ctxPath%>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=ctxPath%>/js/app-custom.script.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		console.log('Working');
	});	
</script>
<script type="text/javascript">
           $(document).ready(function() {
           $('#studentform').submit(function(e){
        	e.preventDefault();  //Not to submit form in classic way.
        	var str = $("#studentform").serialize();
        	$.ajax({
        	    type:"POST",
        	    data: str,
        	    url: "/test/formsubmit",
        	    async: false,
        	    dataType: "json",
        	    success: function(response){
        	          $('#admissionform').html(response);    	        
        	         
        	    }
           });
      });
  });
</script>
<style>
  
<style type="text/css">
.list-group-item {
	border: none;
}


#list-items {
	font-size: 16px;
	text-decoration: none;
}

#list-items:HOVER{
    background: wheat;
}
</style>

</head>
<body>
   <div id="wrapper" style="width:60px;float:left" >
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                           Start Bootstrap
                    </a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li id="admisson">
                     <a href="#admissionform" onClick="$('.studentdiv').filter('div').filter('#admissionform').show();$('.studentdiv').filter('div').not('#admissionform').hide();">Basic Information</a>
                </li>              
                <li>
                    <a href="#paymentinfo" onClick="$('.studentdiv').filter('div').filter('#paymentinfo').show();$('.studentdiv').filter('div').not('#paymentinfo').hide();">Payment Overview</a>
                </li>
                <li>
                    <a href="#">Other info</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
          </div>   
        </div>        
        <!-- Menu Toggle Script -->          

   <div id="admissionform" class="studentdiv" style="display: none;">
              <div class="container">
    <div class="accordion" id="searchAccordion">
      <div class="accordion-group">
        <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"
            data-parent="#searchAccordion" href="#collapseOne">Basic Information</a>
        </div>
               
        <div id="collapseOne" class="accordion-body collapse in">
            <div class="accordion-inner"  >
             <form id="studentform" class="form-inline"  modelAttribute="student">           
                <table>
                 <div class="span12">
                 <tr>             
                     <td><label>Student's Name </label></td>
                     <td><input name="Name" class="input-medium" type="text"/></td> 
                     <td><label>Nick Name</label></td>
                     <td><input name="surName" class="input-medium" type="text" /></td>     
                 </tr>
                 </div>    
                  
                 <div class="span12">
                 <tr>                
                     <td><label>Father's Name</label></td>
                     <td><input name="fatherName" class="input-medium" type="text" /></td>
                     <td><label>Mother's Name</label></td>
                     <td><input name="motherName" class="input-medium" type="text" /></td>   
                 </tr>
                 </div>                                        
               <div class="span12">
                 <tr>   
                     <td><label>Date of Birth</label></td>
                     <td><input name="dob" class="input-medium" type="text"/></td>                       
                     <td><label>Place of Birth</label></td>
                     <td><input name="pob" class="input-medium" type="text" /></td>
                  </tr>                                  
                 </div>                       
                 <div class="span3 offset1">
                 <tr>
                     <td> <label class="checkbox">Male</label></td>
                     <td><label><input name="Gender" type="checkbox" value="male"/></label></td>
                  </tr>   
                 </div>    
                 <div class="span3">
                 <tr>
                   <td><label class="checkbox">Female</label></td> 
                   <td><input name="gender" type="checkbox" value="female"/></td>
                 </tr>                      
                 </div>
                 <div class="span12">
                 <tr>
                     <td><label class="Button"></label></td> 
                     <td><input type="submit" id="ibutton"  value="save"/></td>
                 </tr>                      
                 </div>
                </div>   
              </table>    
            </form>
          </div>
        </div>
      </div>
      <div class="accordion-group">
        <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse"
            data-parent="#searchAccordion" href="#collapseTwo">Address</a>
      </div>
      <div id="collapseTwo" class="accordion-body collapse">
                   <div class="accordion-inner"  >
             <form id="addressform" class="form-inline"  modelAttribute="address">
             
                <table>
                <div class="span4">
                <tr>             
                     <td><label>House Number</label></td>
                     <td><input name="houseNumber" class="input-medium" type="text"/></td> 
                     <td><label>Road Name/Number</label></td>
                     <td><input name="roadN" class="input-medium" type="text" /></td>     
                 </tr>
                 </div>    
                  
                 <div class="span4">
                 <tr>                
                     <td><label>Sector/Village</label></td>
                     <td><input name="sector" class="input-medium" type="text" /></td>
                     <td><label>Thana/Upazilla</label></td>
                     <td><input name="thana" class="input-medium" type="text" /></td>   
                 </tr>
                 </div>                                        
                 <div class="span4">
                 <tr>   
                     <td><label>District</label></td>
                     <td><input name="district" class="input-medium" type="text"/></td>                       
                     <td><label>Post Office Number</label></td>
                     <td><input name="postNumber" class="input-medium" type="text" /></td>
                   </tr>                                  
                   </div>                                
                   <div class="span4">
                   <tr>
                     <td><label class="Button"></label></td> 
                     <td><input type="submit" id="ibutton"  value="save"/></td>
                   </tr>                      
                   </div>
                  </div>   
                 </table>    
                 </form>
                </div>
               </div>
             </div>
            </div>
           </div>                  
          </div>  
          <div>
                  Open admission form<a href="/test/admissionForm">in pdf format. 
          </div>
          
         <div id="paymentinfo"  class= "studentdiv" style="display:none"> 
                  Hello! This is payemnt div! This is a payment form.    
        </div>                  
   </body>
</html>