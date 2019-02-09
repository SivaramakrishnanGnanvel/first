<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style1.css" />
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("name")==null)
response.sendRedirect("login.jsp");
%>
<div class="section">
<h1><span> hello ${name}</span> <span>welcome to home page</span>></h1>
<form action="Logout">
        <table>
            <tr>
                <td>Menu</td>
            </tr>
            <tr>
                <td><a href="CheckBalance">check Balance</a></td>
            </tr>
            <tr>
                <td><a href="ChangePassword.jsp">Change Password</a></td>
            </tr>
            <tr>
                <td><a href="transfer.jsp">Transfer Amount</a></td>
            </tr>
            <tr>
                <td><a href="GetStatement">Get Statement</a></td>
            </tr>
        </table>
<input type="submit" name="logout">
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