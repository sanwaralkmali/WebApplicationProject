<%@page import="java.sql.Statement"%>
<%@page import="dBC.BookDBC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="WelcomUser.css">
<link rel="stylesheet" type="text/css" href="WelcomAdmin.css">
<link rel="stylesheet" type="text/css" href="LoginStyle.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<%@ page import ="dBC.*" %>
<%@ page import ="java.sql.Connection"%>
<%@ page import ="java.sql.DriverManager"%>
<%@ page import ="java.sql.PreparedStatement"%>
<%@ page import ="java.sql.ResultSet"%>

<script>


$(document).ready(function(){
	
    $("#showBooks").click(function(){
    	
    	$( ".middlepane" ).empty();
    	
    		var table = $('<table/>').addClass('foo');
    		var tr1 = $('<tr/>').addClass('bar');
    	    var bookId = $('<th/>').addClass('row1').text("Book Id");
    	    var bookName= $('<th/>').addClass('row1').text("Book Name");
    	    var author = $('<th/>').addClass('row1').text("Author");

    	    
    	    tr1.append(bookId);
    	    tr1.append(bookName);
    	    tr1.append(author);
    	    
    	    
    	    table.append(tr1);
    	
    <% 
  
    	
   	 BookDBC b = new BookDBC( "select * From books");

		while(b.rs.next()){
    	
    	%>
    	var tr2 = $('<tr/>').addClass('bar');
	    var bookId2 = $('<th/>').addClass('row1').text("<%=b.rs.getString(1)%>");
	    var bookName3= $('<th/>').addClass('row1').text("<%=b.rs.getString(2)%>");
	    var author4 = $('<th/>').addClass('row1').text("<%=b.rs.getString(3)%>");

	    
	    tr2.append(bookId2);
	    tr2.append(bookName3);
	    tr2.append(author4);
	    
	    
	    table.append(tr2); <%}%>
	    
	    $('.middlepane').append(table);
        
    });
    $("#addBook").click(function(){
    	$( ".middlepane" ).empty();
		
    	var div=$('<div/>').addClass('addBook');
    	var form = $('<form/>').attr('action' , 'AddNewBook').attr('method' , 'post');
    	var label = $('<label/>').attr('for' , 'Book_ID').text("Book ID");
	    var inputId = $('<input/>').addClass('input').attr('name' , "Book_id").attr('type' , 'text').attr("required", "true");
	    var label2 = $('<label/>').attr('for' , 'Book_Name').text("Book Name");
	    var inputId2 = $('<input/>').addClass('input').attr('name' , "Book_Name").attr('type' , 'text').attr("required", "true");
	    var label3 = $('<label/>').attr('for' , 'Author').text("Author");
	    var inputId3 = $('<input/>').addClass('input').attr('name' , "Author").attr('type' , 'text').attr("required", "true");
	    var label4 = $('<label/>').attr('for' , 'image').text("image Path");
	    var inputId4 = $('<input/>').addClass('input').attr('name' , "imagePath").attr('type' , 'text');

	  	var input = $('<input/>').attr('type' , 'submit').attr('Value' , "Add Book").addClass('addBookButton').attr('style','width:100%;');
	    
	    
	    form.append(label);
	    form.append(inputId);
	    form.append(label2);
	    form.append(inputId2);
	    form.append(input); 
	    form.append(label3);
	    form.append(inputId3);
	    form.append(label4);
	    form.append(inputId4);
	    form.append(input);
	    div.append(form);
	    $('.middlepane').append(div);
    	
        });
    
    $("#addUser").click(function(){
    	$( ".middlepane" ).empty();
		
    	var div=$('<div/>').addClass('addBook');
    	var form = $('<form/>').attr('action' , 'AddNewUser').attr('method' , 'post');
    	var label = $('<label/>').attr('for' , 'User_ID').text("User ID");
	    var inputId = $('<input/>').addClass('input').attr('name' , "User_ID").attr('type' , 'text').attr("required", "true");
	    var label2 = $('<label/>').attr('for' , 'Book_Name').text("User Name");
	    var inputId2 = $('<input/>').addClass('input').attr('name' , "User_Name").attr('type' , 'text').attr("required", "true");
	    var label3 = $('<label/>').attr('for' , 'Author').text("User SurName");
	    var inputId3 = $('<input/>').addClass('input').attr('name' , "SurName").attr('type' , 'text').attr("required", "true");
	 

	  	var input = $('<input/>').attr('type' , 'submit').attr('Value' , "Add User").addClass('addBookButton').attr('style','width:100%;');
	    
	    
	    form.append(label);
	    form.append(inputId);
	    form.append(label2);
	    form.append(inputId2);
	    form.append(input); 
	    form.append(label3);
	    form.append(inputId3);
	    form.append(input);
	    div.append(form);
	    $('.middlepane').append(div);
    	
        });
    
    $("#DeleteBook").click(function(){
    	$( ".middlepane" ).empty();
    	var div=$('<div/>').addClass('addBook');
		var form =$('<form>').attr('action', 'DeleteBook').attr('method', 'post');
    	var label4 = $('<label/>').attr('for' , 'deletedBook').text("Book Id");
	    var inputId4 = $('<input/>').addClass('input').attr('name' , "DeletedBook").attr('type' , 'text');

	  	var input = $('<input/>').attr('type' , 'submit').attr('Value' , "Delete").addClass('addBookButton').attr('id','deletethisBook').attr("required", "true");
	  	form.append(label4);
	  	form.append(inputId4);
	  	form.append(input);
	  	div.append(form);
	  	$('.middlepane').append(div);
    	
	  	
        });
    
});


</script>

</head>
<body>
<%String massOfInsertUser = 
			(String) request.getAttribute("newUserInserting");
			if(massOfInsertUser == "inserting new user Suesses" || massOfInsertUser =="inserting new user Faild")
			{
		%> 
	<script> alert('<%= massOfInsertUser%>') </script> 
	<%} %>
<%String massOfDeleteBook = 
			(String) request.getAttribute("DeletingBook");
			if(massOfDeleteBook == "Deleting Success" || massOfDeleteBook =="Deleting Faild")
			{
		%> 
	<script> alert('<%= massOfDeleteBook%>') </script> 
	<%} %>
<%String massOfInsertBook = 
			(String) request.getAttribute("newBookInserting");
			if(massOfInsertBook == "inserting new Book Suesses" || massOfInsertBook =="inserting new Book Faild")
			{
		%> 
	<script> alert('<%= massOfInsertBook%>') </script> 
	<%} %>

<div class="container">
             <div class="topnav">
  <img class="aydinLogo" src="pic/istanbul-aydin-universitesi.jpg">
  
		
	<form action="LogOut">
	
	<input type="submit" value="Logout" class="logout">
	</form>
	
  </div>
            <div class="leftpane">
            
            <ul class="list">
  <li><a id="addUser" class="active" href="#home">Add new User</a></li>
  
  <li><a id="addBook" class="active" href="#home">Add new Book</a></li>
  
  <li><a id="displayUsers" href="#about">Display Users</a></li>
  
  
  <li><a id="showBooks" href="#">Show Books</a></li>
  
<li><a id="DeleteBook" href="#">Delete Book</a></li>

<li><a id="DeleteUser" href="#">Delete User</a></li>
</ul>
            
            
            </div >
            
             <div class="middlepane" >   <div id="divHome" class="bg"> </div>  </div>
          
</div>

</body>
</html>