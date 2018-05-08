

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("User_ID");
		String userName = request.getParameter("User_Name");
		String surname = request.getParameter("SurName");
	
		String url = "jdbc:mysql://localhost:3306/ library";
		String userN = "root";
		String passW = "yqfhg.lhk2014";
		
		String statment = "insert into logintable values('"+userID+"' , '" + userName +"' , '"+surname+"', 'N' ,'" + userID +"')";
		Connection con=null;
        Statement stmt=null;
        PrintWriter out=response.getWriter();
        try
        {
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection( url,userN,passW );
              stmt=con.createStatement();
              int i = stmt.executeUpdate(statment);
              if(i>0)
            	  request.setAttribute("newUserInserting", "inserting new user Suesses");
              else
            	  request.setAttribute("newUserInserting", "inserting new user Faild");
              
              
           
              
           
             
              stmt.close();
              con.close();
              }
        catch(Exception e)
        {
        	request.setAttribute("newUserInserting", "inserting new user Faild");       
        }
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WelcomAdmin.jsp");
   	    rd.forward(request, response);
			}

}
