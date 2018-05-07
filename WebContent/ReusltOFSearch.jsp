<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" type="text/css" href="Search.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<%@ page import ="dBC.*" %>
	<%@ page import ="java.sql.Connection"%>
	<%@ page import ="java.sql.DriverManager"%>
	<%@ page import ="java.sql.PreparedStatement"%>
	<%@ page import ="java.sql.ResultSet"%>
<% 
	String search = request.getParameter("search");
	
		
		BookDBC b = new BookDBC( "select * From books Where book_id='"+search+"'or book_name='"+search+"'or author='"+search+"'");
		
		
		
		while(b.rs.next()){
			

	
	%>
	<div class="book">
		<img class="bookimg" alt="" src="<%="pic/"+b.rs.getString(2).toLowerCase()+".jpg"%>">
	
	<h1 id="bookNAme"> <%= b.rs.getString(2) %></h1>
	<p class="title" id="author">By <%= b.rs.getString(3) %></p>
	 
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
				
			
			<button onclick="myfunction()">
			<%= s %>
			<% String bName = b.rs.getString(3);
			%>
	<script type="text/javascript">
	
	function myfunction(){
		var div =document.getElementsByClassName("book");
		var div2 =document.getElementById("bookName");
		for(var i=0;i<div.length;i++){
			var s = div[i].children.text;
						console.log(s);
		}
			

		}

	
	</script>
	 
			</button>	
			
			
				
			
			
			</div>
	
	<%  }
		
		
		
		b.rs.close();
		    b.st.close();
		    b.con.close();
		
	 %>
	
	
	
	<button onclick="window.location.href='WelcomPage.jsp'">Back</button>
	
	
	
	

	</body>

</html>