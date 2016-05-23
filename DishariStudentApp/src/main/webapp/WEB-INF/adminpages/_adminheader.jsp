<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%     
    String ctxPath = request.getContextPath();    
%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
           <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
           <title>Insert title here</title>
           
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
		      var path = $(location).attr('href');
	    	  var patharray = path.split("/");
	    	  var currentid = patharray[patharray.length-1];
		      $('#'+currentid).addClass('active');
		      $('#'+currentid).siblings().removeClass('active');  		    
		    $('#container .container-fluid .nav li').click(function(){
		    	  var clickedlist = $(this).attr('id');	
		    	 
			});	              
	 });	
</script>

         
           
</head>
<body>
    <div id="container" class="navbar navbar-default" >
    <div class="container-fluid" style = "margin-left: 150px">
    <div class="navbar-header" >
        <a class="navbar-brand" href="#">dishari.org</a>
    </div>   
       
     <ul class="nav">
        <li id="student" class="active"><a href="<%=ctxPath %>/common">Student</a></li>
        <li id="teacher"><a href="<%=ctxPath %>/humanresource/teacher">Human Resource</a></li>
        <li id="management">
              <a href="<%=ctxPath %>/class/management">Class Scheduling</a>
        </li>
     </ul>      
      <ul class="nav navbar-right">
               <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
	  </ul>
   </div>
  </div>
</body>
</html>