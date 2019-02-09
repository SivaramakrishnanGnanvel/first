package hdfc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	{
		try {
		request.getSession().invalidate();
		response.sendRedirect("login.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}

}
