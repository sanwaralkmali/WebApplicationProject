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
	bookDBc.chickLogin(searchR);
	ImageIcon img1 = new ImageIcon("/pic/"+ searchR+".jpg");
	String s = "pic/salah.jpg";
	%>

	<h1> You entered : <%= bookDBc.s%></h1>
	<img alt="SAlah" src="<%= s%>" id='image'>
<script type="text/javascript">
   // document.getElementById('image').src = "salah.jpg";
</script>


</body>
</html>