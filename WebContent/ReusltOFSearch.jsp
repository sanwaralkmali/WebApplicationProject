<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>

	<%@ page import ="dBC.*" %>
	<%@ page import ="javax.swing.ImageIcon
	" %>
	
<% String searchR = request.getParameter("search");
	BookDBC bookDBc = new BookDBC();
	bookDBc.doSearch(searchR);
	String strd = bookDBc.str; 
	
	//int l = bookDBc.s.length;
	String my = bookDBc.s[1];
	String bookName = bookDBc.s[2];
	String author = bookDBc.s[5];
	String imgUrl = bookDBc.s[5];
	
	
	%>
<%= strd %>
	
	<div> 
	<img alt="Book" src="<%=imgUrl %>">
	<h1> <%= "Book id is : " + my %></h1>
	<h1> <%= "Book name is : " + bookName %></h1>
	<h1> <%= "Book id is : " + author %></h1>
	
	</div>
	
	
	
<h1>  </h1>


</body>
</html>