

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteBook
 */
public class DeleteBook extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID =(String)request.getParameter("DeletedBook");
		String statment = " delete from books where book_id=?";
		String url = "jdbc:mysql://localhost:3306/ library";
		String userN = "root";
		String passW = "yqfhg.lhk2014";
		
		Connection con=null;
        PreparedStatement stmt=null;
        PrintWriter out=response.getWriter();
        try
        {
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection( url,userN,passW );
              stmt=con.prepareStatement(statment);
              stmt.setString(1, userID);
              
              int i = stmt.executeUpdate();
              if(i>0)
            	  request.setAttribute("DeletingBook", "Deleting Success");
            	  
                
              else 
            	  request.setAttribute("DeletingBook", "Deleting Faild");
              
              
           
      	    
              stmt.close();
              con.close();
        }
        catch(Exception e)
        {
        	 request.setAttribute("DeletingBook", "Deleting Faild");
        	 }
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WelcomAdmin.jsp");
  	    rd.forward(request, response);
       
        
	
	}

}
