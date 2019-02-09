package hdfc;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CheckBalance extends HttpServlet {
	public void service(HttpServletRequest request ,HttpServletResponse response) throws IOException 
    {
        LoginDao m = new LoginDao();
        HttpSession ses = request.getSession(true);
        m.setAccount((String)ses.getAttribute("account"));
        if(m.checkBalance()==true)
        {
            ses.setAttribute("balance", m.getBalance());
            response.sendRedirect("balance.jsp");
        }
        else
        {
            response.sendRedirect("failBalance.jsp");
        }
    }
}
