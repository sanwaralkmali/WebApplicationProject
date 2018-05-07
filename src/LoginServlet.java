

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import dBC.MyDBC;

import dBC.BookDBC;

public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/jsp;charset=UTF-8");

		String userN = request.getParameter("userName");
		String passW = request.getParameter("pass");
		 String url="";
		 
		String qStatement = "select * From logintable Where user_name='"+userN+"' and password='"+passW+"'";
		BookDBC book= new BookDBC(qStatement);
		
		
	    try {
			if(book.rs.next()) {
				if(book.rs.getString(4).equals("Y"))
					url="/WelcomAdmin.jsp";
				
				else
					url="/WelcomPage.jsp";
					
			}
			
				
		} catch (Exception e) {
			url="/LoginPage.jsp";
					
					e.printStackTrace();
		}
	    
	    RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	    rd.forward(request, response);

		
	}



}
