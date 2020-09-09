<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/main.css">
</head>
<body>
    <nav class="navbar navbar-dark text-white bg-dark navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">DoctorApp</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="adminhome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="adminlogin.jsp">Admin</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link " href="doctorsignup.jsp">Doctor</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="patientsignup.jsp">Patient</a>
              </li>
              
          </ul>
          
        </div>
      </nav>
    <div class="jumbotron back2 text-white" style="height:90vh;">
        <h1 class="display-4">Welcome </h1>
        <p class="lead">This is a Doctor Appointment and management system where<br> Patients can get appointments with top class doctors within minutes.</p>
        <div style="width:90vh">

          <hr class="my-4 border-white" >
        </div>
        <p>Check and apply for appointments now!,Sign in as Doctor or Patient</p>
        <a class="btn btn-primary btn-lg" href="doc.jsp" role="button">Documentation</a>
        <div style="width:70vh">

          <hr class="my-4 border-white" >
        </div>
        <h5> Contact Us +91 1234567892| admin@gmail.com</h5>
    
      </div>
    
    <!--bootstrap jquery-->
    <script src="./js/jquery-3.5.1.min.js"></script>
    <!--bootstrap js-->
    <script src="./js/bootstrap.bundle.min.js"></script>
</body>
</html>