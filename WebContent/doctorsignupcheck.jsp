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
String email=request.getParameter("email");
String psw=request.getParameter("psw");
String pswrepeat=request.getParameter("pswrepeat");
String specialist=request.getParameter("specialist");
String location=request.getParameter("location");
String experience =request.getParameter("experience");

String phone =request.getParameter("phone");

String availability=request.getParameter("availability");
String hospital=request.getParameter("hospital");

Connection con=DB.con();
PreparedStatement p=con.prepareStatement("insert into doctor(name,email,specialist,location,experience,availability,hospital,psw,pswrepeat,phone)values(?,?,?,?,?,?,?,?,?,?)");

p.setString(1,name);
p.setString(2,email);
p.setString(3,specialist);
p.setString(4,location);
p.setString(5,experience);
p.setString(6,availability);
p.setString(7,hospital);
p.setString(8,psw);
p.setString(9,pswrepeat);
p.setString(10,phone);
System.out.println("name::"+name);
//System.out.println("email::"+email);
//System.out.println("psw::"+psw);
//System.out.println("pswrepeat::"+pswrepeat);

 R=p.executeUpdate();

if(R!=0)
{
	JOptionPane.showMessageDialog(null,"Yahooo!!,success");
	response.sendRedirect("doctorlog.jsp");
	
}
else
{
	JOptionPane.showMessageDialog(null,"Oh crap!! Try again");
    response.sendRedirect("doctorsignup.jsp");

	
}




%>
</body>
</html>