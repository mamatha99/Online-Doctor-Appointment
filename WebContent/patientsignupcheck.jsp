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
<title>Insert title here</title>
</head>
<body>
<%
int R=0;
String name=request.getParameter("name");
String pemail=request.getParameter("pemail");
String psw=request.getParameter("psw");
String pswrepeat=request.getParameter("pswrepeat");
Connection con=DB.con();
PreparedStatement p=con.prepareStatement("insert into patient(idpatient,name,pemail,psw,pswrepeat)values(?,?,?,?,?)");

p.setInt(1, 1);
p.setString(2,name);
p.setString(3,pemail);
p.setString(4,psw);
p.setString(5,pswrepeat);

R=p.executeUpdate();
System.out.println(R);

if(R!=0)
{
	JOptionPane.showMessageDialog(null,"success");
	response.sendRedirect("patientlogin.jsp");
	
}
else
{
	JOptionPane.showMessageDialog(null,"fail");
    response.sendRedirect("patientsignup.jsp");

	
}




%>
</body>
</html>