<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" type="text/css" href="Search.css">


</head>
<body>

	<%@ page import ="dBC.*" %>
	<%@ page import ="java.sql.Connection"%>
	<%@ page import ="java.sql.DriverManager"%>
	<%@ page import ="java.sql.PreparedStatement"%>
	<%@ page import ="java.sql.ResultSet"%>
<% 
	String search = request.getParameter("search");
	
		
		BookDBC b = new BookDBC(search);
		
		
		
		while(b.rs.next()){
			

	
	%>
	<div class="book">
		<img class="bookimg" alt="" src="<%="pic/"+b.rs.getString(2).toLowerCase()+".jpg"%>">
	
	<h1> <%= b.rs.getString(2) %></h1>
	<p class="title">By <%= b.rs.getString(3) %></p>
	 
		<%
		String s;
		String color;
		if(b.rs.getString(4).equals("Y")){
				s="Avaliable";
				color = "green";
		
		}
		
		else
		{
			s="Not Avalaible";
			color = "red";			
		}
				%>
				<form action="BorrowServlet" method="get">
				<button class="ava" style="background-color: <%= color%>">
				</form>
			<p>  <%= s %> </p>	
			
			
			</div>
	</div>
	
	
	
	<%  }
		
		
		
		b.rs.close();
		    b.st.close();
		    b.con.close();
		
	 %>
	
	
	
	<button onclick="window.location.href='WelcomPage.jsp'">Back</button>
	
	
	
	
	


</body>

</html>