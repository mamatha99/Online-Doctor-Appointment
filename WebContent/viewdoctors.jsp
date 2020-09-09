<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="javax.swing.JOptionPane" %>
<%@ page import="java.sql.Connection" %>
<%@page import="com.patientdashboard" %>
<%@page import="com.Doctorbean" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Doctors</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
    <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

		<div class="text-white text-center">
            <h1>Patients Dash board</h1>
        </div>
         
		</div>



<%  
patientdashboard object= new patientdashboard();
List<Doctorbean> list=object.doctorslist();

Iterator<Doctorbean> it_list=list.iterator();
%>
<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">DoctorName</th>
            <th scope="col">Speciality</th>
            <th scope="col">Availability</th>
            <th scope="col">Experience</th>
        </tr>
    </thead>
    <tbody>
     <%   while(it_list.hasNext())
    {
        Doctorbean bean=new Doctorbean();
        bean=it_list.next();
    %>
        <tr>

            <td><%=bean.getName() %></td>
            <td><%=bean.getSpecialist() %></td>
            <td><%=bean.getAvailability() %></td>
            <td><%=bean.getExperience() %></td>
        </tr>

        </tr>
    </tbody>
    <% 	     
}
%>
</table>
   <!--bootstrap jquery-->
   <script src="./js/jquery-3.5.1.min.js"></script>
   <!--bootstrap js-->
   <script src="./js/bootstrap.bundle.min.js"></script>
</body>
</html>