<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	 String ctxPath = request.getContextPath();
     String studentid = (String)session.getAttribute("studentId");
%>
<html>
<head>
           <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
           <title>This is User home title</title>
</head>
  <body>
     <nav class="navbar navbar-default" >
     <div class="container-fluid" style = "margin-left: 150px">
     <div class="navbar-header" >
        <a class="navbar-brand" href="#">dishari.org</a>
     </div>     
     <ul class="nav navbar-nav">
           <li class="active"><a href="#">Student</a></li>
           <li><a href="#">Teacher</a></li>
           <li><a href="#">Staff</a></li>
           
     </ul>
     </div>
     </nav>
  </body>
</html>