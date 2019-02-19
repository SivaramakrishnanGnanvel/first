<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTransfer Fail</title>
    </head>
    <body>
       <div class="center">
        <h1>Transfer fail!!!</h1>
        <br>
        <a href="transfer.jsp">Try Again</a><br> <a href="home.jsp">Home</a><br><br>
        <a class="submit" href="Logout" value="Logout" >Logout</a>
       </div>
       <div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/city.mp4" type="video/mp4">
	        </video>
        </div>
    </body>
</html>