<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/WelcomUser.css">
<link rel="stylesheet" type="text/css" href="css/ChangePass.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<script>
$(document).ready(function(){
    $("#mhome").click(function(){
    	$("#divHome").show();
    	$("#mypar").hide();
    	 $("#ChPass").hide();
    	
        
    });
    $("#aboutUs").click(function(){
        $("#divHome").hide();
        $("#ChPass").hide();
        $("#mypar").show();
        });
    
    $("#ChangePass").click(function(){
        $("#divHome").hide();
        $("#mypar").hide();
        $("#ChPass").show();
        });
});
</script>
</head>
<body>

	<!-- <%	
	
	//if(session.getAttribute("userna")==null)
		//	response.sendRedirect("LoginPage.jsp");
			%>
		-->	  
		<% String pass = 
				(String) request.getAttribute("pass");
			if(pass == null)
			pass = "";
		%>
		
		<%String passwordChange = 
			(String) request.getAttribute("ChangePassword");
			if(passwordChange == "PassWord Changed" || passwordChange =="cannot change password"
					|| passwordChange =="Entered password is Wrong"||
					passwordChange =="confirm password does not match")
			{
		%> 
	<script> alert('<%= passwordChange%>') </script> 
	<%} %>	
				
  <div class="topnav">
  <img class="aydinLogo" src="pic/istanbul-aydin-universitesi.jpg">
  <a id="mhome" class="active" href="#home">Home Page</a>
  <a id="aboutUs" href="#about">About us</a>
  <a href="#contact">Contact</a>
   <a id="ChangePass" href="#contact">Change PassWord</a>
  <div class="search-container">
		
	<form action="LogOut">
	
	<input type="submit" value="Logout" class="logout">
	</form>
	
  </div>
</div>
<div id="divHome" class="bg"> 	
	
<div style="padding-left:16px">
 <form class="search" action="ReusltOFSearch.jsp" method="get">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i> </button>
</form>
 
</div>
	
	
	</div>
	
	<div id="mypar" style="display:none">
	   	
	   	Hi salah 
	   	
	  </div>
	  
	  <div id="ChPass" style="display:none"> 
	  
	  <form action="ChangePassServlet" method="post"> 
	  
	  <label for="current password"> Current Password </label>
	  <input type="password" name="current_password" type="text"  class="changepass"></p>
 		<label for="new password"> New password</label>
 		<input type="password" name="new_password" class="changepass" type="text">
  
  		<label for="new password">Confirm password </label>
 		 <input type="password" name="confirm_password" class="changepass" type="text">
		
		        <input type="hidden" name="pass" value="<%=pass%>" />

  			<input name="submit" type="submit" value="Save Password" class="changepassbutton" type="submit" />
  			
	 											 </form>
	  
	  </div>
	  
	  
	   
</body>
</html>