package hdfc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
	{
		try {
		String account=request.getParameter("account");
		String  pwd=request.getParameter("pwd");
		LoginDao dao=new LoginDao();
		dao.setAccount(account);
		dao.setPwd(pwd);
		if(dao.login()==true)
		{
			request.getSession().setAttribute("name",dao.getName());
			request.getSession(true).setAttribute("account", dao.getAccount());
			response.sendRedirect("home.jsp");
		}
		else 
		{
			response.sendRedirect("login.jsp");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
