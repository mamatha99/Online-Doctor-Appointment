<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment form</title>
</head>
<body>
<%
int R=0;
int idappointment=1;
String patientname=request.getParameter("patientname");
String patientemail=request.getParameter("patientemail");
String doctorname=request.getParameter("doctorname");
String doctoremail=request.getParameter("doctoremail");
String location=request.getParameter("location");
String specialist=request.getParameter("specialist");




Connection con=DB.con();
PreparedStatement a =con.prepareStatement("insert into appointment(idappointment,patientname,patientemail,doctorname,doctoremail,location,specialist)values(?,?,?,?,?,?,?)");

a.setInt(1,idappointment);
a.setString(2,patientname);
a.setString(3,patientemail);
a.setString(4,doctorname);
a.setString(5,doctoremail);
a.setString(6,location);
a.setString(7,specialist);


R=a.executeUpdate();

if(R!=0)
{
	JOptionPane.showMessageDialog(null,"Appointment Booked");
	response.sendRedirect("patientdashboard.jsp");
	
}
else
{
	JOptionPane.showMessageDialog(null,"fail");
    response.sendRedirect("appointment.jsp");

	
}
%>
</body>
</html>