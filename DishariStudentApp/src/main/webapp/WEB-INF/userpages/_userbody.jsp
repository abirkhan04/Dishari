<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
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
<link rel="stylesheet"
	href="<%=ctxPath%>/css/normalize.css" />
	
<style type="text/css">
@import "http://ajax.googleapis.com/ajax/libs/dojo/1.5/dijit/themes/claro/claro.css";
</style>
<script src="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dojo/dojo.xd.js"></script>
<script>
       dojo.ready(function(){
       dojo.byId("greeting").innerHTML += ", from " + dojo.version;
   });
</script>

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
        	 console.log('Working');
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
  });
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
                         document.getElementById('class').addEventListener('change',function(){
                    	         var selectedClass =  document.getElementById('class');
               	                 var selectedClassValue = selectedClass.options[selectedClass.selectedIndex].value;
               	          if(selectedClassValue == "six" ||  selectedClassValue == "seven"  ||  selectedClassValue== "eight"){
               	        	        // alert("nine");
               	        	      document.getElementById('upper').style.display = "none";
                            } 
               	          else{
               	        	     document.getElementById('upper').style.display = "block";
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
 </style>
</head>


<body>
 This is user body.      
   </body>
</html>