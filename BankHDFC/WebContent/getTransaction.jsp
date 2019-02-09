<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
    </head>
    <body>
        <h3> Transactions </h3>
        <%
        ArrayList al = (ArrayList)request.getSession().getAttribute("transactions");
        Iterator it = al.iterator();
        
        while(it.hasNext()) {
            out.println((String)it.next());
            %><br /><%
        }
        %>
        <br/>
        <a href="Logout">Logout</a>
        <a href="home.jsp">Home</a>
    </body>
</html>
