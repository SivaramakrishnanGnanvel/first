package hdfc;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class GetStatement extends HttpServlet {
	  public void service(HttpServletRequest request, HttpServletResponse response) {
	        try {
	            LoginDao m = new LoginDao();
	            m.setAccount((String) request.getSession().getAttribute("account"));
	            ArrayList al = m.getStatement();
	            if (al.isEmpty()) {
	                response.sendRedirect("noTransaction.jsp");
	            } else {
	                request.getSession().setAttribute("transaction", al);
	                response.sendRedirect("getTransaction.jsp");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
