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
<title>Insert title here</title>

<script type="text/javascript">     
  $(document).ready(function() {
	  $('#wrapper #sidebar-wrapper .sidebar-nav li').click(function(){
		    $(this).addClass('active').siblings().removeClass('active');
		  });	  
	});   
  </script>

<style >
#wrapper{
   position:absolute;
   margin-top:10px;
   width: 27%;
  }
  
  .sidebar-nav .active{
       background-color:#1B3E70;
       color:white;
  } 
</style>

</head>
<body>

<div id="wrapper"  >
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul id="list" class="sidebar-nav">
                
                 <li>
                      <a href="#">Dashboard</a>
                 </li>
                 <li class="active">
                      <a href="#admissionform" onClick= "$('.studentdiv').filter('div').filter('#admissionbutton').show();$('.studentdiv').filter('div').not('#admissionbutton').hide();">Admission</a>                         
                 </li>                         
                 <li>
                      <a href="#paymentinfo" onclick= "$('.studentdiv').filter('div').filter('#paymentinfo').show();$('.studentdiv').filter('div').not('#paymentinfo').hide();">Student Accounting</a>
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
  </body>
</html>