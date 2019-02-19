<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Amount</title>
    </head>
    <body>
       <div class="center">
        <form action="Transfer">
         <table>
                <tr>
                    <td>To:</td>
                    <td><input type="text" name="tacc"/></td>
                </tr>
                
                <tr>
                    <td>Amount:</td>
                    <td><input type="text" name="tamt"/></td>
                </tr>
                 <tr>
                    <td><input class="submit" type="submit" value="Transfer"></td>
                </tr>
            </table>  
            <a href="home.jsp">Home</a><br><br>
        <a class="submit" href="Logout">Logout</a> 
        </form>
       </div>
       <div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/forest.mp4" type="video/mp4">
	        </video>
        </div>
    </body>
</html>