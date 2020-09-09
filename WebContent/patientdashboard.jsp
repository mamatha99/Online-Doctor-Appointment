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
            <h1>Patients Dash board</h1>
		</div>
	</div>

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

        <h5 align="center" class="m-2">
            <font><strong>Retrieve data from database in jsp</strong></font>
        </h5>
           
        <div class="container ">

            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">DoctorName</th>
                        <th scope="col">Email</th>
                        <th scope="col">Speciality</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>

                <%
          try{ 
          connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
          statement=connection.createStatement();
          String sql ="SELECT * FROM world.doctor";
          
          resultSet = statement.executeQuery(sql);
          
          
          while(resultSet.next()){
              
              
          
          
          
          %>


                <tbody>
                    <tr>

                        <td><%=resultSet.getString("iddoctor") %></td>
                        <td><%=resultSet.getString("name") %></td>
                        <td><%=resultSet.getString("email") %></td>
                        <td><%=resultSet.getString("specialist") %></td>
                        <td><%=resultSet.getString("phone") %></td>

                        <td><%=resultSet.getString("availability") %></td>
                    </tr>

                    </tr>
                </tbody>

                <% 	
 
}
}

catch(Exception e){
e.printStackTrace();
}
%>


            </table>


<div class="container" style="width:60vh">

        
        <form action="appo.jsp" method="post">
        <div class="container1">
            <h1>Book An Appointment</h1>
            <br><br>
            
            <div class="form-group">
                <label for="Doctoremail">
                    <div class="lead">Doctor Email</div>
                </label>
                <input type="text" class="form-control" placeholder="Enter email" name="doctoremail" required>
            </div>
            <div class="form-group">
                <label for="patientemail">
                    <div class="lead">Patient Email</div>
                </label>
                <input type="text" class="form-control" placeholder="Enter email" name="patientemail" required>
            </div>
 <div class="form-group">
                <label for="date">
                    <div class="lead">Book your Date</div>
                </label>
                <input type="date" class="form-control" placeholder="Enter Date" name="date" required>
            </div>
            
            
            
            
            
            <button type="submit" class='btn btn-dark' style='width:55vh'>Submit</button>
        </div>
    </form>   
    
</div>


        


            <!--bootstrap jquery-->
            <script src="./js/jquery-3.5.1.min.js"></script>
            <!--bootstrap js-->
            <script src="./js/bootstrap.bundle.min.js"></script>

</body>

</html>