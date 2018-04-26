

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/jsp;charset=UTF-8");

		String userN = request.getParameter("userName");
		String passW = request.getParameter("pass");
		
		HttpSession session = request.getSession();
		session.setAttribute("userna", userN);
		//session.setMaxInactiveInterval(40);
		
	    String url="";
	    String msg="";
	     url="/WelcomPage.jsp";
	    
	    RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	    rd.forward(request, response);

		
	}



}