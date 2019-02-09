package hdfc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	{ try
		{
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String account=request.getParameter("account");
		String email=request.getParameter("email");
		String custid=request.getParameter("custid");
		String balance=request.getParameter("balance");
		LoginDao dao=new LoginDao();
		dao.setAccount(account);
		dao.setBalance(balance);
		dao.setEmail(email);
		dao.setName(name);
		dao.setCustid(custid);
		dao.setPwd(pwd);
		if(dao.register()==true)
		{
			response.sendRedirect("regSuccess.jsp");
		}
		else
		{
			response.sendRedirect("regFail.jsp");
		}
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}

}
