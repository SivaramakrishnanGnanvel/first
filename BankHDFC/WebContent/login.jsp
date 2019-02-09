<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style1.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="section">	<form action="Login">
	<table class="logintab">
	<tr>	
		<td>Account_Number</td>
		<td><input id="acnt" class="login" type="text" name="account"></td></tr>
	<tr>
		<td>Password</td>
		<td><input id="pass" class="login" type="password" name="pwd"></td></tr>
	<tr>
		<td><input type="submit" name="login"></td>
		<td><a href="forgetpwd.jsp">ForgetPassword</a></td></tr>
	<tr>
		<td><a href="register.jsp">Register Now</a></td></tr>
	</table>
</form>

<div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/forest.mp4" type="video/mp4">
	        </video>
        </div>
</div>
</body>
</html>