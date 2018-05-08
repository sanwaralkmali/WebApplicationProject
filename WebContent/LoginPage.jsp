<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<link rel="stylesheet" type="text/css" href="css/LoginStyle.css">


</head>

<body>
	<%String mass = 
			(String) request.getAttribute("login");
			if(mass == "wrong login")
			{
		%> 
	<script> alert('<%= mass%>') </script> 
	<%} %>
	
<div class="wrapper">

<button id="loginButton" onclick="document.getElementById('model_id').style.display='block'" style="width:auto;">Login</button>
</div>
<div id="model_id" class="modal_class">
  
  <form class="modal-content animate" action="LoginServlet">
    
    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="userName" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <button type="submit">Login</button>
     
    </div>

   
  </form>
</div>


<script>
// Get the modal
var modal = document.getElementById('model_id');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>

</html>