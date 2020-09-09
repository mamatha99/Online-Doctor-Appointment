<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page import="com.adminlogin"%>  
<jsp:useBean id="obj" class="com.logincom"/>  
  
<jsp:setProperty property="*" name="obj"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
boolean status=adminlogin.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE"); 
response.sendRedirect("admindashboard.jsp");
}  
else  
{  
out.print("Sorry, email or password error");  
response.sendRedirect("adminlogin.jsp");
}
%> 
</body>
</html>