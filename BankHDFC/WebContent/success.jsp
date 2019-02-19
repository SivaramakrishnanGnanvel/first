<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Check Balance</title>
</head>
<body>
<div class="center">
<h1>your Balance is</h1>
<%
session=request.getSession();
String balance=(String)session.getAttribute("balance");
out.println(balance);
%>
 <a href="home.jsp">Home</a><br><br>
        <a class="submit" href="Logout">Logout</a></div>
         <div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/city.mp4" type="video/mp4">
             </video></div>
</body>
</html>