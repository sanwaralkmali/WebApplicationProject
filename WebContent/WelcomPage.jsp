<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%	
		if(session.getAttribute("userna")==null)
			response.sendRedirect("LoginPage.jsp");
			%>
			  
			  <div class="bg">
	<h1> Welcom in our login page </h1>
	
	<form action="LogOut">
	
	<input type="submit" value="Logout">
	
	</form>
	</div>
</body>
</html>