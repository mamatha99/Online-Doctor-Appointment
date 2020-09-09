<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page import="com.loginform"%>  
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


boolean status=loginform.validate(obj);  
if(status){  
out.println("You r successfully logged in");
String email =request.getParameter("email");
 session=request.getSession();  
session.setAttribute("email",email);




response.sendRedirect("doctordashboard.jsp");
}  
else  
{  
out.print("Sorry, email or password error");  
response.sendRedirect("doctorlogin.jsp");
}
%> 
</body>
</html>