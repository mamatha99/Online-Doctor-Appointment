<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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



<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>patient dash board</title>
	<!--bootstrap css-->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script type="text/javascript">




	</script>
</head>

<body>
	<div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

		<div class="text-white text-center">
			<h1>All Appointments</h1>
		</div>
	</div>
	<div class="container-fluid">




		<%  
			//patientdashboard object= new patientdashboard();
			//List<Doctorbean> list=object.doctorslist();
				
				//Iterator<Doctorbean> it_list=list.iterator();
					%>
		<table>

			<%
						
						String id = request.getParameter("userId");
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
						String dbName = "world";
						String userId = "root";
						String password = "Jaigurudev@1976";
						Connection connection = null;
						Statement statement = null;
						ResultSet resultSet = null;
						//while(it_list.hasNext())
						//{
							//int val=0;
							//Doctorbean bean=new Doctorbean();
							//bean=it_list.next();
							
							%>


			<h4 align="center" class="p-2">
				<font><strong>Appointments Details</strong></font>
			</h4>

			<table class="table table-dark ">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">DoctorName</th>
						<th scope="col">Speciality</th>
						<th scope="col">Doctor email</th>
						<th scope="col"> Phone</th>
						<th scope="col">Patient email</th>
						<th scope="col">PatientName</th>
					</tr>
				</thead>



				<%
								try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM world.appointment";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()){
			
			
			
			
			
			%>


				<!--dbcon-->
				<tbody>
					<tr>
						<th scope="row"><%=resultSet.getString("idappointment") %></th>
						<td><%=resultSet.getString("dname") %></td>
						<td><%=resultSet.getString("speciality") %></td>
						<td><%=resultSet.getString("demail") %></td>
						<td><%=resultSet.getString("phone") %></td>
						<td><%=resultSet.getString("pemail") %></td>
						<td><%=resultSet.getString("pname") %></td>
					</tr>

				</tbody>




				<% 	
			
		}
	}
	
	catch(Exception e){
		e.printStackTrace();
	}
	%>


				<!--catch-->

			</table>

	</div>





	</div>

	<!--bootstrap jquery-->
	<script src="./js/jquery-3.5.1.min.js"></script>
	<!--bootstrap js-->
	<script src="./js/bootstrap.bundle.min.js"></script>
</body>

</html>