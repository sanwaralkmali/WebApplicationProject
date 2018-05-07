

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dBC.BookDBC;


public class AddNewBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bookID = request.getParameter("Book_id");
		String bookName = request.getParameter("Book_Name");
		String author = request.getParameter("Author");
		String imagePath = request.getParameter("imagePath");
		//response.sendRedirect("#");
		
		String url = "jdbc:mysql://localhost:3306/ library";
		String userN = "root";
		String passW = "yqfhg.lhk2014";
		
		String statment = "insert into books values('"+bookID+"' , '" + bookName +"' , '"+author+"', 'Y' ,'"+ imagePath +"')";
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
                out.println("Inserted Successfully");
              else
                out.println("Insert Unsuccessful");
              
              
              
             
              stmt.close();
              con.close();
              }
        catch(Exception e)
        {
          out.println(e);       
        }
		
	}

}
