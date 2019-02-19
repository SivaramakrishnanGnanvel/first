<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style.css" />
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("name")==null)
response.sendRedirect("login.jsp");
%>
<div class="section">
<h1><span> Welcome ${name}</span></h1>
<form class="form" action="Logout">
       
                <div class="menu"><h2>Menu</h2>
                <a href="CheckBalance">check Balance</a><br>
                <a href="ChangePassword.jsp">Change Password</a><br><a href="transfer.jsp">Transfer Amount</a><br>
                <a href="GetStatement">Get Statement</a><br>
<input class="submit" type="submit" name="logout" value="Logout"></div>
</form>
<div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/city.mp4" type="video/mp4">
	        </video>
    </div>
</div>
</body>
</html>