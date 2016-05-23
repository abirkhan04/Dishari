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
<title>Dishari.org</title>

<!-- CSS files -->
<link rel="stylesheet"
	href="<%=ctxPath%>/css/bootstrap.min.css" />
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
	src="<%=ctxPath%>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=ctxPath%>/js/app-custom.script.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		console.log('Working');
	});	
</script>

 
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


#carouselContainer,#loginForm{
background: grey;
height: 400px;
    padding-top: 10px;
    padding-right: 10px;
    padding-bottom: 10px;
    padding-left: 10px;
  }
</style>


</head>
<body>   
 <div class="container">
    <div  class="row" style="margin-left:-25%;background:#00FFFF;"> 
        <div id="carouselContainer" class="col-md-5 col-md-offset-1">
           <div id="dishariCarousel" class ="carousel slide" data-ride = "carousel">
                  <ol class="carousel-indicators">
                       <li data-target="#dishariCarousel" data-slide-to="0" class="active"></li>
                       <li data-target="#dishariCarousel" data-slide-to="1">   </li>
                       <li data-target="#dishariCarousel" data-slide-to="2">   </li>
                       <li data-target="#dishariCarousel" data-slide-to="3">   </li>                 
                  </ol>
                                                     
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="<%=ctxPath%>/image/libraryBooks.jpg" alt="Chania">
                    </div>
                    <div class="item">
                        <img src="<%=ctxPath%>/image/libraryBooks.jpg" alt="Chania">
                    </div>
                    <div class="item">
                        <img src="<%=ctxPath%>/image/libraryBooks.jpg" alt="Flower">
                   </div>
                   <div class="item">
                        <img src="<%=ctxPath%>/image/libraryBooks.jpg" alt="Flower">
                   </div>
                  </div>
					  <a class="left carousel-control" href="#dishariCarousel" role="button" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#dishariCarousel" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>			                   
            </div>           
      </div>
        <div id="loginForm" class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class="">Login</strong>

                </div>
                <div class="panel-body">
				<form name='loginForm' modelAttribute="login"
					   action="<c:url value='/j_spring_security_check' />" method='POST'>
			<table>
				<tr>	
				  <div class="form-group" style="margin-bottom: 10px;">
					<td>
						<label for="username" style="margin: 0px 0px 0px 2px;">Username</label>
					</td>
					<td>	
						<input type="text" class="form-control" id="username"
							name="username" placeholder="Enter username" required="required">
					</td>		
				</div>
				</tr>
				<tr>
					<div class="form-group" style="margin-bottom: 10px;">
					<td>
						<label for="password" style="margin: 0px 0px 0px 2px;">Password</label>
					</td>
					 <td>	
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Enter password" required="required">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					 </td>		
					</div>
				</tr>
			</table>		
					 <c:if test="${not empty error}">
						<div class="error" style="color: #a94442; text-align: center;">${error}</div>
					 </c:if>
					 <c:if test="${not empty msg}">
						<div class="msg" style="color: #a94442; text-align: center;">${msg}</div>
					 </c:if>

					 <div style="padding: 1px; margin-top: 10px;">
						<button type="submit" class="btn btn-primary btn-lg"
							style="width: 100%;">Sign in</button>
					  </div>
				   </form>
                </div>
            </div>
            <div style="border:3px solid green;background: white;height:140px;">
                      Here will be second area ; Here will be second area; 
                      Here will be second area to be added ; Here will be second area to be added 
                      Here will be third area to be added 
            </div> 
         </div>      
         <div class="col-md-2" style="border: 3px solid green;background:white;height: 400px">
                 <p>This third area here  will be some information about Dishari
                 Here will be some information about Dishari
                 Here will be some information about Dishari
                 Here will be some information about Dishari
         </div>     
    </div>
</div>
	<!-- 
	<div class="signUpDiv" style="margin: 25px auto 10px; max-width: 400px; padding: 10px;">
		<div class="login-div"
			style="border: 1px solid lightgray; border-radius: 5px;">
			<h3 style="text-align: center; margin: 10px;">User Login</h3>
			<div style="border-top: 1px solid lightgray;"></div>

			<div style="padding: 1px; margin: 5px;">
				<form id='loginForm' modelAttribute="login"
					action="<c:url value='/j_spring_security_check' />" method='POST'>
					<div class="form-group" style="margin-bottom: 10px;">
						<label for="username" style="margin: 0px 0px 0px 2px;">Username</label>
						<input type="text" class="form-control" id="username"
							name="username" placeholder="Enter email">
					</div>
					<div class="form-group" style="margin-bottom: 10px;">
						<label for="password" style="margin: 0px 0px 0px 2px;">Password</label>
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Password"> <input
							type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</div>
					<c:if test="${not empty error}">
						<div class="error" style="color: #a94442; text-align: center;">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="msg" style="color: #a94442; text-align: center;">${msg}</div>
					</c:if>

					<div style="padding: 1px; margin-top: 10px;">
						<button type="submit" class="btn btn-primary btn-lg"
							style="width: 100%;">Sign in</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div id="login-box"
		style="border: 1px solid black; text-align: center;">
		<h3>Login with Username and Password</h3>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm' modelAttribute="login"
			action="<c:url value='/j_spring_security_check' />" method='POST'>
			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
	
		 <a href="signup"> Please click here to sign-up if you don't have an
		account.</a>
		 -->
  </body>
</html>