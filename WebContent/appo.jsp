<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.patientdashboard" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@page import="com.Doctorbean" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.*"%>
<%@page import="com.DB" %>
<%@page import="java.sql.DriverManager"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import ="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment form</title>
</head>
<body>
<%
int R=0;
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
String dbName = "world";
String userId = "root";
String password = "Jaigurudev@1976";
Connection connection = null;
Statement statement = null;
String doctoremail=request.getParameter("doctoremail");
String patientemail=request.getParameter("patientemail");



ResultSet resultSet = null;
ResultSet resultSet1 =null;
Connection con=DB.con();
statement=con.createStatement();
String sql="select `name`,`email`,`specialist`,`phone` from doctor where email = '"+doctoremail + "'";

resultSet = statement.executeQuery(sql);
String doctorname=null;
String specialist =null;
String phone =null;

while(resultSet.next())
{
	
	doctorname=resultSet.getString("name");
	

	 specialist=resultSet.getString("specialist");
	phone =resultSet.getString("phone");

}



String sql1="select `name`,`pemail` from patient where pemail = '"+patientemail + "'";

resultSet1 = statement.executeQuery(sql1);

String patientname =null;
while(resultSet1.next()){
	
	
	 patientname=resultSet1.getString("name");
	
	
}







String  date = request.getParameter("date");
System.out.println(date);


Connection conn=DB.con();
PreparedStatement a =conn.prepareStatement("insert into appointment(dname,speciality,demail,phone,pemail,pname,datetime)values(?,?,?,?,?,?,?)");


a.setString(1,doctorname);
a.setString(2,specialist);

a.setString(3,doctoremail);
a.setString(4,phone);
a.setString(5,patientemail);
a.setString(6,patientname);
a.setString(7,date);




R=a.executeUpdate();

if(R!=0)
{
	JOptionPane.showMessageDialog(null,"Appointment Booked");

	
}
else
{
	JOptionPane.showMessageDialog(null,"fail");
    response.sendRedirect("appointment.jsp");

	
}
%>
<h1>Thank You for Booking an Appointment you will hear from Doctor soon.</h1>
</body>
</html>