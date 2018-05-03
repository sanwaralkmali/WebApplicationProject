<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="WelcomUser.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<script>
$(document).ready(function(){
    $("#mhome").click(function(){
    	$("#divHome").show();
    	$("#mypar").hide();
    	
        
    });
    $("#aboutUs").click(function(){
        $("#divHome").hide();
        $("#mypar").show();
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
  <div class="topnav">
  <img class="aydinLogo" src="pic\istanbul-aydin-universitesi.jpg">
  <a id="mhome" class="active" href="#home">Home Page</a>
  <a id="aboutUs" href="#about">About us</a>
  <a href="#contact">Contact</a>
  <div class="search-container">
		
	<form action="LogOut">
	
	<input type="submit" value="Logout">
	</form>
	
  </div>
</div>
  
<div id="divHome" class="bg"> 	
	
<div style="padding-left:16px">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
 
</div>
	
	
	</div>
	
	<div id="mypar">
	   	
	   	Hi salah 
	   	
	  </div>
</body>
</html>