package hdfc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Transfer extends HttpServlet {
	  protected void service(HttpServletRequest request, HttpServletResponse response) {
	        try {
	        	String tacc = request.getParameter("tacc");
	        	String tamt = request.getParameter("tamt");
	            LoginDao m = new LoginDao();
	            m.setAccount((String) request.getSession().getAttribute("account"));
	            
	            if (m.transfer(tacc, tamt) == true) {
	                response.sendRedirect("transferSuccess.jsp");
	            } else {
	                response.sendRedirect("transferfail.jsp");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
