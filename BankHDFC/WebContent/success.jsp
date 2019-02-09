<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
your Balance is
<%
session=request.getSession();
String balance=(String)session.getAttribute("balance");
out.println(balance);
%>
</body>
</html>