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
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "com.App" %>

<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/world";%>
<%!String user = "root";%>
<%!String pwd = "Jaigurudev@1976";%>
<%
String id = request.getParameter("painting_id");
PrintWriter outs=response.getWriter();
outs.print(id);      
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,pwd);
String sql="insert into appointment select * from doctor where email =?  ";
ps.setString(1,id);
ps = con.prepareStatement(sql);

int i = ps.executeUpdate();
if(i > 0)
{
outs.print("Record Deleted Successfully");

}

else
{
outs.print("There is a problem in deleting Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
outs.println(sql);
}
}
%>