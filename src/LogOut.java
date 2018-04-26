

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOut
 */
public class LogOut extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		HttpSession session = request.getSession();
		session.removeAttribute("userna");
		session.invalidate();
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/LoginPage.jsp");
	    rd.forward(request, response);
	
	}

}
