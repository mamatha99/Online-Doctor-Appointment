<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.doctorloginDB" %>
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctordashboard</title>
</head>
<body>
<%
int R=0;
int iddoctor=1;
String name=request.getParameter("name");
String email=request.getParameter("email");

String specialist=request.getParameter("specialist");
String location=request.getParameter("location");
String s=request.getParameter("experience");
int experience = Integer.parseInt(s);

String availability=request.getParameter("availability");
String hospital=request.getParameter("hospital");

Connection con=doctorloginDB.con();
PreparedStatement a =con.prepareStatement("insert into doctor(iddoctor,name,email,specialist,location,experience,availability,hospital)values(?,?,?,?,?,?,?,?,?)");

a.setInt(1,iddoctor);
a.setString(2,name);
a.setString(3,email);

a.setString(4,specialist);
a.setString(5,location);
a.setInt(6,experience);
a.setString(7,availability);
a.setString(8,hospital);

R=a.executeUpdate();

if(R!=0)
{
	JOptionPane.showMessageDialog(null,"success");
	response.sendRedirect("index.html");
	
}
else
{
	JOptionPane.showMessageDialog(null,"fail");
    response.sendRedirect("doctordashboard.jsp");

	
}
%>
</body>
</html>