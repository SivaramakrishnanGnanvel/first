package hdfc;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangePassword extends HttpServlet 
{
	    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
	        String npwd = request.getParameter("npwd");
	        LoginDao m = new LoginDao();
	        m.setAccount((String)request.getSession().getAttribute("account"));
	        m.setPwd(npwd);
	        if(m.changePassword() == true) {
	            response.sendRedirect("ChangePasswordSuccess.jsp");
	        }
	        else {
	            response.sendRedirect("ChangePasswordfail.jsp");
	        }

	    }
	}