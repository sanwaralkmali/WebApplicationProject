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
	<%@ page import ="java.sql.Connection"%>
	<%@ page import ="java.sql.DriverManager"%>
	<%@ page import ="java.sql.PreparedStatement"%>
	<%@ page import ="java.sql.ResultSet"%>
<% 
	String search = request.getParameter("search");
	String url = "jdbc:mysql://localhost:3306/ library";
	String userN = "root";
	String passW = "yqfhg.lhk2014";
	


	
	String qStatement = "select * From books Where book_id=? or book_name=? or author=?";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url , userN , passW);
		PreparedStatement st = con.prepareStatement(qStatement);
		st.setString(1, search);
		st.setString(2, search);
		st.setString(3, search);
		

			
		ResultSet rs =st.executeQuery();
		
		while(rs.next()){
			

	
	%>
	<h1> id = <%= rs.getString(1) %></h1>
	<h1> bookName = <%= rs.getString(2) %></h1>
	<h1> author = <%= rs.getString(3) %></h1>
	<h1> id = <%= rs.getString(1) %></h1>
	
	<img alt="" src="<%="pic/"+rs.getString(2)+".jpg"%>">
	
	<% }
		
		 rs.close();
		    st.close();
		    con.close();
		
	}catch(Exception e){
		
	} %>
	<div> 
	
	
	</div>
	
	
	
<h1>  </h1>


</body>
</html>