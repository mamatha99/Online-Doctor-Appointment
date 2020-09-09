<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page import="com.patientloginform"%>  
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
boolean status=patientloginform.validate(obj);   

if(status){  
out.println("You're successfully logged in");  




response.sendRedirect("patientdashboard.jsp");


}  
else  
{  
out.print("Sorry, email or password error");  
response.sendRedirect("patientlogin.jsp");
}
%> 
</body>
</html>