<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="style1.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        
    <div class="section">
        <form action="ChangePassword">
         <h3>Change Password</h3>
            <table>
                <tr>
                    <td>
                        New Password :
                    </td>
                    <td>
                        <input type="password" name="npwd" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirm Password :
                    </td>
                    <td>
                        <input type="password" name="cpwd" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Change Password" />
                    </td>
                </tr>
            </table>
        </form></div>
<div class="video-container">
	        <div class="color"></div>
	        <video autoplay loop muted>        
	        <source src="video/yellowleaf.mp4" type="video/mp4">
	        </video>
        </div>
    </body>
</html>
