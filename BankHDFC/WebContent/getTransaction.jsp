<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
    </head>
    <body>
       <div class="center">
        <h3 style="color: white;font-size: 24px;"> Your Transactions</h3>
        <%
        ArrayList al = (ArrayList)request.getSession().getAttribute("transactions");
        Iterator it = al.iterator();
        
        while(it.hasNext()) {
            out.println((String)it.next());
            %><br /><%
        }
        %>
        <br>
        
        <a href="home.jsp">Home</a><br><br>
        <a class="submit" href="Logout">Logout</a></div>
         <div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/city.mp4" type="video/mp4">
             </video></div>
    </body>
</html>
