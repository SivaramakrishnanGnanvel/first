<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="style.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balance</title>
    </head>
    <body>
        <h1>Your Balance is :
            <%
                out.println(session.getAttribute("balance"));
            %>
        </h1>
        <br />
        <a href="Logout">Logout</a>
        <a href="home.jsp">Home</a>
       <div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/cloud.mp4" type="video/mp4">
	        </video>
        </div>
    </body>
</html>
