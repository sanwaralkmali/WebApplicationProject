

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ChangePassServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CurPass =request.getParameter("current_password");
		String newPass = request.getParameter("new_password");
		String ConfPass = request.getParameter("confirm_password");
		String loginedPass = request.getParameter("pass");
		  PrintWriter out=response.getWriter();
		  
		  out.println(loginedPass);
		  out.println(CurPass);
		  out.println(newPass);
		  out.println(ConfPass);
		  
		if(CurPass.equals(loginedPass)) {
		
			
			if( newPass.equals(ConfPass)) { 
				request.setAttribute("ChangePassword", "PassWord Changed");
		String url = "jdbc:mysql://localhost:3306/ library";
		String userN = "root";
		String passW = "yqfhg.lhk2014";
		
		String statment = "update logintable set password=? where password=?";
		Connection con=null;
		PreparedStatement stmt=null;
      
        try
        {
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection( url,userN,passW );
              stmt=con.prepareStatement(statment);
              stmt.setString(1, newPass);
              stmt.setString(2, CurPass);
              stmt.executeUpdate();
             
             
              
           
             
              stmt.close();
              con.close();
              }
        catch(Exception e)
        {
        	request.setAttribute("ChangePassword", "cannot change password");      
        }
        
		}	else
			request.setAttribute("ChangePassword", "confirm password does not match");
		}
		else
			request.setAttribute("ChangePassword", "Entered password is Wrong");
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WelcomPage.jsp");
   	    rd.forward(request, response);
	}

}
